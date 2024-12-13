<?php
/* @package Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @extension Phoca Extension
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Uri\Uri;

defined('_JEXEC') or die;
HTMLHelper::_('bootstrap.framework');
HTMLHelper::_('bootstrap.collapse', '');
// Alternative View in e.g. position 22

//$item 		= '<span class="'.PhocacartRenderIcon::getClass('globe').'"></span>';// globe icon
$item 		= Text::_('COM_PHOCACART_CURRENCY');// currency string
$item		= '';
$count 		= count($currArray);// count of currencies

$currList 	= array();

$currList[] = '<div class="ph-currency-list-box">';
if (!empty($currArray)) {
	foreach($currArray as $k => $v) {
		$image = '';
		if (isset($v->image) && $v->image != '') {
			$image = '<img class="ph-currency-image-list" src="'.Uri::base(true). '/' . $v->image.'" alt="'.$v->code.'" />';
		}

		if ($v->active == 1) {
			//$item .= ' <span class="ph-currency-list-suffix">('.$image .' ' . $v->code.')</span>';
			$item .= ' <span class="ph-currency-list-suffix">'.$image .' ' . $v->code.'</span>';
		}
		$currList[] = '<div class="ph-currency-list">'.$image . ' <a href="javascript:void(0);" onclick="jQuery(\'<input>\').attr({type: \'hidden\', id: \'id\', name: \'id\', value: \''.(int)$v->id.'\'}).appendTo(\'#phItemCurrencyBoxForm\');jQuery(\'#phItemCurrencyBoxForm\').submit()">'. $v->text.'</a></div>';
	}
}
$currList[] = '</div>';


/*<div class="ph-cart-module-box ph-cart-module-currency-box <?php echo $moduleclass_sfx ;?>">
	<div class="dropdown">
	  <button id="phItemCurrencyBoxBtn" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><?php echo $item ?> <sup class="ph-cart-count-sup phItemCurrencyBoxCount" id="phItemCurrencyBoxCount"><?php echo $count; ?></sup></button>
	  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="phItemCurrencyBoxBtn">
		<div id="phItemCurrencyBox" class="ph-item-module-box ph-item-currency-box phItemCurrencyBox"><?php echo implode('', $currList); ?></div>
	  </div>
	</div>*/

?><div class="ph-cart-module-box ph-cart-module-currency-box <?php echo $moduleclass_sfx ;?>">

	<button id="phItemCurrencyBoxBtn" class="btn btn-secondary"  data-bs-toggle="offcanvas" data-bs-target="#phItemCurrencyBoxOffCanvas" aria-controls="phItemCurrencyBoxOffCanvas"><?php echo $item ?> <sup class="ph-cart-count-sup phItemCurrencyBoxCount" id="phItemCurrencyBoxCount"><?php echo $count; ?></sup></button>

	<div class="offcanvas offcanvas-end" tabindex="-1" id="phItemCurrencyBoxOffCanvas" aria-labelledby="phItemCurrencyBoxOffCanvasLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="phItemCurrencyBoxOffCanvasLabel"><?php echo Text::_('COM_PHOCACART_SELECT_CURRENCY') ?></h5>
			<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="<?php echo Text::_('COM_PHOCACART_CLOSE') ?>"></button>
		</div>
		<div class="offcanvas-body">
			<div id="phItemCurrencyBox" class="ph-item-module-box ph-item-currency-box phItemCurrencyBox"><?php echo implode('', $currList); ?></div>
		</div>
	</div>


	<?php
echo '<form action="'.$linkCheckout.'" method="post" id="phItemCurrencyBoxForm">';
echo '<input type="hidden" name="task" value="checkout.currency">';
echo '<input type="hidden" name="tmpl" value="component" />';
echo '<input type="hidden" name="option" value="com_phocacart" />';
echo '<input type="hidden" name="return" value="'.$actionBase64.'" />';
echo HTMLHelper::_('form.token');
echo '</form>';
?></div>
