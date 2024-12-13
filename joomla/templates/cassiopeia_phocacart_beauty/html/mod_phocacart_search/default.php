<?php
/* @package Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @extension Phoca Extension
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
defined('_JEXEC') or die;
use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;


defined('_JEXEC') or die;
HTMLHelper::_('bootstrap.framework');
HTMLHelper::_('bootstrap.collapse', '');

?><div class="ph-cart-module-box ph-cart-module-search-box <?php echo $moduleclass_sfx ;?>">

	<button id="phItemSearchBoxBtn" class="btn btn-secondary"  data-bs-toggle="offcanvas" data-bs-target="#phItemSearchBoxOffCanvas" aria-controls="phItemSearchBoxOffCanvas"><?php echo PhocacartRenderIcon::icon($s['i']['search']) ?></button>

	<div class="offcanvas offcanvas-end" tabindex="-1" id="phItemSearchBoxOffCanvas" aria-labelledby="phItemSearchBoxOffCanvasLabel">
		<div class="offcanvas-header">
			<h5 class="offcanvas-title" id="phItemSearchBoxOffCanvasLabel"><?php echo Text::_('COM_PHOCACART_SEARCH') ?></h5>
			<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="<?php echo Text::_('COM_PHOCACART_CLOSE') ?>"></button>
		</div>
		<div class="offcanvas-body">
			<div id="phItemSearchBox" class="ph-item-module-box ph-item-search-box phItemSearchBox"><?php echo $search->renderSearch(array('specific_id_suffix' => $module->id)); ?></div>
		</div>
	</div>
</div>


