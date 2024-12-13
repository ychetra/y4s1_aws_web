<?php
/*
 * @package		Joomla.Framework
 * @copyright	Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 *
 * @component Phoca Component
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU General Public License version 2 or later;
 */
defined('_JEXEC') or die();
use Joomla\CMS\Filesystem\File;
use Joomla\CMS\Factory;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Filesystem\Folder;
use Joomla\CMS\Filesystem\Path;
jimport('joomla.filesystem.folder');
jimport('joomla.filesystem.file');

if (File::exists(JPATH_ADMINISTRATOR.'/components/com_phocainstall/helpers/phocainstall.php')) {
	require_once(JPATH_ADMINISTRATOR.'/components/com_phocainstall/helpers/phocainstall.php');
} else {
	return JError::raiseError('Error', 'Helper Phoca Install file could not be found in system');
}
/*
// VM
if (File::exists(JPATH_ADMINISTRATOR.'/components/com_virtuemart/virtuemart.cfg.php')) {
	require_once(JPATH_ADMINISTRATOR.'/components/com_virtuemart/virtuemart.cfg.php');
} else {
	return JError::raiseError('Error', 'VirtueMart Configuration file could not be found in system');
}
*/
class PhocaInstallCpControllerPhocaInstallinstall extends PhocaInstallCpController
{
	function __construct() {
		parent::__construct();
		$this->registerTask( 'install'  , 'install' );
		$this->registerTask( 'cancel'  , 'cancel' );		
	}

	function install() {		
		
		
		$db			= Factory::getDBO();
		$xmlItems 	= PhocaInstallHelper::getPhocaXMLItems();
		$msg 		= array();
		
		$overwrite	= Factory::getApplication()->input->get( 'overwrite_files', 0, 'int' );
		$backup		= Factory::getApplication()->input->get( 'backup_files', 0, 'int' );
		$ignoreSql	= Factory::getApplication()->input->get( 'ignore_sql', 0, 'int' );
		
		
	
		
		if ($ignoreSql) {
			//$msg[] = '<div style="margin-left:25px;"><span style="color:#669900">'
			//	. JText::_('SQL Query ignored') .'</span></div>';
			$msg[] = '';
		} else {
			$sql = '';
			if (isset($xmlItems['psql']) && $xmlItems['psql'] != '' ) {
				$sql = $xmlItems['psql'];
			}
			
			//VM
			//$sql = str_replace('{vm}', VM_TABLEPREFIX, $sql);
			
			$sql = PhocaInstallCpControllerPhocaInstallinstall::splitSql($sql);
			
			

			$i = 1;
			
			foreach ($sql as $query) {
				$query = trim($query);
				if ($query != '' && $query[0] != '#') {
					
				
				
					try {
						$db->setQuery($query);
						$msg[] = '<div style="margin-left:25px;"><span style="color:#669900">'
						. Text::_('SQL Query part') .' '.$i.' '.Text::_('executed') .'</span></div>';
						$db->execute();
					} catch (Exception $e) {
						//echo JText::sprintf('JLIB_DATABASE_ERROR_FUNCTION_FAILED', $e->getCode(), $e->getMessage()) . '<br>';
						$msgE = '<div style="margin-left:25px;"><span style="color:#cc0000">'
						. Text::_('SQL Query part') .' '.$i.' '.Text::_('executed') . ' - ' . Text::sprintf('JLIB_DATABASE_ERROR_FUNCTION_FAILED', $e->getCode(), $e->getMessage()) . '</span></div>';
						
						echo "INSTALLATION ERROR: <br />";
						echo $msgE;
						exit;
					}
				
				
				
				
				}
				$i++;
			}
			
		}
			
		//$a = $db->loadObjectList();
		
		$files = '';
		if (isset($xmlItems['pfiles']) && $xmlItems['pfiles'] != '' ) {
			$files = $xmlItems['pfiles'];
		}
		$folders = '';
		if (isset($xmlItems['pfolders']) && $xmlItems['pfolders'] != '' ) {
			$folders = $xmlItems['pfolders'];
		}
		
		$fileFolders 	= array();
		$srcFolder 			= JPATH_ROOT . DS . 'administrator'
							. DS . 'components' . DS . 'com_phocainstall/installfiles'. DS;
		if(!empty($folders) && is_array($folders)) {
			foreach($folders as $key => $value) {
				if (Folder::exists($srcFolder . $value)) {
					//$fileFolders[] = JFolder::files($srcFolder . $value, '.', true, true);
					$fileFolders[] = Folder::files($srcFolder . $value, '.', true, true, array('.svn', 'CVS','.DS_Store','__MACOSX','index.html'));
				}
			}
		}

	
		if(!empty($files) && is_array($files)) {
			foreach($files as $key => $value) {
				$src 		= Path::clean(PATH_ROOT . '/administrator/components/com_phocainstall/installfiles/' .$value);
				$dest		= Path::clean(JPATH_ROOT.'/'.$value);
				$destText	= $value;
				
				self::copyFiles($src, $dest, $destText, $overwrite, $backup, $msg);
			}
		}
		
		if(!empty($fileFolders) && is_array($fileFolders)) {
			foreach($fileFolders as $keyF => $valueF) {
				if(!empty($valueF) && is_array($valueF)) {
					foreach($valueF as $key => $value) {
						
						$srcFolder 	= Path::clean($srcFolder);
						$value		= Path::clean($value);
						
		
						$src 		= Path::clean($value);
						$destClean	= str_replace($srcFolder, '', $value);
						$dest		= Path::clean(JPATH_ROOT.'/'.$destClean);
						$destText	= str_replace('\\', '/', $destClean);
						
						$folder_array		= explode('/', $destText);//Explode the filename (folder and file name)
						
						$count_array		= count($folder_array);//Count this array
						$last_array_value 	= $count_array - 1;//The last array value is (Count array - 1)	
						$only_folder		= str_replace($folder_array[$last_array_value], '', $dest);
		
						
						
						if (!Folder::exists($only_folder)) {
							Folder::create($only_folder);
						}
						self::copyFiles($src, $dest, $destText, $overwrite, $backup, $msg);
					}
				}
			}
		}
		
		
		
		$sMsg = array();
		$nb = $no = $nc = 0;
		if(isset($msg['b']) && !empty($msg['b'])) {
			$c  = count($msg['b']);
			if ($c > 0) { $sMsg[] = Text::_('Count of backed up files'). ': '.$c;}
		}
		if(isset($msg['nb']) && !empty($msg['nb'])) {
			$c = $nb = count($msg['nb']);
			if ($c > 0) { $sMsg[] = Text::_('Count of not backed up files'). ': '.$c;}
		}
		if(isset($msg['o']) && !empty($msg['o'])) {
			$c = count($msg['o']);
			if ($c > 0) { $sMsg[] = Text::_('Count of overwritten files'). ': '.$c;}
		}
		if(isset($msg['no']) && !empty($msg['no'])) {
			$c = $no = count($msg['no']);
			if ($c > 0) { $sMsg[] = Text::_('Count of not overwritten files'). ': '.$c;}
		}
		if(isset($msg['i']) && !empty($msg['i'])) {
			$c = count($msg['i']);
			if ($c > 0) { $sMsg[] = Text::_('Count of ignored files'). ': '.$c;}
		}
		if(isset($msg['c']) && !empty($msg['c'])) {
			$c = count($msg['c']);
			if ($c > 0) { $sMsg[] = Text::_('Count of copied files'). ': '.$c;}
		}
		if(isset($msg['nc']) && !empty($msg['nc'])) {
			$c = $nc = count($msg['nc']);
			if ($c > 0) { $sMsg[] = Text::_('Count of not copied files'). ': '.$c;}
		}
		
		$nok = 0;
		if ($nb > 0) {
			 $sMsg[] = '<span style="color:#ff9900">' . Text::_('Warning: Not all files backed up').'</span>';
			 $nok = 1;
		}
		if ($no > 0) {
			 $sMsg[] = '<span style="color:#ff9900">' .Text::_('Warning: Not all files overwritten').'</span>';
			 $nok = 0;
		}
		if ($nc > 0) {
			 $sMsg[] = '<span style="color:#ff9900">' . Text::_('Warning: Not all files copied').'</span>';
			 $nok = 0;
		}
		
		if ($nok == 0) {
			$sMsg[] = '<span style="color:#669900">'. Text::_('Installation was successful').'</span>';
		} else if ($nok == 1) {
			$sMsg[] = '<span style="color:#ff9900">'. Text::_('Installation was successful but there was a problem while backuping current files') . '</span>';
		
		} else {
			$sMsg[] = '<span style="color:#cc0000">'. Text::_('Installation not successful') . '</span>';
		
		}
		
		$msgText = implode ('<br />', $sMsg);
		
		$link = 'index.php?option=com_phocainstall';
		
		// Remove install files from transfer folder (possible problem with other Phoca Install instance)
		if (Folder::exists($srcFolder)) {
			Folder::delete($srcFolder);
		} 
		
		$this->setRedirect($link, '<br />'. $msgText); //$this->setRedirect($link,  implode('<br />', $msg));		
			
	}
	
	function copyFiles($src, $dest, $destText, $overwrite, $backup, &$msg) {
		if (File::exists($src)) {
			if (File::exists($dest)) {
				if($overwrite) {
					if($backup) {
					
						// Backup php to php
						$pos = stripos($dest, '.php');
						if ($pos !== false) {
							$destBak 		= str_replace('.php', '.bak.php', $dest);
							$destBakText	 = str_replace('.php', '.bak.php', $destText);
						} else {
							$destBak 		= $dest . '.bak';
							$destBakText	= $destText . '.bak';
						}
						
						if(File::copy($dest, $destBak)) {
							$msg['b'][] = 1;
							$msg[] = '<div style="margin-left:25px;">'
							. Text::_('File') . ': ' . $destText
							. ' <span style="color:#669900">'. Text::_('file was backed up to').'</span>: </div>'
							. '<div style="margin:0;padding:0;margin-left:50px;">- '.$destBakText. '</div>';
						} else {
							$msg['nb'][] = 1;
							$msg[] = '<div style="margin-left:25px;">'
							. Text::_('File') . ': ' . $destText
							. ' <span style="color:#cc0000">'. Text::_('could not be backed up to').'</span>: </div>'
							. '<div style="margin:0;padding:0;margin-left:50px;">- '.$destBakText. '</div>';
						}
					}
				
					if(File::copy($src, $dest)) {
						$msg['o'][] = 1;
						$msg[] = '<div style="margin-left:25px;">'
						. Text::_('File') . ': ' . $destText
						. ' <span style="color:#ff9900">'. Text::_('copied and existing file overwritten')
						. '</span></div>';
					} else {
						$msg['no'][] = 1;
						$msg[] = '<div style="margin-left:25px;">'
						. Text::_('File') . ': ' . $destText
						. ' <span style="color:#cc0000">'. Text::_('not copied') . '</span></div>';
					}
				} else {
					$msg['i'][] = 1;
					$msg[] = '<div style="margin-left:25px;">'
					. Text::_('File') . ': ' . $destText
					. ' <span style="color:#669900">'. Text::_('overwriting ignored'). '</span></div>';
				}
			} else {
				if(File::copy($src, $dest)) {
					$msg['c'][] = 1;
					$msg[] = '<div style="margin-left:25px;">'
					. Text::_('File') . ': ' . $destText
					. ' <span style="color:#669900">'. Text::_('copied'). '</span></div>';
				} else {
					$msg['nc'][] = 1;
					$msg[] = '<div style="margin-left:25px;">'
					. Text::_('File') . ': ' . $destText
					. ' <span style="color:#cc0000">'. Text::_('not copied') . '</span></div>';
				}
			}
		}
		return true;
	}

	function cancel() {
		$msg = Text::_( 'Installation was cancelled' );
		$link = 'index.php?option=com_phocainstall';
		$this->setRedirect($link, $msg);
	}
	
	function splitSql($sql)
	{
		$sql = trim($sql);
		$sql = preg_replace("/\n\#[^\n]*/", '', "\n".$sql);
		$buffer = array ();
		$ret = array ();
		$in_string = false;

		for ($i = 0; $i < strlen($sql) - 1; $i ++) {
			if ($sql[$i] == ";" && !$in_string)
			{
				$ret[] = substr($sql, 0, $i);
				$sql = substr($sql, $i +1);
				$i = 0;
			}

			if ($in_string && ($sql[$i] == $in_string) && $buffer[1] != "\\")
			{
				$in_string = false;
			}
			elseif (!$in_string && ($sql[$i] == '"' || $sql[$i] == "'") && (!isset ($buffer[0]) || $buffer[0] != "\\"))
			{
				$in_string = $sql[$i];
			}
			if (isset ($buffer[1]))
			{
				$buffer[0] = $buffer[1];
			}
			$buffer[1] = $sql[$i];
		}

		if (!empty ($sql))
		{
			$ret[] = $sql;
		}
		
		return ($ret);
	}
	
}
// utf-8 test: ä,ö,ü,ř,ž
?>