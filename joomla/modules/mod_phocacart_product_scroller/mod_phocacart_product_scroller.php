<?php
/* @package Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @extension Phoca Extension
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */

defined('_JEXEC') or die;// no direct access

use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Helper\ModuleHelper;


$app = Factory::getApplication();
$document = Factory::getDocument();

if (!ComponentHelper::isEnabled('com_phocacart', true)) {
	$app->enqueueMessage(Text::_('Phoca Cart Error'), Text::_('Phoca Cart is not installed on your system'), 'error');
	return;
}
if (file_exists(JPATH_ADMINISTRATOR . '/components/com_phocacart/libraries/bootstrap.php')) {
	// Joomla 5 and newer
	require_once(JPATH_ADMINISTRATOR . '/components/com_phocacart/libraries/bootstrap.php');
} else {
	// Joomla 4
	JLoader::registerPrefix('Phocacart', JPATH_ADMINISTRATOR . '/components/com_phocacart/libraries/phocacart');
}

$lang = Factory::getLanguage();
//$lang->load('com_phocacart.sys');
$lang->load('com_phocacart');

$media 	= PhocacartRenderMedia::getInstance('main');
$media->loadBase();
$media->loadBootstrap();
$media->loadSpec();
$s		= PhocacartRenderStyle::getStyles();
$wa 	= $document->getWebAssetManager();


$p['item_ordering']					= $params->get( 'item_ordering', 1 );
$p['item_limit']					= $params->get( 'item_limit', 1 );
$p['hide_price']					= $params->get( 'hide_price', 0 );
$p['display_view_product_button']	= $params->get( 'display_view_product_button', 1 );
$p['catid_multiple']				= $params->get( 'catid_multiple', array() );
$p['featured_only']					= $params->get( 'featured_only', 0 );
//$p['stock_checking']				= $params->get( 'stock_checking', 0 );// in module display all products
$p['display_product_description']	= $params->get( 'display_product_description', 0 );
//$p['module_description']			= $params->get( 'module_description', '' );
$p['load_swiper_library']			= $params->get( 'load_swiper_library', 1 );
$p['transition_speed']				= $params->get( 'transition_speed', 1500 );
$p['slides_per_view']				= $params->get( 'slides_per_view', 1 );
$p['display_pagination']			= $params->get( 'display_pagination', 1 );
$p['display_navigation']			= $params->get( 'display_navigation', 1 );
$p['autoplay_delay']				= $params->get( 'autoplay_delay', 0 );
$p['navigation_top']				= $params->get( 'navigation_top', 0 );
$p['slides_per_view_576']			= $params->get( 'slides_per_view_576', 2 );
$p['slides_per_view_768']			= $params->get( 'slides_per_view_768', 4 );
$p['slides_per_view_992']			= $params->get( 'slides_per_view_992', 5 );
$pCom								= ComponentHelper::getParams( 'com_phocacart' );
$pc['display_star_rating']			= $pCom->get( 'display_star_rating', 0 );
$pc['lazy_load_category_items']		= $pCom->get( 'lazy_load_category_items', 0 );

$rights	= new PhocacartAccessRights();
$p['can_display_price']	= $rights->canDisplayPrice();
if ($p['hide_price'] == 1) {
    $p['can_display_price'] = false;// override the component rights
}

$moduleclass_sfx = htmlspecialchars((string)$params->get('moduleclass_sfx', ''), ENT_COMPAT, 'UTF-8');

if ($p['load_swiper_library'] == 1) {
	$media->loadSwiper();
}

//$i	= 'ph-mod-product-scroller';
//$k	= str_replace('-', '', $i);

$uniqueId = 'phProductScrollerModuleSwiperContainer'.$module->id;
$c	= '.'.$uniqueId.' .swiper';
$bn	= '.'.$uniqueId.' .swiper-button-next';
$bp	= '.'.$uniqueId.' .swiper-button-prev';
$pg	= '.'.$uniqueId.' .swiper-pagination';


$mt	= 22 + ($p['display_pagination'] == 1 ? 15 : 0) + (int)$p['navigation_top'];// Minus Margin Top for arrows (22 is half of height of the arrow)
$sa   = array();

//$sa[] = 'jQuery(document).ready(function(){';
$sa[] = ' ';
//$sa[] = 'jQuery(window).load(function(){';
$sa[] = 'jQuery(window).on(\'load\', function(){';
$sa[] = '   jQuery("'.$c.'").each(function( i ) {';

$sa[] = '      const '.$uniqueId.' = new Swiper(jQuery("'.$c.'")[i], {';
$sa[] = '         slidesPerView: '.(int)$p['slides_per_view'].',';

if ($p['autoplay_delay'] > 0) {
	$sa[] = '         autoplay: {';
	$sa[] = '             delay: '.(int)$p['autoplay_delay'].',';
	$sa[] = '           },';
}

$sa[] = '         speed: '.(int)$p['transition_speed'].',';
$sa[] = '         spaceBetween: 30,';
$sa[] = '         autoHeight: false,';
$sa[] = '         freeMode: true,';

if ((int)$p['display_navigation'] > 0) {
	$sa[] = '         navigation: {';
	$sa[] = '            nextEl: jQuery("'.$bn.'")[i],';
	$sa[] = '            prevEl: jQuery("'.$bp.'")[i],';
	$sa[] = '         },';
}

if ($p['display_pagination'] == 1) {
	$sa[] = '         pagination: {';
	$sa[] = '            el: "'.$pg.'",';
	$sa[] = '            clickable: true,';
	$sa[] = '         },';
}

if ((int)$p['slides_per_view_576'] > 0 || (int)$p['slides_per_view_768'] > 0 || (int)$p['slides_per_view_992'] > 0) {

	$comma = 0;
	$sa[] = '		breakpoints: {';

	if ((int)$p['slides_per_view_576'] > 0) {
		$sa[] = '			576: {';
		$sa[] = '				slidesPerView: '.(int)$p['slides_per_view_576'].',';
		$sa[] = '				spaceBetween: 10';
		$sa[] = '			}';
		$comma = 1;
    }
	if ((int)$p['slides_per_view_768'] > 0) {
		if ($comma) { $sa[] = '			,';}
		$sa[] = '			768: {';
		$sa[] = '				slidesPerView: '.(int)$p['slides_per_view_768'].',';
		$sa[] = '				spaceBetween: 15';
		$sa[] = '			}';
		$comma = 1;
    }
	if ((int)$p['slides_per_view_992'] > 0) {
		if ($comma) { $sa[] = '			,';}
		$sa[] = '			992: {';
		$sa[] = '				slidesPerView: '.(int)$p['slides_per_view_992'].',';
		$sa[] = '				spaceBetween: 20';
		$sa[] = '			}';
		//$comma = 1;
    }

	$sa[] = '		}';
}


$sa[] = '      });';
$sa[] = '   });';// each

if ((int)$p['display_navigation'] > 0) {
	/*$sa[] = '   var height'.$k.' = jQuery("'.$c.'").height();';
	$sa[] = '   var height'.$k.'h = (height'.$k.' / 2) + '.$mt.';';
	$sa[] = '   jQuery("'.$bn.'").css("margin-top", "-"+height'.$k.'h+"px");';
	$sa[] = '   jQuery("'.$bp.'").css("margin-top", "-"+height'.$k.'h+"px");';*/
}

$sa[] = '})';
$sa[] = ' ';

//$document->addScriptDeclaration(implode("\n", $sa));
$wa->addInlineScript(implode("\n", $sa), ['version' => 'auto'], ['type' => 'module']);//, ['defer' => true]

// TO DO - the following function can check publish, stock, price - this can be added to the parameters
$products			= PhocacartProduct::getProducts(0, $p['item_limit'], $p['item_ordering'], 0, true, false, false, 0, $p['catid_multiple'], $p['featured_only'], array(0,1), '', '', true);
$t['pathitem'] 		= PhocacartPath::getPath('productimage');


require(ModuleHelper::getLayoutPath('mod_phocacart_product_scroller', $params->get('layout', 'default')));
?>
