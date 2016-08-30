<?php
if(IN_MANAGER_MODE!="true") die("<b>INCLUDE_ORDERING_ERROR</b><br /><br />Please use the MODX Content Manager instead of accessing this file directly.");
if (!array_key_exists('mail_check_timeperiod', $modx->config) || !is_numeric($modx->config['mail_check_timeperiod'])) {
	$modx->config['mail_check_timeperiod'] = 5;
}
$modx_textdir = isset($modx_textdir) ? $modx_textdir : null;
$mxla = $modx_lang_attribute ? $modx_lang_attribute : 'en';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html <?php echo ($modx_textdir ? 'dir="rtl" lang="' : 'lang="').$mxla.'" xml:lang="'.$mxla.'"'; ?>>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $modx_manager_charset?>" />
	<title>nav</title>
    <link rel="stylesheet" type="text/css" href="media/style/<?php echo $modx->config['manager_theme']; ?>/style.css" />
	<script src="media/script/mootools/mootools.js" type="text/javascript"></script>
	<script src="media/script/mootools/moodx.js" type="text/javascript"></script>
	<script type="text/javascript" src="media/script/session.js"></script>
	<script type="text/javascript">
	// TREE FUNCTIONS - FRAME
	// These functions affect the tree frame and any items that may be pointing to the tree.
	var currentFrameState = 'open';
	var defaultFrameWidth = '<?php echo !$modx_textdir ? '260,*' : '*,260'?>';
	var userDefinedFrameWidth = '<?php echo !$modx_textdir ? '260,*' : '*,260'?>';

	var workText;
	var buildText;

	// Create the AJAX mail update object before requesting it
	var updateMailerAjx = new Ajax('index.php', {method:'post', postBody:'updateMsgCount=true', onComplete:showResponse});
	function updateMail(now) {
		try {
			// if 'now' is set, runs immediate ajax request (avoids problem on initial loading where periodical waits for time period before making first request)
			if (now)
				updateMailerAjx.request();
			return false;
		} catch(oException) {
			// Delay first run until we're ready...
			xx=updateMail.delay(1000 * 60,'',true);
		}
	}

	function showResponse(request) {
		var counts = request.split(',');
		var elm = $('msgCounter');
		if (elm) elm.innerHTML ='(' + counts[0] + ' / ' + counts[1] + ')';
		var elm = $('newMail');
		if (elm) elm.style.display = counts[0] >0 ? 'inline' :  'none';
	}

	window.addEvent('load', function() {
		updateMail(true); // First run update
		updateMail.periodical(<?php echo $modx->config['mail_check_timeperiod'] * 1000 ?>, '', true); // Periodical Updater
		if(top.__hideTree) {
			// display toc icon
			var elm = $('tocText');
			if(elm) elm.innerHTML = "<a href='#' onclick='defaultTreeFrame();'><?php echo $_style['show_tree']?>&nbsp;<?php echo $_lang['show_tree']?></a>";
		}
	});


	function setTreeFrameWidth(pos) {
		parent.document.getElementById('tree').style.width    = pos + 'px';
		parent.document.getElementById('resizer').style.left = pos + 'px';
		parent.document.getElementById('main').style.left    = pos + 'px';

	}

	function toggleTreeFrame() {
		var pos = parseInt(parent.document.getElementById('tree').style.width) != 0?0:250;
		setTreeFrameWidth(pos);
	}


	function hideTreeFrame() {
		var pos = 0;
		setTreeFrameWidth(pos);
	}

	function defaultTreeFrame() {
		var pos = 250;
		setTreeFrameWidth(pos);
	}


	//toggle TopMenu Frame
		function setMenuFrameHeight(pos) {
		parent.document.getElementById('tree').style.top    = pos + 'px';
		parent.document.getElementById('resizer').style.top = pos + 'px';
		parent.document.getElementById('resizer2').style.top = pos + 'px';
		parent.document.getElementById('main').style.top    = pos + 'px';
		parent.document.getElementById('mainMenu').style.height    = pos + 'px';

	}

	function toggleMenuFrame() {
		var pos = parseInt(parent.document.getElementById('mainMenu').style.height) != 5?5:85;
		setMenuFrameHeight(pos);
	}


	function hideMenuFrame() {
		var pos = 5;
		setMenuFrameHeight(pos);
	}

	function defaultMenuFrame() {
		var pos = 85;
		setMenuFrameHeight(pos);
	}



	// TREE FUNCTIONS - Expand/ Collapse
	// These functions affect the expanded/collapsed state of the tree and any items that may be pointing to it
	function expandTree() {
		try {
			parent.tree.d.openAll();  // dtree
		} catch(oException) {
			zz=window.setTimeout('expandTree()', 1000);
		}
	}

	function collapseTree() {
		try {
			parent.tree.d.closeAll();  // dtree
		} catch(oException) {
			yy=window.setTimeout('collapseTree()', 1000);
		}
	}

	// GENERAL FUNCTIONS - Refresh
	// These functions are used for refreshing the tree or menu
	function reloadtree() {
		var elm = $('buildText');
		if (elm) {
			elm.innerHTML = "<?php echo $_lang['loading_doc_tree']?>";
			elm.style.display = 'block';
		}
		top.tree.saveFolderState(); // save folder state
		setTimeout('top.tree.restoreTree()',200);
	}

	function reloadmenu() {
		<?php if($manager_layout==0) { ?>
			var elm = $('buildText');
			if (elm) {
				elm.innerHTML = "<?php echo $_lang['loading_menu']?>";
				elm.style.display = 'block';
			}
			parent.mainMenu.location.reload();
			<?php } ?>
		}

		function startrefresh(rFrame){
			if(rFrame==1){
				x=window.setTimeout('reloadtree()',500);
			}
			if(rFrame==2) {
				x=window.setTimeout('reloadmenu()',500);
			}
			if(rFrame==9) {
				x=window.setTimeout('reloadmenu()',500);
				y=window.setTimeout('reloadtree()',500);
			}
			if(rFrame==10) {
				window.top.location.href = "../<?php echo MGR_DIR;?>";
			}
		}

	// GENERAL FUNCTIONS - Work
	// These functions are used for showing the user the system is working
	function work() {
		var elm = $('workText');
		if (elm) elm.innerHTML = "<?php echo $_lang['working']?>";
		else w=window.setTimeout('work()', 50);
	}

	function stopWork() {
		var elm = $('workText');
		if (elm) elm.innerHTML = "";
		else  ww=window.setTimeout('stopWork()', 50);
	}

	// GENERAL FUNCTIONS - Remove locks
	// This function removes locks on documents, templates, parsers, and snippets
	function removeLocks() {
		if(confirm("<?php echo $_lang['confirm_remove_locks']?>")==true) {
			top.main.document.location.href="index.php?a=67";
		}
	}

	function showWin() {
		window.open('../');
	}

	function stopIt() {
		top.mainMenu.stopWork();
	}

	function openCredits() {
		parent.main.document.location.href = "index.php?a=18";
		xwwd = window.setTimeout('stopIt()', 2000);
	}

	function NavToggle(element) {
		// This gives the active tab its look
		var navid = document.getElementById('nav');
		var navs = navid.getElementsByTagName('li');
		var navsCount = navs.length;
		for(j = 0; j < navsCount; j++) {
			active = (navs[j].id == element.parentNode.id) ? "active" : "";
			navs[j].className = active;
		}

		// remove focus from top nav
		if(element) element.blur();
	}
</script>
<script type="text/javascript">
    function showuserinfo(caller) {
        var modal = document.getElementById("user-more-popup"),
            currleft = parseFloat(document.getElementById("topbar-container").offsetWidth-document.getElementById("userinfo-container").offsetWidth-1);
        if (caller.getAttribute("class") == "active") {
            caller.setAttribute("class", "");
            modal.style.display = 'none';
        } else {
            caller.setAttribute("class", "active");
            modal.style.display = 'block';
            modal.style.right = currleft+"px";
        }
    }
</script>
	<!--[if lt IE 7]>
	<style type="text/css">
	body { behavior: url(media/script/forIE/htcmime.php?file=csshover.htc) }
	img { behavior: url(media/script/forIE/htcmime.php?file=pngbehavior.htc); }
	</style>
	<![endif]-->
</head>

<body id="topMenu" class="<?php echo $modx_textdir ? 'rtl':'ltr'?>">
    <a href="../" target="_blank" id="main-modx-sign-link"><img width="30" height="30" src="media/style/<?php echo $modx->config['manager_theme']?>/images/modx-sign.svg" alt="<?php echo $site_name?>"></a>
	<div id="tocText"<?php echo $modx_textdir ? ' class="tocTextRTL"' : '' ?>></div>
	<div id="topbar">
		<div id="topbar-container">
			<div id="statusbar">
				<span id="buildText"></span>
				<span id="workText"></span>
			</div>

			<div id="supplementalNav">
				<a href="index.php?a=8" id="logout" title="<?php echo $_lang['logout']?>" target="_top"><?php echo $_lang['logout']?></a><span class="current-modx-version" title="<?php echo $site_name ?> &ndash; <?php echo $modx->getVersionData('full_appname') ?>">MODX Evolution<br /><?php echo $modx->getVersionData('version') ?></span>
				<span id="userinfo-container">
				<?php if (implode("",array_slice($modx->getUserInfo($modx->getLoginUserID()), -3, 1))) 
                    echo "<div id=\"user-avatar-image\"><img width=\"54px\" src=\"/".implode("",array_slice($modx->getUserInfo($modx->getLoginUserID()), -3, 1))."\" /></div>"; 
                ?>
				<?php echo '<span id="username">'.($modx->hasPermission('change_password') ? '<a onclick="this.blur();" href="index.php?a=28" target="main" title="'.$_lang['change_password'].'">'.$modx->getLoginUserName().'</a></span>'."\n" : $modx->getLoginUserName().'</span>') ?>
				<span id="user-more-popup-caller" onclick="showuserinfo(this);">&#9660;</span>
				<div id="user-more-popup">
				<?php if($modx->hasPermission('messages')) { ?>
				<span id="newMail"><a href="index.php?a=10" title="<?php echo $_lang['you_got_mail']?>" target="main"><?php echo $_style['icons_mail']?></a></span>
				<a id="user-messages" onclick="this.blur();" href="index.php?a=10" target="main"><?php echo $_lang['messages']?> <span id="msgCounter">( ? / ? )</span></a>
				<?php }
				if($modx->hasPermission('help')) { ?>
				<a id="user-help" href="index.php?a=9" target="main"><?php echo $_lang['help']?></a>
				<?php } ?>
				</div>
				</span>
				<!-- close #supplementalNav -->
				</div>
			</div>
		</div>
		<div id="searchform">
			<form  action="index.php?a=71#results" method="post" target="main">
				<input type="hidden" value="Search" name="submitok" />
				<input type="text" name="searchid" size="25" class="form-control input-sm" placeholder="<?php echo $_lang['search']?>">
			</form>
		</div>

		<form name="menuForm" action="l4mnu.php" class="clear">
			<input type="hidden" name="sessToken" id="sessTokenInput" value="<?php echo md5(session_id());?>" />
			<div id="Navcontainer">
				<div id="divNav">
					<?php include(MODX_MANAGER_PATH.'media/style/'.$manager_theme.'/frames/mainmenu.php'); ?></div>
				</div>
			</form>

			<div id="menuSplitter"></div>
		</body>
		</html>
