<?php
/* @package Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @extension Phoca Extension
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
defined('_JEXEC') or die();
use Joomla\CMS\Language\Text;
use Joomla\CMS\Plugin\PluginHelper;
use Joomla\CMS\Factory;
$d = $displayData;
$s          = $d['s'];
$d['close'] = '<button type="button" class="'.$d['s']['c']['modal-btn-close'].'"'.$d['s']['a']['modal-btn-close'].' aria-label="'.Text::_('COM_PHOCACART_CLOSE').'" '.$d['s']['a']['data-bs-dismiss-modal'].' ></button>';

?>
<div id="phQuickViewPopup" class="<?php echo $d['s']['c']['modal.zoom'] ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="<?php echo $s['c']['modal-dialog'] ?> <?php echo $s['c']['modal-lg'] ?>">
      <div class="<?php echo $s['c']['modal-content'] ?>">
        <div class="<?php echo $s['c']['modal-header'] ?>">
           <h5 class="<?php echo $d['s']['c']['modal-title'] ?>"><?php echo PhocacartRenderIcon::icon($d['s']['i']['quick-view'], '', ' ') . Text::_('COM_PHOCACART_QUICK_VIEW');  ?></h5>
            <?php echo $d['close'] ?>
        </div>
        <div class="<?php echo $d['s']['c']['modal-body'] ?>">
            <div class="<?php echo $d['s']['c']['row'] ?>">
                <div class="<?php echo $d['s']['c']['col.xs12.sm12.md12'] ?> ph-center">
			        <?php echo $d['content']; ?>
                </div>
            </div>
        </div>
		<div class="<?php echo $s['c']['modal-footer'] ?>"></div>
	   </div>
    </div>
</div>
