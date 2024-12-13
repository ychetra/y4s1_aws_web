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

defined('_JEXEC') or die;
HTMLHelper::_('bootstrap.framework');
HTMLHelper::_('bootstrap.collapse', '');

// Total amount
$price = new PhocacartPrice();
$total = $cart->getCartTotalItems();
// <div class="phItemCartBoxTotal"><Xphp echo $price->getPriceFormat($total[0]['brutto']); X></div>

?><div class="ph-cart-module-box ph-cart-module-cart-box <?php echo $moduleclass_sfx ;?>">

	<div class="ph-cart-module-cart-box-info">
		<div class="ph-cart-module-cart-box-info-title"><?php echo Text::_('COM_PHOCACART_SHOPPING_CART') ?></div>
		<div class="ph-cart-module-cart-box-info-amount phItemCartBoxTotal"><?php echo $price->getPriceFormat($total[0]['brutto'] ?? 0) ?></div>
	</div>

<?php /*
	<div class="dropdown">
	  <button id="phItemCartBoxBtn" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
	  <?php echo PhocacartRenderIcon::icon($s['i']['shopping-cart']) ?> <sup class="ph-cart-count-sup phItemCartBoxCount" id="phItemCartBoxCount"><?php echo $cart->getCartCountItems(); ?></sup>
	  </button>
	  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="phItemCartBoxBtn">
		<div id="phItemCartBox" class="ph-item-module-box ph-item-cart-box phItemCartBox"><?php echo $cart->render(); ?></div>
	  </div>
	</div>
*/ ?>

	<button id="phItemCartBoxBtn" class="btn btn-secondary" data-bs-toggle="offcanvas" data-bs-target="#phItemCartBoxOffCanvas" aria-controls="phItemCartBoxOffCanvas">
		<?php echo PhocacartRenderIcon::icon($s['i']['shopping-cart']) ?> <sup class="ph-cart-count-sup phItemCartBoxCount" id="phItemCartBoxCount"><?php echo $cart->getCartCountItems(); ?></sup>
	</button>

	<div class="offcanvas offcanvas-end" tabindex="-1" id="phItemCartBoxOffCanvas" aria-labelledby="phItemCartBoxOffCanvasLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="phItemCartBoxOffCanvasLabel"><?php echo Text::_('COM_PHOCACART_SHOPPING_CART') ?></h5>
			<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="<?php echo Text::_('COM_PHOCACART_CLOSE') ?>"></button>
		</div>
		<div class="offcanvas-body">
			<div id="phItemCartBox" class="ph-item-module-box ph-item-cart-box phItemCartBox"><?php echo $cart->render(); ?></div>
		</div>
	</div>
</div>
