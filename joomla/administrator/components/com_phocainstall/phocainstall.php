<?php
/* @package Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @extension Phoca Extension
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
use Joomla\CMS\Factory;
if(!defined('DS')) define('DS', DIRECTORY_SEPARATOR); 
require_once( JPATH_COMPONENT.'/controller.php' );

if($controller = Factory::getApplication()->input->get('controller')) {
    $path = JPATH_COMPONENT.'/controllers/'.$controller.'.php';
    if (file_exists($path)) {
        require_once $path;
    } else {
        $controller = '';
    }
}

$classname    = 'PhocaInstallCpController'.$controller;
$controller   = new $classname( );
$controller->execute( Factory::getApplication()->input->get('task') );
$controller->redirect();

?>