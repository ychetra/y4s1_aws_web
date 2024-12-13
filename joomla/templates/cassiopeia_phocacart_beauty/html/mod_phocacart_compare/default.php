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

/* <div class="ph-cart-module-box ph-cart-module-compare-box<?php echo $moduleclass_sfx ;?>">
	<div class="dropdown">
	  <button id="phItemCompareBoxBtn" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><?php echo PhocacartRenderIcon::icon($s['i']['compare']) ?> <sup class="ph-cart-count-sup phItemCompareBoxCount" id="phItemCompareBoxCount"><?php echo $compare->getComapareCountItems(); ?></sup></button>
	  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="phItemCompareBoxBtn">
		<div id="phItemCompareBox" class="ph-item-module-box ph-item-compare-box phItemCompareBox"><?php echo $compare->renderList(); ?></div>
	  </div>
	</div>
</div> */

?><div class="ph-cart-module-box ph-cart-module-compare-box <?php echo $moduleclass_sfx ;?>">

	<button id="phItemCompareBoxBtn" class="btn btn-secondary"  data-bs-toggle="offcanvas" data-bs-target="#phItemCompareBoxOffCanvas" aria-controls="phItemCompareBoxOffCanvas"><?php echo PhocacartRenderIcon::icon($s['i']['compare']) ?> <sup class="ph-cart-count-sup phItemCompareBoxCount" id="phItemCompareBoxCount"><?php echo $compare->getCompareCountItems(); ?></sup></button>

	<div class="offcanvas offcanvas-end" tabindex="-1" id="phItemCompareBoxOffCanvas" aria-labelledby="phItemCompareBoxOffCanvasLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="phItemCompareBoxOffCanvasLabel"><?php echo Text::_('COM_PHOCACART_COMPARISON_LIST') ?></h5>
			<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="<?php echo Text::_('COM_PHOCACART_CLOSE') ?>"></button>
		</div>
		<div class="offcanvas-body">
			<div id="phItemCompareBox" class="ph-item-module-box ph-item-compare-box phItemCompareBox"><?php echo $compare->renderList(); ?></div>
		</div>
	</div>
</div>
