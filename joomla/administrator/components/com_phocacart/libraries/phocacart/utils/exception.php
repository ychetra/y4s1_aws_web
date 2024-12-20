<?php
/**
 * @package   Phoca Cart
 * @author    Jan Pavelka - https://www.phoca.cz
 * @copyright Copyright (C) Jan Pavelka https://www.phoca.cz
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 and later
 * @cms       Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license   http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
use Joomla\CMS\Language\Text;

class PhocacartUtilsException
{
	
	public static function renderErrorInfo ($msg, $Text = false){
	
		if ($Text) {
			return '<div class="alert alert-error">'.Text::_($msg).'</div>';
		} else {
			return '<div class="alert alert-error">'.$msg.'</div>';
		}
	}
}
?>
