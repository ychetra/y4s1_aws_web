<?php
/* @package Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @extension Phoca Extension
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */

defined('_JEXEC') or die('Restricted access');
use Joomla\CMS\Filesystem\File;
use Joomla\CMS\Uri\Uri;
use Joomla\CMS\HTML\HTMLHelper;

if (File::exists(JPATH_ADMINISTRATOR.'/components/com_phocainstall/helpers/phocainstall.php')) {
	require_once(JPATH_ADMINISTRATOR.'/components/com_phocainstall/helpers/phocainstall.php');
} else {
	//return JError::raiseError('Error', 'Helper Phoca Install file could not be found in system');
	throw new Exception('Helper Phoca Install file could not be found in system', 500);
}

$js = 'var enablePIB = 0;'
 .'   addEvent(\'domready\', function(){'
 .'    /* document.getElementById(\'pilicensesubmitid\').style.backgroundColor = \'#f0f0f0\'; */'
 .'     document.getElementById(\'pilicensesubmitid\').style.cursor = \'Default\';'
 .'   });'
 .'function enablePhocaInstallButton() {'
 .' if (enablePIB == 0) {'
 .'   /* document.forms[\'piform\'].elements[\'pilicensesubmit\'].disabled=false; */'
 .'   document.getElementById(\'pilicensesubmitid\').disabled=false;'
 .'   /* document.getElementById(\'pilicensesubmitid\').style.backgroundColor = \'#6699cc\'; */'
 .'   document.getElementById(\'pilicensesubmitid\').style.cursor = \'Pointer\';'
 .'   enablePIB = 1;'
 .' } else {'
 .'   /* document.forms[\'piform\'].elements[\'pilicensesubmit\'].disabled=true; */'
 .'   document.getElementById(\'pilicensesubmitid\').disabled=true;'
 .'   /* document.getElementById(\'pilicensesubmitid\').style.backgroundColor = \'#f0f0f0\'; */'
 .'   document.getElementById(\'pilicensesubmitid\').style.cursor = \'Default\';'
 .'   enablePIB = 0;'
 .' }'
 .'};';

$jsClick = 'enablePhocaInstallButton();';
$xmlItems = PhocaInstallHelper::getPhocaXMLItems();

$instructions = '';
if (isset($xmlItems['pinstructions']) && $xmlItems['pinstructions'] != '' ) {
	$instructions = $xmlItems['pinstructions'];
}
$sql = '';
if (isset($xmlItems['psql']) && $xmlItems['psql'] != '' ) {
	$sql = $xmlItems['psql'];
}

$files = '';
if (isset($xmlItems['pfiles']) && $xmlItems['pfiles'] != '' ) {
	$files = $xmlItems['pfiles'];
}

$folders = '';
if (isset($xmlItems['pfolders']) && $xmlItems['pfolders'] != '' ) {
	$folders = $xmlItems['pfolders'];
} ?>

<script type="text/javascript" ><?php echo $js; ?></script>

<div id="j-main-container" class="span12"><div class="adminform">

<div style="padding: 20px; margin-right: 20px; background:#fff; color: #777; font-size:105%; border: 1px solid #dfdfdf; -webkit-border-radius: 5px; border-radius: 5px;">

<div style="position:relative;float:right;"><a style="text-decoration:underline" href="http://www.phoca.cz/" target="_blank"><?php echo  HtmlHelper::_('image', 'media/com_phocainstall/images/administrator/logo.png', 'Phoca.cz'); ?></a></div>
<?php /*
<div style="position:relative;float:right;clear:right;"> <?php echo  JHtml::_('image', 'media/com_phocainstall/images/administrator/icon-logo-seal.png', 'Phoca.cz');?></div> */ ?>

<div><?php echo $instructions ?></div>

<?php /*
		
<h2>File Copy</h2>
<div><textarea cols="100" rows="10" style="width: 75%;" readonly="true"><?php
if(!empty($folders) && is_array($folders)) {
	foreach($folders as $key => $value) {
		echo '[' . $value . ']'."\n";
	}
}	

if(!empty($files) && is_array($files)) {
	foreach($files as $key => $value) {
		echo  $value . "\n";
	}
}		

?></textarea></div>
		
<h2>Database Query</h2>
<div><textarea cols="100" rows="10" style="width: 75%;" readonly="true"><?php echo $sql; ?></textarea></div>
		
<div style="font-size:small" >
<h3>Read Me, Terms Of Use</h3>
<p>Before you click on Install button, please read carefully the following instructions and confirm that you understand them.</p>
<ul style="color:#cc0000">
	<li>This component is designed to install files (or folders) listed in <strong>Files Copy Box</strong> (see above) and execute SQL queries listed in <strong>Database Query Box</strong> (see above). It should be used by advanced users which have basic knowledge about Joomla! framework and SQL.</li>
	
	<li>Files listed in <strong>File Copy Box</strong> (see above, [ ] means folder) will overwrite existing files in your Joomla! system. Please, check files and folders on your server which can be overwriten. Don't click on Install button in case, the script can overwrite existing files and folders (in case e.g. they are not backed up).</li>
	
	<li>SQL queries listed in <strong>Database Query Box</strong> (see above) will be executed in your Joomla! system. Please, check your database for existing tables or columns which can be overwriten by this query. Don't click on Install button in case, the query can overwrite existing tables or columns and can delete data stored in such tables or columns.</li>
	
	<li>Backup your system (files and database data). Click on <strong>Install</strong> button after you have backed up your entire system.</li>
	<li>Phoca Install component offers the installation of files and data and can be used by different developers. Please make sure you've downloaded the modified component from a trusted source before you click on <strong>Install</strong> button.</li>
	<li>Phoca Install component is distributed in the hope that it will be useful, but without any warranty. It is distributed under GPL 2 version.</li>
	<li>Clicking the <strong>Install</strong> button you will start the installation process at your own risk.</li>
	</ul>
</div> */ ?>

<div style="font-size:small" >
		<h3>Read Me, Terms Of Use</h3>
		<p>Before you click on Install button, please read carefully the following instructions and confirm that you understand them.</p>
		<ul style="color:#cc0000">
			<li>This component is designed to install demo data (images, items in database) of Phoca Cart component.</li>
			<li>Install demo data only in new clean installation of Phoca Cart which does not include any data. Your existing Phoca Cart data can be lost. So don't install demo data in case you have previously added some data like products, categories, etc. to your Phoca Cart component.</li>
			<li>Phoca Install component is distributed in the hope that it will be useful, but without any warranty. It is distributed under GPL 2 version.</li>
			</ul>
		</div>

<div style="clear: both">&nbsp;</div>
<div style="float: left;margin-left: 12%; width: 37%;">
	<form action="index.php?option=com_phocainstall&controller=phocainstallinstall&task=install" method="post" name="piform" id="piform" >
	<label class="checkbox ph-checkbox-i"><input type="checkbox" name="license_agree" onclick="<?php echo $jsClick;?>" value="">I agree to the terms listed above</label>
	
	<input type="hidden" name="overwrite_files" value="1" />
	<input type="hidden" name="backup_files" value="0" />
	<!--<label class="checkbox ph-checkbox-i"><input type="checkbox" name="backup_files" checked="checked" value="">Backup files which should be overwritten</label>-->
	<input type="hidden" name="ignore_sql" value="0" />
	<input type="hidden" name="controller" value="phocainstallinstall" />
	<input type="hidden" name="task" value="install" />
	<p>&nbsp;</p>
	<div style="float: left;"><button class="btn btn-primary btn-large ph-btn-i" type="submit" name="pilicensesubmit" id="pilicensesubmitid" disabled="disabled" ><i class="icon-ok icon-white"></i>&nbsp;&nbsp; Install</button></div>
	</form>
</div>
<div style="float: left;margin-left: 2%; width: 37%;">
	<form action="index.php?option=com_phocainstall&controller=phocainstallinstall&task=cancel" method="post" name="piformc">
	<label class="checkbox ph-checkbox-i">&nbsp;</label>
    <input type="hidden" name="controller" value="phocainstallinstall" />
	<input type="hidden" name="task" value="cancel" />
	<p>&nbsp;</p>
	<div style="float: left;"><button class="btn btn-primary btn-large ph-btn-i" type="submit" name="pilicensesubmit" id="pilicensesubmitid"  ><i class="icon-remove icon-white"></i>&nbsp;&nbsp; Cancel</button></div>
	</form>
</div>
<div style="clear: both">&nbsp;</div>
	
<p>&nbsp;</p>
<p>&nbsp;</p>
<p style="color: #c0c0c0;">		
<a href="http://www.phoca.cz/phocainstall/" target="_blank">Phoca Install Main Site</a><br />
<a href="http://www.phoca.cz/documentation/" target="_blank">Phoca Install User Manual</a><br />
<a href="http://www.phoca.cz/forum/" target="_blank">Phoca Install Forum</a><br />
<a href="http://www.phoca.cz/" target="_blank">Phoca.cz</a>
</p>

<div style="margin-top:30px;height:39px;background: url('<?php echo Uri::root(true); ?>/media/com_phocainstall/images/administrator/line.png') 100% 0 no-repeat;">&nbsp;</div>

<p>&nbsp;</p>

</div>

</div></div>
