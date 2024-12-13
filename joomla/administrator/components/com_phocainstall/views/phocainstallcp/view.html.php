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
jimport( 'joomla.application.component.view' );

class PhocaInstallCpViewPhocaInstallCp extends HtmlView
{
	protected $t;
	public function display($tpl = null) {
		HTMLHelper::stylesheet( 'media/com_phocainstall/css/administrator/phocainstall.css' );
		$this->t['l'] = 'COM_PHOCAINSTALL';
		$this->t['i'] = 'media/com_phocainstall/images/administrator/';
		$this->addToolbar();
		parent::display($tpl);
	}
	
	protected function addToolbar() {
		ToolbarHelper::title( Text::_( 'COM_PHOCAINSTALL_PHOCAINSTALL' ), 'install.png' );
		ToolbarHelper::divider();
		ToolbarHelper::help( 'screen.phocainstall', true );
	}
}
?>