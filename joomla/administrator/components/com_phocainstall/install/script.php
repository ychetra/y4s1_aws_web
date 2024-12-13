<?php
/*
 * @package		Joomla.Framework
 * @copyright	Copyright (C) Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @component Phoca Component
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU General Public License version 2 or later;
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
use Joomla\CMS\Factory;
if(!defined('DS')) define('DS', DIRECTORY_SEPARATOR);
jimport( 'joomla.filesystem.folder' );

class com_phocaInstallInstallerScript
{
	function install($parent) {
		$message = 'See instructions below';
		Factory::getApplication()->enqueueMessage($message, 'message');
		$parent->getParent()->setRedirectURL('index.php?option=com_phocainstall&view=phocainstallinstall');
	}
	function uninstall($parent) {}

	function update($parent) {
		$message = 'See instructions below';
		Factory::getApplication()->enqueueMessage($message, 'message');
		Factory::getApplication()->redirect('index.php?option=com_phocainstall&view=phocainstallinstall');
	}

	function preflight($type, $parent) {}
	function postflight($type, $parent) {}
}
?>