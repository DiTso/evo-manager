<?php
/**
 * Filename:       media/style/$modx->config['manager_theme']/style.php
 * Function:       Manager style variables for images and icons.
 * Encoding:       UTF-8
 * Credit:         icons by Mark James of FamFamFam http://www.famfamfam.com/lab/icons/
 * Date:           18-Mar-2010
 * Version:        1.1
 * MODX version:   1.0.15
*/
$style_path = 'media/style/' . $modx->config['manager_theme'] . '/images/';

// Tree Menu Toolbar
$_style['add_doc_tree']             = '&#xe90e';
$_style['add_weblink_tree']         = '&#xe913';
$_style['collapse_tree']            = '&#xe91a';
$_style['empty_recycle_bin']        = '&#xe91c';
$_style['empty_recycle_bin_empty']  = '<span style="opacity: .5">&#xe921</span>';
$_style['expand_tree']              = '&#xe919';
$_style['hide_tree']                = '&larr;';
$_style['refresh_tree']             = '&#xe915';
$_style['show_tree']                = '&rarr;';
$_style['sort_tree']                = '&#xe91e';
$_style['elements_icon']            = '&#xe90c';


// Tree Icons
$_style['tree_folder_fnt']              = '<i class="font-icon">&#xe90f;</i>';
$_style['tree_folderopen_fnt']          = '<i class="font-icon">&#xe910;</i>';

$_style['tree_plusnode']            = '►';
$_style['tree_minusnode']           = '▼';

$_style['tree_deletedpage']         = '<i style="color: #a00" class="font-icon">&#xe90d;</i>';
$_style['tree_globe']               = '<i style="color: #0a0" class="font-icon">&#xe918;</i>';
$_style['tree_linkgo']              = '<i class="font-icon">&#xe922;</i>';
$_style['tree_page']                = '<i class="font-icon">&#xe902;</i>';
$_style['tree_page_home']           = '<i class="font-icon">&#xe904;</i>';
$_style['tree_page_404']            = '<i class="font-icon">&#xe903;</i>';
$_style['tree_page_hourglass']      = '<i class="font-icon">&#xe90d;</i>'; // 500
$_style['tree_page_info']           = '<i class="font-icon">&#xe90a;</i>'; // 403
$_style['tree_page_blank']          = '<i class="font-icon">&#xe90d;</i>';
$_style['tree_page_css']            = '<i class="font-icon">&#xe92a;</i>';
$_style['tree_page_html']           = '<i class="font-icon">&#xe905;</i>';
$_style['tree_page_xml']            = '<i class="font-icon">&#xe90b;</i>';
$_style['tree_page_js']             = '<i class="font-icon">&#xe929;</i>';
$_style['tree_page_rss']            = '<i class="font-icon">&#xe908;</i>';
$_style['tree_page_pdf']            = '<i class="font-icon">&#xe907;</i>';
$_style['tree_page_word']           = '<i class="font-icon">&#xe927;</i>';
$_style['tree_page_excel']          = '<i class="font-icon">&#xe928;</i>';
$_style['tree_weblink']             = '<i class="font-icon">&#xe912;</i>';

$_style['tree_showtree']            = '<i class="font-icon">&#xe918;</i>';

$_style['tree_folder_secure_fnt']       = '<i style="color: #ab7e7d" class="font-icon">&#xe91f;</i>';
$_style['tree_folderopen_secure_fnt']   = '<i style="color: #ab7e7d" class="font-icon">&#xe920;</i>';

$_style['tree_page_secure']         = '<i style="color: #ab7e7d" class="font-icon">&#xe906;</i>';
$_style['tree_page_blank_secure']   = '<i style="color: #ab7e7d" class="font-icon">&#xe906;</i>';
$_style['tree_page_css_secure']     = '<i style="color: #ab7e7d" class="font-icon">&#xe92a;</i>';
$_style['tree_page_html_secure']    = '<i style="color: #ab7e7d" class="font-icon">&#xe905;</i>';
$_style['tree_page_xml_secure']     = '<i style="color: #ab7e7d" class="font-icon">&#xe90b;</i>';
$_style['tree_page_js_secure']      = '<i style="color: #ab7e7d" class="font-icon">&#xe929;</i>';
$_style['tree_page_rss_secure']     = '<i style="color: #ab7e7d" class="font-icon">&#xe908;</i>';
$_style['tree_page_pdf_secure']     = '<i style="color: #ab7e7d" class="font-icon">&#xe907;</i>';
$_style['tree_page_word_secure']    = '<i style="color: #ab7e7d" class="font-icon">&#xe927;</i>';
$_style['tree_page_excel_secure']   = '<i style="color: #ab7e7d" class="font-icon">&#xe928;</i>';


// Icons
$_style['icons_add']                = $style_path.'blank.png';
$_style['icons_cal']                = $style_path.'blank.png';
$_style['icons_cal_nodate']         = $style_path.'blank.png';
$_style['icons_cancel']             = $style_path.'blank.png';
$_style['icons_close']              = $style_path.'blank.png';
$_style['icons_delete']             = $style_path.'blank.png';
$_style['icons_delete_document']    = $style_path.'blank.png';
$_style['icons_resource_overview']  = $style_path.'blank.png';
$_style['icons_resource_duplicate'] = $style_path.'blank.png';
$_style['icons_edit_document']      = $style_path.'blank.png';
$_style['icons_email']              = $style_path.'blank.png';
$_style['icons_folder']             = $style_path.'blank.png';
$_style['icons_home']               = $style_path.'blank.png';
$_style['icons_information']        = $style_path.'blank.png';
$_style['icons_loading_doc_tree']   = $style_path.'blank.png';
$_style['icons_mail']               = $style_path.'blank.png';
$_style['icons_message_forward']    = $style_path.'blank.png';
$_style['icons_message_reply']      = $style_path.'blank.png';
$_style['icons_modules']            = $style_path.'blank.png';
$_style['icons_move_document']      = $style_path.'blank.png';
$_style['icons_new_document']       = $style_path.'blank.png';
$_style['icons_new_weblink']        = $style_path.'blank.png';
$_style['icons_preview_resource']   = $style_path.'blank.png';
$_style['icons_publish_document']   = $style_path.'blank.png';
$_style['icons_refresh']            = $style_path.'blank.png';
$_style['icons_save']               = $style_path.'blank.png';
$_style['icons_set_parent']         = $style_path.'blank.png';
$_style['icons_table']              = $style_path.'blank.png';
$_style['icons_undelete_resource']  = $style_path.'blank.png';
$_style['icons_unpublish_resource'] = $style_path.'blank.png';
$_style['icons_user']               = $style_path.'blank.png';
$_style['icons_weblink']            = $style_path.'blank.png';
$_style['icons_working']            = $style_path.'blank.png';
$_style['icons_event1']             = $style_path.'blank.png';
$_style['icons_event2']             = $style_path.'blank.png';
$_style['icons_event3']             = $style_path.'blank.png';
$_style['icons_secured']            = $style_path.'blank.png';

// Tabs
$_style['icons_tab_preview']        = $style_path.'blank.png';

// Indicators
$_style['icons_tooltip']            = $style_path.'blank.png';
$_style['icons_tooltip_over']       = $style_path.'hint.svg';

// Large Icons
$_style['icons_backup_large']       = $style_path.'blank.png';
$_style['icons_mail_large']         = $style_path.'blank.png';
$_style['icons_modules_large']      = $style_path.'blank.png';
$_style['icons_resources_large']    = $style_path.'blank.png';
$_style['icons_security_large']     = $style_path.'blank.png';
$_style['icons_webusers_large']     = $style_path.'blank.png';

// Miscellaneous
$_style['ajax_loader']              = '<span id="preloader-overlay"></span><span id="preloader-ani">'.$_lang['loading_page'].'</span>';
$_style['tx']                       = $style_path.'blank.png';
$_style['icons_right_arrow']        = $style_path.'blank.png';
$_style['fade']                     = $style_path.'blank.png';
$_style['ed_save']                  = $style_path.'blank.png';

?>