<?php
/* @package Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @extension Phoca Extension
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
defined( '_JEXEC' ) or die();
use Joomla\CMS\MVC\View\HtmlView;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Toolbar\ToolbarHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Toolbar\Toolbar;
jimport( 'joomla.application.component.view' );
jimport('joomla.filesystem.folder');
jimport('joomla.filesystem.file');
class PhocaInstallCpViewPhocaInstallInstall extends HtmlView
{
	public function display($tpl = null) {
		HTMLHelper::stylesheet( 'media/com_phocainstall/css/administrator/phocainstall.css' );
		$this->addToolbar();
		parent::display($tpl);
	}
	
	protected function addToolbar() {
		ToolbarHelper::title( Text::_( 'COM_PHOCAINSTALL_PHOCAINSTALL' ), 'install.png' );
		ToolbarHelper::divider();
		
		$bar = Toolbar::getInstance( 'toolbar' );
		$dhtml = '<a href="index.php?option=com_phocainstall" class="btn btn-small"><i class="icon-home" title="'.Text::_('COM_PHOCAINSTALL_CONTROL_PANEL').'"></i> '.Text::_('COM_PHOCAINSTALL_CONTROL_PANEL').'</a>';
		$bar->appendButton('Custom', $dhtml);
		
		ToolbarHelper::help( 'screen.phocainstall', true );
	}
}
?>