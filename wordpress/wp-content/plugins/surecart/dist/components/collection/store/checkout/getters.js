import{getCheckout}from"../checkouts/mutations";import state from"./store";import{isAddressComplete}from"src/functions/address";export const currentCheckout=()=>getCheckout(state.formId,state.mode);export const checkoutIsLocked=(e="")=>{var t;return e?state.locks.some((t=>t===e)):!!(null===(t=state.locks)||void 0===t?void 0:t.length)};export const getLineItemByProductId=e=>{var t,o;return((null===(o=null===(t=state.checkout)||void 0===t?void 0:t.line_items)||void 0===o?void 0:o.data)||[]).find((t=>{var o,i;return(null===(i=null===(o=null==t?void 0:t.price)||void 0===o?void 0:o.product)||void 0===i?void 0:i.id)===e}))};export const fullShippingAddressRequired=()=>{var e,t;return(null===(e=state.checkout)||void 0===e?void 0:e.shipping_enabled)||(null===(t=null==state?void 0:state.checkout)||void 0===t?void 0:t.shipping_address_required)||(null==state?void 0:state.paymentMethodRequiresShipping)};export const shippingAddressRequired=()=>{var e,t,o,i;return"address_invalid"===(null===(e=state.checkout)||void 0===e?void 0:e.tax_status)||(null===(t=state.checkout)||void 0===t?void 0:t.shipping_enabled)||(null===(o=state.checkout)||void 0===o?void 0:o.shipping_address_required)||(null===(i=null==state?void 0:state.checkout)||void 0===i?void 0:i.tax_enabled)||(null==state?void 0:state.paymentMethodRequiresShipping)};export const getCompleteAddress=(e="shipping")=>{var t,o;if(!isAddressComplete(null===(t=state.checkout)||void 0===t?void 0:t[`${e}_address`]))return;const{line_1:i,line_2:d,...s}=(null===(o=state.checkout)||void 0===o?void 0:o.shipping_address)||{};return{line1:i,line2:d,...s}};