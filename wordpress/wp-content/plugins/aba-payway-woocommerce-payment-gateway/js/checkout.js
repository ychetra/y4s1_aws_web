/* global wc_checkout_params */
jQuery( function( $ ) {

	// wc_checkout_params is required to continue, ensure the object exists
	if ( typeof wc_checkout_params === 'undefined' ) {
		return false;
	}

	if (typeof jQuery.blockUI !== 'undefined') {
		jQuery.blockUI.defaults.overlayCSS.cursor = 'default';
	}

	var wc_checkout_form = {
		updateTimer: false,
		dirtyInput: false,
		selectedPaymentMethod: false,
		xhr: false,
		$order_review: jQuery( '#order_review' ),
		$checkout_form: jQuery( 'form.checkout' ),
		init: function() {
            jQuery( document.body ).bind( 'update_checkout', this.update_checkout );
            jQuery( document.body ).bind( 'init_checkout', this.init_checkout );

			// Payment methods
			this.$checkout_form.on( 'click', 'input[name="payment_method"]', this.payment_method_selected );

			if ( jQuery( document.body ).hasClass( 'woocommerce-order-pay' ) ) {
				this.$order_review.on( 'click', 'input[name="payment_method"]', this.payment_method_selected );
			}

			// Prevent HTML5 validation which can conflict.
			this.$checkout_form.attr( 'novalidate', 'novalidate' );

			// Form submission
			this.$checkout_form.on( 'submit', this.submit );

			// Inline validation
			this.$checkout_form.on( 'input validate change', '.input-text, select, input:checkbox', this.validate_field );

			// Manual trigger
			this.$checkout_form.on( 'update', this.trigger_update_checkout );

			// Inputs/selects which update totals
			this.$checkout_form.on( 'change', 'select.shipping_method, input[name^="shipping_method"], #ship-to-different-address input, .update_totals_on_change select, .update_totals_on_change input[type="radio"], .update_totals_on_change input[type="checkbox"]', this.trigger_update_checkout );
			this.$checkout_form.on( 'change', '.address-field select', this.input_changed );
			this.$checkout_form.on( 'change', '.address-field input.input-text, .update_totals_on_change input.input-text', this.maybe_input_changed );
			this.$checkout_form.on( 'keydown', '.address-field input.input-text, .update_totals_on_change input.input-text', this.queue_update_checkout );

			// Address fields
			this.$checkout_form.on( 'change', '#ship-to-different-address input', this.ship_to_different_address );

			// Trigger events
			this.$checkout_form.find( '#ship-to-different-address input' ).change();
			this.init_payment_methods();

			// Update on page load
			if ( wc_checkout_params.is_checkout === '1' ) {
                jQuery( document.body ).trigger( 'init_checkout' );
			}
			if ( wc_checkout_params.option_guest_checkout === 'yes' ) {
                jQuery( 'input#createaccount' ).change( this.toggle_create_account ).change();
			}
		},
		init_payment_methods: function() {
			var $payment_methods = $( '.woocommerce-checkout' ).find( 'input[name="payment_method"]' );

			// If there is one method, we can hide the radio input
			if ( 1 === $payment_methods.length ) {
				$payment_methods.eq(0).hide();
			}

			// If there was a previously selected method, check that one.
			if ( wc_checkout_form.selectedPaymentMethod ) {
				$( '#' + wc_checkout_form.selectedPaymentMethod ).prop( 'checked', true );
			}

			// If there are none selected, select the first.
			if ( 0 === $payment_methods.filter( ':checked' ).length ) {
				$payment_methods.eq(0).prop( 'checked', true );
			}

			if ( $payment_methods.length > 1 ) {

				// Hide open descriptions.
				$( 'div.payment_box' ).filter( ':visible' ).slideUp( 0 );
			}

			// Trigger click event for selected method
			$payment_methods.filter( ':checked' ).eq(0).trigger( 'click' );
		},
		get_payment_method: function() {
			return wc_checkout_form.$checkout_form.find( 'input[name="payment_method"]:checked' ).val();
		},
		payment_method_selected: function( e ) {
			e.stopPropagation();

			if ( jQuery( '.payment_methods input.input-radio' ).length > 1 ) {
				var target_payment_box = jQuery( 'div.payment_box.' + jQuery( this ).attr( 'ID' ) ),
					is_checked         = jQuery( this ).is( ':checked' );

				if ( is_checked && ! target_payment_box.is( ':visible' ) ) {
                    jQuery( 'div.payment_box' ).filter( ':visible' ).slideUp( 230 );

					if ( is_checked ) {
						target_payment_box.slideDown( 230 );
					}
				}
			} else {
                jQuery( 'div.payment_box' ).show();
			}

			if ( jQuery( this ).data( 'order_button_text' ) ) {
                jQuery( '#place_order' ).text( jQuery( this ).data( 'order_button_text' ) );
			} else {
                jQuery( '#place_order' ).text( jQuery( '#place_order' ).data( 'value' ) );
			}

			var selectedPaymentMethod = jQuery( '.woocommerce-checkout input[name="payment_method"]:checked' ).attr( 'id' );

			if ( selectedPaymentMethod !== wc_checkout_form.selectedPaymentMethod ) {
                jQuery( document.body ).trigger( 'payment_method_selected' );
			}

			wc_checkout_form.selectedPaymentMethod = selectedPaymentMethod;
		},
		toggle_create_account: function() {
            jQuery( 'div.create-account' ).hide();

			if ( jQuery( this ).is( ':checked' ) ) {
				// Ensure password is not pre-populated.
                jQuery( '#account_password' ).val( '' ).change();
                jQuery( 'div.create-account' ).slideDown();
			}
		},
		init_checkout: function() {
            jQuery( document.body ).trigger( 'update_checkout' );
		},
		maybe_input_changed: function( e ) {
			if ( wc_checkout_form.dirtyInput ) {
				wc_checkout_form.input_changed( e );
			}
		},
		input_changed: function( e ) {
			wc_checkout_form.dirtyInput = e.target;
			wc_checkout_form.maybe_update_checkout();
		},
		queue_update_checkout: function( e ) {
			var code = e.keyCode || e.which || 0;

			if ( code === 9 ) {
				return true;
			}

			wc_checkout_form.dirtyInput = this;
			wc_checkout_form.reset_update_checkout_timer();
			wc_checkout_form.updateTimer = setTimeout( wc_checkout_form.maybe_update_checkout, '1000' );
		},
		trigger_update_checkout: function() {
			wc_checkout_form.reset_update_checkout_timer();
			wc_checkout_form.dirtyInput = false;
            jQuery( document.body ).trigger( 'update_checkout' );
		},
		maybe_update_checkout: function() {
			var update_totals = true;

			if ( jQuery( wc_checkout_form.dirtyInput ).length ) {
				var $required_inputs = jQuery( wc_checkout_form.dirtyInput ).closest( 'div' ).find( '.address-field.validate-required' );

				if ( $required_inputs.length ) {
					$required_inputs.each( function() {
						if ( $( this ).find( 'input.input-text' ).val() === '' ) {
							update_totals = false;
						}
					});
				}
			}
			if ( update_totals ) {
				wc_checkout_form.trigger_update_checkout();
			}
		},
		ship_to_different_address: function() {
            jQuery( 'div.shipping_address' ).hide();
			if ( jQuery( this ).is( ':checked' ) ) {
                jQuery( 'div.shipping_address' ).slideDown();
			}
		},
		reset_update_checkout_timer: function() {
			clearTimeout( wc_checkout_form.updateTimer );
		},
		is_valid_json: function( raw_json ) {
			try {
				var json = jQuery.parseJSON( raw_json );

				return ( json && 'object' === typeof json );
			} catch ( e ) {
				return false;
			}
		},
		validate_field: function( e ) {
			var $this             = jQuery( this ),
				$parent           = $this.closest( '.form-row' ),
				validated         = true,
				validate_required = $parent.is( '.validate-required' ),
				validate_email    = $parent.is( '.validate-email' ),
				event_type        = e.type;

			if ( 'input' === event_type ) {
				$parent.removeClass( 'woocommerce-invalid woocommerce-invalid-required-field woocommerce-invalid-email woocommerce-validated' );
			}

			if ( 'validate' === event_type || 'change' === event_type ) {

				if ( validate_required ) {
					if ( 'checkbox' === $this.attr( 'type' ) && ! $this.is( ':checked' ) ) {
						$parent.removeClass( 'woocommerce-validated' ).addClass( 'woocommerce-invalid woocommerce-invalid-required-field' );
						validated = false;
					} else if ( $this.val() === '' ) {
						$parent.removeClass( 'woocommerce-validated' ).addClass( 'woocommerce-invalid woocommerce-invalid-required-field' );
						validated = false;
					}
				}

				if ( validate_email ) {
					if ( $this.val() ) {
						/* https://stackoverflow.com/questions/2855865/jquery-validate-e-mail-address-regex */
						var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);

						if ( ! pattern.test( $this.val()  ) ) {
							$parent.removeClass( 'woocommerce-validated' ).addClass( 'woocommerce-invalid woocommerce-invalid-email' );
							validated = false;
						}
					}
				}

				if ( validated ) {
					$parent.removeClass( 'woocommerce-invalid woocommerce-invalid-required-field woocommerce-invalid-email' ).addClass( 'woocommerce-validated' );
				}
			}
		},
		update_checkout: function( event, args ) {
			// Small timeout to prevent multiple requests when several fields update at the same time
			wc_checkout_form.reset_update_checkout_timer();
			wc_checkout_form.updateTimer = setTimeout( wc_checkout_form.update_checkout_action, '5', args );
		},
		update_checkout_action: function( args ) {
			if ( wc_checkout_form.xhr ) {
				wc_checkout_form.xhr.abort();
			}

			if ( jQuery( 'form.checkout' ).length === 0 ) {
				return;
			}

			args = typeof args !== 'undefined' ? args : {
				update_shipping_method: true
			};

			var country			 = jQuery( '#billing_country' ).val(),
				state			 = jQuery( '#billing_state' ).val(),
				postcode		 = jQuery( 'input#billing_postcode' ).val(),
				city			 = jQuery( '#billing_city' ).val(),
				address			 = jQuery( 'input#billing_address_1' ).val(),
				address_2		 = jQuery( 'input#billing_address_2' ).val(),
				s_country		 = country,
				s_state			 = state,
				s_postcode		 = postcode,
				s_city			 = city,
				s_address		 = address,
				s_address_2		 = address_2,
				$required_inputs = $( wc_checkout_form.$checkout_form ).find( '.address-field.validate-required:visible' ),
				has_full_address = true;

			if ( $required_inputs.length ) {
				$required_inputs.each( function() {
					if ( jQuery( this ).find( ':input' ).val() === '' ) {
						has_full_address = false;
					}
				});
			}

			if ( jQuery( '#ship-to-different-address' ).find( 'input' ).is( ':checked' ) ) {
				s_country		 = jQuery( '#shipping_country' ).val();
				s_state			 = jQuery( '#shipping_state' ).val();
				s_postcode		 = jQuery( 'input#shipping_postcode' ).val();
				s_city			 = jQuery( '#shipping_city' ).val();
				s_address		 = jQuery( 'input#shipping_address_1' ).val();
				s_address_2		 = jQuery( 'input#shipping_address_2' ).val();
			}

			var data = {
				security        : wc_checkout_params.update_order_review_nonce,
				payment_method  : wc_checkout_form.get_payment_method(),
				country         : country,
				state           : state,
				postcode        : postcode,
				city            : city,
				address         : address,
				address_2       : address_2,
				s_country       : s_country,
				s_state         : s_state,
				s_postcode      : s_postcode,
				s_city          : s_city,
				s_address       : s_address,
				s_address_2     : s_address_2,
				has_full_address: has_full_address,
				post_data       : jQuery( 'form.checkout' ).serialize()
			};

			if ( false !== args.update_shipping_method ) {
				var shipping_methods = {};

                jQuery( 'select.shipping_method, input[name^="shipping_method"][type="radio"]:checked, input[name^="shipping_method"][type="hidden"]' ).each( function() {
					shipping_methods[ jQuery( this ).data( 'index' ) ] = jQuery( this ).val();
				} );

				data.shipping_method = shipping_methods;
			}

            jQuery( '.woocommerce-checkout-payment, .woocommerce-checkout-review-order-table' ).block({
				message: null,
				overlayCSS: {
					background: '#fff',
					opacity: 0.6
				}
			});

			wc_checkout_form.xhr = jQuery.ajax({
				type:		'POST',
				url:		wc_checkout_params.wc_ajax_url.toString().replace( '%%endpoint%%', 'update_order_review' ),
				data:		data,
				success:	function( data ) {

					// Reload the page if requested
					if ( true === data.reload ) {
						window.location.reload();
						return;
					}

					// Remove any notices added previously
                    jQuery( '.woocommerce-NoticeGroup-updateOrderReview' ).remove();

					var termsCheckBoxChecked = jQuery( '#terms' ).prop( 'checked' );

					// Save payment details to a temporary object
					var paymentDetails = {};
                    jQuery( '.payment_box :input' ).each( function() {
						var ID = jQuery( this ).attr( 'id' );

						if ( ID ) {
							if ( jQuery.inArray( jQuery( this ).attr( 'type' ), [ 'checkbox', 'radio' ] ) !== -1 ) {
								paymentDetails[ ID ] = jQuery( this ).prop( 'checked' );
							} else {
								paymentDetails[ ID ] = jQuery( this ).val();
							}
						}
					});

					// Always update the fragments
					if ( data && data.fragments ) {
                        jQuery.each( data.fragments, function ( key, value ) {
                            jQuery( key ).replaceWith( value );
                            jQuery( key ).unblock();
						} );
					}

					// Recheck the terms and conditions box, if needed
					if ( termsCheckBoxChecked ) {
                        jQuery( '#terms' ).prop( 'checked', true );
					}

					// Fill in the payment details if possible without overwriting data if set.
					if ( ! jQuery.isEmptyObject( paymentDetails ) ) {
                        jQuery( '.payment_box :input' ).each( function() {
							var ID = jQuery( this ).attr( 'id' );

							if ( ID ) {
								if ( jQuery.inArray( jQuery( this ).attr( 'type' ), [ 'checkbox', 'radio' ] ) !== -1 ) {
                                    jQuery( this ).prop( 'checked', paymentDetails[ ID ] ).change();
								} else if ( null !== jQuery( this ).val() && 0 === jQuery( this ).val().length ) {
                                    jQuery( this ).val( paymentDetails[ ID ] ).change();
								}
							}
						});
					}

					// Check for error
					if ( 'failure' === data.result ) {

						var $form = jQuery( 'form.checkout' );

						// Remove notices from all sources
                        jQuery( '.woocommerce-error, .woocommerce-message' ).remove();

						// Add new errors returned by this event
						if ( data.messages ) {
							$form.prepend( '<div class="woocommerce-NoticeGroup woocommerce-NoticeGroup-updateOrderReview">' + data.messages + '</div>' );
						} else {
							$form.prepend( data );
						}

						// Lose focus for all fields
						$form.find( '.input-text, select, input:checkbox' ).trigger( 'validate' ).blur();

						wc_checkout_form.scroll_to_notices();
					}

					// Re-init methods
					wc_checkout_form.init_payment_methods();

					// Fire updated_checkout event.
                    jQuery( document.body ).trigger( 'updated_checkout', [ data ] );
				}

			});
		},
		submit: function() {
			wc_checkout_form.reset_update_checkout_timer();
			var $form = jQuery( this );

			if ( $form.is( '.processing' ) ) {
				return false;
			}

			// Trigger a handler to let gateways manipulate the checkout if needed
			if ( $form.triggerHandler( 'checkout_place_order' ) !== false && $form.triggerHandler( 'checkout_place_order_' + wc_checkout_form.get_payment_method() ) !== false ) {

				$form.addClass( 'processing' );

				var form_data = $form.data();

				if ( 1 !== form_data['blockUI.isBlocked'] ) {
					$form.block({
						message: null,
						overlayCSS: {
							background: '#fff',
							opacity: 0.6
						}
					});
				}

				// ajaxSetup is global, but we use it to ensure JSON is valid once returned.
                jQuery.ajaxSetup( {
					dataFilter: function( raw_response, dataType ) {

						// We only want to work with JSON
						if ( 'json' !== dataType ) {
							return raw_response;
						}

						if ( wc_checkout_form.is_valid_json( raw_response ) ) {
							return raw_response;
						} else {
							// Attempt to fix the malformed JSON
							var maybe_valid_json = raw_response.match( /{"result.*}/ );

							if ( null === maybe_valid_json ) {
								console.log( 'Unable to fix malformed JSON' );
							} else if ( wc_checkout_form.is_valid_json( maybe_valid_json[0] ) ) {
								console.log( 'Fixed malformed JSON. Original:' );
								console.log( raw_response );
								raw_response = maybe_valid_json[0];
							} else {
								console.log( 'Unable to fix malformed JSON' );
							}
						}

						return raw_response;
					}
				} );

				var choose_payway_option = jQuery('input[type=radio][name=payment_method]:checked').val();
                var selected_payment_option = jQuery('input[type=radio][name=payment_method]:checked').attr("real-value");
                if ( choose_payway_option == 'aba_payway_aim') {
                    if( jQuery("#a_choosen_method").length == 0 ){
                        $input = jQuery('<input type="hidden" name="aba_choosen_method" id="a_choosen_method"/>').val( selected_payment_option );
                        $form.append($input);
                    }else{
                        jQuery("#a_choosen_method").val( selected_payment_option );
                    }

                }else{
                    jQuery("#a_choosen_method").remove();
				}

                jQuery.ajax({
					type:		'POST',
					url:		wc_checkout_params.checkout_url,
					data:		$form.serialize(),
					dataType:   'json',
					success:	function( result ) {
						try {
							if ('success' === result.result ) {
								if ( choose_payway_option == 'aba_payway_aim' ) {
									jQuery("#aba_main_modal [name='hash']").val(result.aba_hash);
                                    jQuery("#aba_main_modal [name='tran_id']").val(result.order_id);
                                    jQuery("#aba_main_modal [name='items']").val(result.items);
                                    jQuery("#aba_main_modal [name='amount']").val(result.amount);
									jQuery("#aba_main_modal [name='payment_option']").val(selected_payment_option);
									jQuery("#aba_main_modal [name='return_url']").val(result.return_url);
									if(result.shipping_fee != ""){
										jQuery("#aba_main_modal [name='shipping']").val( result.shipping_fee);
									}
									AbaPayway.checkout();
								}
								if ( -1 === result.redirect.indexOf( 'https://' ) || -1 === result.redirect.indexOf( 'http://' ) ) {
									window.location = result.redirect;
								} else {
									window.location = decodeURI( result.redirect );
								}
							} else if ( 'failure' === result.result ) {
								throw 'Result failure';
							} else {
								throw 'Invalid response';
							}
						} catch( err ) {
							// Reload page
							if ( true === result.reload ) {
								window.location.reload();
								return;
							}

							// Trigger update in case we need a fresh nonce
							if ( true === result.refresh ) {
                                jQuery( document.body ).trigger( 'update_checkout' );
							}

							// Add new errors
							if ( result.messages ) {
								wc_checkout_form.submit_error( result.messages );
							} else {
								if( wc_checkout_params.i18n_checkout_error != 'Error processing checkout. Please try again.' ) {
									wc_checkout_form.submit_error( '<div class="woocommerce-error">' + wc_checkout_params.i18n_checkout_error + '</div>' );
								}
							}
						}
					},
					error:	function( jqXHR, textStatus, errorThrown ) {
						wc_checkout_form.submit_error( '<div class="woocommerce-error">' + errorThrown + '</div>' );
					}
				});
			}

			return false;
		},
		submit_error: function( error_message ) {
            jQuery( '.woocommerce-NoticeGroup-checkout, .woocommerce-error, .woocommerce-message' ).remove();
			wc_checkout_form.$checkout_form.prepend( '<div class="woocommerce-NoticeGroup woocommerce-NoticeGroup-checkout">' + error_message + '</div>' );
			wc_checkout_form.$checkout_form.removeClass( 'processing' ).unblock();
			wc_checkout_form.$checkout_form.find( '.input-text, select, input:checkbox' ).trigger( 'validate' ).blur();
			wc_checkout_form.scroll_to_notices();
            jQuery( document.body ).trigger( 'checkout_error' );
		},
		scroll_to_notices: function() {
			var scrollElement           = jQuery( '.woocommerce-NoticeGroup-updateOrderReview, .woocommerce-NoticeGroup-checkout' );

			if ( ! scrollElement.length ) {
				scrollElement = jQuery( '.form.checkout' );
			}
			$.scroll_to_notices( scrollElement );
		}
	};

	var wc_checkout_coupons = {
		init: function() {
            jQuery( document.body ).on( 'click', 'a.showcoupon', this.show_coupon_form );
            jQuery( document.body ).on( 'click', '.woocommerce-remove-coupon', this.remove_coupon );
            jQuery( 'form.checkout_coupon' ).hide().submit( this.submit );
		},
		show_coupon_form: function() {
            jQuery( '.checkout_coupon' ).slideToggle( 400, function() {
                jQuery( '.checkout_coupon' ).find( ':input:eq(0)' ).focus();
			});
			return false;
		},
		submit: function() {
			var $form = jQuery( this );

			if ( $form.is( '.processing' ) ) {
				return false;
			}

			$form.addClass( 'processing' ).block({
				message: null,
				overlayCSS: {
					background: '#fff',
					opacity: 0.6
				}
			});

			var data = {
				security:		wc_checkout_params.apply_coupon_nonce,
				coupon_code:	$form.find( 'input[name="coupon_code"]' ).val()
			};

            jQuery.ajax({
				type:		'POST',
				url:		wc_checkout_params.wc_ajax_url.toString().replace( '%%endpoint%%', 'apply_coupon' ),
				data:		data,
				success:	function( code ) {
                    jQuery( '.woocommerce-error, .woocommerce-message' ).remove();
					$form.removeClass( 'processing' ).unblock();

					if ( code ) {
						$form.before( code );
						$form.slideUp();

                        jQuery( document.body ).trigger( 'update_checkout', { update_shipping_method: false } );
					}
				},
				dataType: 'html'
			});

			return false;
		},
		remove_coupon: function( e ) {
			e.preventDefault();

			var container = jQuery( this ).parents( '.woocommerce-checkout-review-order' ),
				coupon    = jQuery( this ).data( 'coupon' );

			container.addClass( 'processing' ).block({
				message: null,
				overlayCSS: {
					background: '#fff',
					opacity: 0.6
				}
			});

			var data = {
				security: wc_checkout_params.remove_coupon_nonce,
				coupon:   coupon
			};

			$.ajax({
				type:    'POST',
				url:     wc_checkout_params.wc_ajax_url.toString().replace( '%%endpoint%%', 'remove_coupon' ),
				data:    data,
				success: function( code ) {
                    jQuery( '.woocommerce-error, .woocommerce-message' ).remove();
					container.removeClass( 'processing' ).unblock();

					if ( code ) {
                        jQuery( 'form.woocommerce-checkout' ).before( code );

                        jQuery( document.body ).trigger( 'update_checkout', { update_shipping_method: false } );

						// Remove coupon code from coupon field
                        jQuery( 'form.checkout_coupon' ).find( 'input[name="coupon_code"]' ).val( '' );
					}
				},
				error: function ( jqXHR ) {
					if ( wc_checkout_params.debug_mode ) {
						/* jshint devel: true */
						console.log( jqXHR.responseText );
					}
				},
				dataType: 'html'
			});
		}
	};

	var wc_checkout_login_form = {
		init: function() {
            jQuery( document.body ).on( 'click', 'a.showlogin', this.show_login_form );
		},
		show_login_form: function() {
            jQuery( 'form.login, form.woocommerce-form--login' ).slideToggle();
			return false;
		}
	};

	var wc_terms_toggle = {
		init: function() {
            jQuery( document.body ).on( 'click', 'a.woocommerce-terms-and-conditions-link', this.toggle_terms );
		},

		toggle_terms: function() {
			if ( jQuery( '.woocommerce-terms-and-conditions' ).length ) {
                jQuery( '.woocommerce-terms-and-conditions' ).slideToggle( function() {
					var link_toggle = jQuery( '.woocommerce-terms-and-conditions-link' );

					if ( jQuery( '.woocommerce-terms-and-conditions' ).is( ':visible' ) ) {
						link_toggle.addClass( 'woocommerce-terms-and-conditions-link--open' );
						link_toggle.removeClass( 'woocommerce-terms-and-conditions-link--closed' );
					} else {
						link_toggle.removeClass( 'woocommerce-terms-and-conditions-link--open' );
						link_toggle.addClass( 'woocommerce-terms-and-conditions-link--closed' );
					}
				} );

				return false;
			}
		}
	};

	wc_checkout_form.init();
	wc_checkout_coupons.init();
	wc_checkout_login_form.init();
	wc_terms_toggle.init();
});
