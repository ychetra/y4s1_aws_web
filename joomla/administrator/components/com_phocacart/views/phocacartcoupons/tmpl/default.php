<?php
/*
 * @package Joomla
 * @copyright Copyright (C) Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 * @component Phoca Cart
 * @copyright Copyright (C) Jan Pavelka www.phoca.cz
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
defined('_JEXEC') or die();
use Joomla\CMS\Factory;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Router\Route;
$r 			= $this->r;
$user		= Factory::getUser();
$userId		= $user->get('id');
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));
$canOrder	= $user->authorise('core.edit.state', $this->t['o']);
$saveOrder	= $listOrder == 'a.ordering';
$saveOrderingUrl = '';
if ($saveOrder && !empty($this->items)) {
    $saveOrderingUrl = $r->saveOrder($this->t, $listDirn);
}
$sortFields = $this->getSortFields();

echo $r->jsJorderTable($listOrder);


echo $r->startForm($this->t['o'], $this->t['tasks'], 'adminForm');
//echo $r->startFilter();
//echo $r->selectFilterPublished('JOPTION_SELECT_PUBLISHED', $this->state->get('filter.published'));
//echo $r->selectFilterLanguage('JOPTION_SELECT_LANGUAGE', $this->state->get('filter.language'));
//echo $r->selectFilterCategory(PhocaDownloadCategory::options($this->t['o']), 'JOPTION_SELECT_CATEGORY', $this->state->get('filter.category_id'));
//echo $r->endFilter();

echo $r->startMainContainer();
/*
echo $r->startFilterBar();
echo $r->inputFilterSearch($this->t['l'].'_FILTER_SEARCH_LABEL', $this->t['l'].'_FILTER_SEARCH_DESC',
							$this->escape($this->state->get('filter.search')));
echo $r->inputFilterSearchClear('JSEARCH_FILTER_SUBMIT', 'JSEARCH_FILTER_CLEAR');
echo $r->inputFilterSearchLimit('JFIELD_PLG_SEARCH_SEARCHLIMIT_DESC', $this->pagination->getLimitBox());
echo $r->selectFilterDirection('JFIELD_ORDERING_DESC', 'JGLOBAL_ORDER_ASCENDING', 'JGLOBAL_ORDER_DESCENDING', $listDirn);
echo $r->selectFilterSortBy('JGLOBAL_SORT_BY', $sortFields, $listOrder);

echo $r->startFilterBar(2);
echo $r->selectFilterPublished('JOPTION_SELECT_PUBLISHED', $this->state->get('filter.published'));
echo $r->endFilterBar();

echo $r->endFilterBar();*/

echo LayoutHelper::render('joomla.searchtools.default', array('view' => $this));
echo $r->startTable('categoryList');

echo $r->startTblHeader();

echo $r->firstColumnHeader($listDirn, $listOrder);
echo $r->secondColumnHeader($listDirn, $listOrder);
echo '<th class="ph-title-short">'.HTMLHelper::_('searchtools.sort',  	$this->t['l'].'_TITLE', 'a.title', $listDirn, $listOrder ).'</th>'."\n";
echo '<th class="ph-published">'.HTMLHelper::_('searchtools.sort',  $this->t['l'].'_PUBLISHED', 'a.published', $listDirn, $listOrder ).'</th>'."\n";
echo '<th class="ph-code">'.HTMLHelper::_('searchtools.sort',  $this->t['l'].'_CODE', 'a.code', $listDirn, $listOrder ).'</th>'."\n";
echo '<th class="ph-discount">'.HTMLHelper::_('searchtools.sort',  $this->t['l'].'_DISCOUNT', 'a.discount', $listDirn, $listOrder ).'</th>'."\n";
echo '<th class="ph-date">'.HTMLHelper::_('searchtools.sort',  $this->t['l'].'_VALID_FROM', 'a.valid_from', $listDirn, $listOrder ).'</th>'."\n";
echo '<th class="ph-date">'.HTMLHelper::_('searchtools.sort',  $this->t['l'].'_VALID_TO', 'a.valid_to', $listDirn, $listOrder ).'</th>'."\n";
echo '<th class="ph-date">'.HTMLHelper::_('searchtools.sort',  $this->t['l'].'_COUPON_TYPE', 'a.coupon_type', $listDirn, $listOrder ).'</th>'."\n";
echo '<th class="ph-status">'.Text::_($this->t['l'].'_STATUS').'</th>'."\n";
echo '<th class="ph-id">'.HTMLHelper::_('searchtools.sort',  		$this->t['l'].'_ID', 'a.id', $listDirn, $listOrder ).'</th>'."\n";

echo $r->endTblHeader();

echo $r->startTblBody($saveOrder, $saveOrderingUrl, $listDirn);

$originalOrders = array();
$parentsStr 	= "";
$j 				= 0;

if (is_array($this->items)) {
	foreach ($this->items as $i => $item) {
		//if ($i >= (int)$this->pagination->limitstart && $j < (int)$this->pagination->limit) {
			$j++;

$urlEdit		= 'index.php?option='.$this->t['o'].'&task='.$this->t['task'].'.edit&id=';
$urlTask		= 'index.php?option='.$this->t['o'].'&task='.$this->t['task'];
$orderkey   	= array_search($item->id, $this->ordering[0]);
$ordering		= ($listOrder == 'a.ordering');
$canCreate		= $user->authorise('core.create', $this->t['o']);
$canEdit		= $user->authorise('core.edit', $this->t['o']);
$canCheckin		= $user->authorise('core.manage', 'com_checkin') || $item->checked_out==$user->get('id') || $item->checked_out==0;
$canChange		= $user->authorise('core.edit.state', $this->t['o']) && $canCheckin;
$linkEdit 		= Route::_( $urlEdit. $item->id );



echo $r->startTr($i, isset($item->catid) ? (int)$item->catid : 0);

        echo $r->firstColumn($i, $item->id, $canChange, $saveOrder, $orderkey, $item->ordering);
        echo $r->secondColumn($i, $item->id, $canChange, $saveOrder, $orderkey, $item->ordering);

$checkO = '';
if ($item->checked_out) {
	$checkO .= HTMLHelper::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time, $this->t['tasks'].'.', $canCheckin);
}
if ($canCreate || $canEdit) {
	$checkO .= '<a href="'. Route::_($linkEdit).'">'. $this->escape($item->title).'</a>';
} else {
	$checkO .= $this->escape($item->title);
}
echo $r->td($checkO, "small", 'th');


echo $r->td(HTMLHelper::_('jgrid.published', $item->published, $i, $this->t['tasks'].'.', $canChange), "small");


echo $r->td($this->escape($item->code), "small");
//echo $r->td($this->escape(PhocacartPrice::cleanPrice($item->discount)), "small");
echo $r->td('<span class="ph-editinplace-text ph-eip-text ph-eip-price" id="coupons:discount:'.(int)$item->id.'">'.$this->escape(PhocacartPrice::cleanPrice($item->discount)).'</span>', "small");
echo $r->td($this->escape($item->valid_from), "small");
echo $r->td($this->escape($item->valid_to), "small");

$couponType = '';
if ($item->coupon_type == 2) {
	$couponType = '<span class="label label-warning badge bg-warning">' . Text::_('COM_PHOCACART_GIFT_VOUCHER') . '</span>';
	if (isset($item->gift_order_id) && (int)$item->gift_order_id > 0) {
		$couponType .= '<br><small>'.Text::_('COM_PHOCACART_ORDER_ID'). ': '. $item->gift_order_id. '</small>';
	}

	// ACTION
	$linkCouponView   		= Route::_('index.php?option=' . $this->t['o'] . '&view=phocacartcouponview&tmpl=component&id=' . (int)$item->id . '');
	$linkCouponViewHandler 	= 'onclick="window.open(this.href, \'couponview\', \'width=780,height=560,scrollbars=yes,menubar=no,resizable=yes\');return false;"';

	$couponType .= '<div class="ph-action-row">';

	$couponType .= '<a href="' . $linkCouponView . '" class="btn btn-transparent btn-small btn-xs ph-btn" role="button" ' . $linkCouponViewHandler . '>' . PhocacartRenderIcon::icon($this->s['i']['search']. ' ph-icon-success', 'title="' . Text::_('COM_PHOCACART_VIEW_COUPON') . '"', '', '', 'fa5') . '</a>';

	if ($this->t['plugin-pdf'] == 1 && $this->t['component-pdf']) {

		$couponType .= ' ';
		$formatPDF = '&format=pdf';
		$couponType .= '<a href="' . $linkCouponView  . $formatPDF . '" class="btn btn-transparent btn-small btn-xs ph-btn" role="button" ' . $linkCouponViewHandler . '>' . PhocacartRenderIcon::icon($this->s['i']['search']. ' ph-icon-success', 'title="' . Text::_('COM_PHOCACART_VIEW_COUPON') . '"', '', '', 'fa5') . '<br /><span class="ph-icon-success-txt">' . Text::_('COM_PHOCACART_PDF') . '</span></a>';

	}
	$couponType .= '</div>';

} else {
	$couponType = '<span class="label label-success badge bg-success">' . Text::_('COM_PHOCACART_GIFT_COUPON') .  '</span>';
}
echo $r->td($couponType, "small");


$status = PhocacartDate::getActiveDate($item->valid_from, $item->valid_to, 1);
if ($item->published == 0) {
	$status = '<span class="label label-default">'.Text::_('COM_PHOCACART_UNPUBLISHED').'</span>';
}
echo $r->td($status, "small");
echo $r->td($item->id, "small");

echo $r->endTr();

		//}
	}
}
echo $r->endTblBody();

echo $r->tblFoot($this->pagination->getListFooter(), 11);
echo $r->endTable();

echo $r->formInputsXML($listOrder, $listDirn, $originalOrders);
echo $r->endMainContainer();
echo $r->endForm();
?>
