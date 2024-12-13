<?php
/* @package Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @extension Phoca Extension
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
use Joomla\CMS\Factory;
use Joomla\CMS\Language\Text;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\MVC\Controller\BaseController;
use Joomla\CMS\HTML\Helpers\Sidebar;

jimport('joomla.application.component.controller');

$app 	= Factory::getApplication();
$view	= $app->input->get('view', '', 'string');
if ($view == '' || $view == 'phocainstallcp') {
	Sidebar::addEntry(Text::_('Phoca Install'), 'index.php?option=com_phocainstall', true);
}


class PhocaInstallCpController extends BaseController {
	function display($cachable = false, $urlparams = array()) {
		parent::display($cachable, $urlparams);
	}
}
?>
