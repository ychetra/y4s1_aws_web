<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_menu
 *
 * @copyright   (C) 2021 Open Source Matters, Inc. <https://www.joomla.org>
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Helper\ModuleHelper;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Uri\Uri;

HTMLHelper::_('bootstrap.offcanvas');

?>
<nav class="navbar navbar-expand-lg">
    <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbar<?php echo $module->id; ?>" aria-controls="navbar<?php echo $module->id; ?>" aria-expanded="false" aria-label="<?php echo Text::_('MOD_MENU_TOGGLE'); ?>">
        <span class="icon-menu" aria-hidden="true"></span>
    </button>
    <div class="offcanvas offcanvas-start menu" id="navbar<?php echo $module->id; ?>">
        <div class="offcanvas-header">
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <?php require __DIR__ . '/dropdown-metismenu.php'; ?>
            <div class="d-lg-none mt-3">
                <?php
                    $modules = ModuleHelper::getModules('offcanvas');
                    foreach ($modules as $module) {
                        echo ModuleHelper::renderModule($module, []);
                    }
                ?>
            </div>
        </div>
    </div>
</nav>
