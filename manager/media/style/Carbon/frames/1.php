<?php
if(IN_MANAGER_MODE!="true") die("<b>INCLUDE_ORDERING_ERROR</b><br /><br />Please use the MODX Content Manager instead of accessing this file directly.");
$_SESSION['browser'] = (strpos($_SERVER['HTTP_USER_AGENT'],'MSIE 1')!==false) ? 'legacy_IE' : 'modern';
$mxla = $modx_lang_attribute ? $modx_lang_attribute : 'en';
if(!isset($modx->config['manager_menu_height'])) $modx->config['manager_menu_height'] = 'auto';
if(!isset($modx->config['manager_tree_width']))  $modx->config['manager_tree_width']  = '300';
$modx->invokeEvent('OnManagerPreFrameLoader',array('action'=>$action));
?>
<!DOCTYPE html>
<html <?php echo (isset($modx_textdir) && $modx_textdir ? 'dir="rtl" lang="' : 'lang="').$mxla.'" xml:lang="'.$mxla.'"'; ?>>
<head>
	<title><?php echo $site_name?> - (MODX CMS Manager)</title>
	<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $modx_manager_charset?>" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="media/style/<?php echo $modx->config['manager_theme']; ?>/style.css" />
    <link rel="shortcut icon" type="image/x-icon" href="media/style/<?php echo $modx->config['manager_theme']; ?>/favicon.ico" />
    <script src="media/script/mootools/mootools.js" type="text/javascript"></script>
    <script src="media/script/mootools/moodx.js" type="text/javascript"></script>
    <style type="text/css">
        html {
            overflow: hidden;
        }
    </style>
</head>
<body id="manager" onclick="return document.getElementById('treeiframe').contentWindow.hideMenu(1);">
    <div id="pupup-context-placeholder"></div>
    <div id="min-with-hint">
        К сожалению ваше устройство <b>не может</b> работать с админимстративной панелью.
    </div>
    <div id="resizer">
        <a id="hideMenu" onclick="mainMenu.toggleTreeFrame();"></a>
    </div>
    <div id="resizer2">
        <a id="hideTopMenu" onclick="mainMenu.toggleMenuFrame();"></a>
    </div>
    <div id="mainMenu">
        <iframe name="mainMenu" src="index.php?a=1&amp;f=menu" scrolling="no" frameborder="0" noresize="noresize"></iframe>
    </div>
    <div id="tree">
        <iframe name="tree" id="treeiframe" src="index.php?a=1&amp;f=tree" scrolling="no" frameborder="0" onresize="mainMenu.resizeTree();"></iframe>
    </div>

    <div id="main">
        <iframe name="main" src="index.php?a=2" scrolling="auto" frameborder="0" onload="if (mainMenu.stopWork()) mainMenu.stopWork();"></iframe>
    </div>
    
    <script type="text/javascript">
        function globalhidecontext(){return document.getElementById("treeiframe").contentWindow.hideMenu(1)}function globalhidecontextdo(e){e.contentWindow.document.onclick=function(){globalhidecontext()},e.contentWindow.document.oncontextmenu=function(){globalhidecontext()}}function formstyling(e){for(var t=e.contentWindow.document.getElementsByTagName("input"),n=0;n<t.length;n++)switch(t[n].getAttribute("type")){case"radio":var o=e.contentWindow.document.createElement("span");if(null!=t[n].getAttribute("checked"))var c="input-radio-wrapper checked";else var c="input-radio-wrapper";o.setAttribute("class",c),o.innerHTML=t[n].outerHTML,t[n].parentNode.replaceChild(o,t[n]);break;case"checkbox":var o=e.contentWindow.document.createElement("span");if(t[n].checked)var c="input-checkbox-wrapper checked";else var c="input-checkbox-wrapper";o.setAttribute("class",c),o.innerHTML=t[n].outerHTML,t[n].parentNode.replaceChild(o,t[n]);break;case"file":var o=e.contentWindow.document.createElement("span");o.setAttribute("class","input-file-wrapper"),o.innerHTML=t[n].outerHTML,t[n].parentNode.replaceChild(o,t[n])}}function formelechange(e){switch(e.getAttribute("type")){case"radio":var t=e.getAttribute("name"),n=document.getElementsByTagName("iframe")[2].contentWindow.document.getElementsByName(t);for(i=0;i<n.length;i++)0==n[i].checked?n[i].parentNode.setAttribute("class","input-radio-wrapper"):n[i].parentNode.setAttribute("class","input-radio-wrapper checked");break;case"checkbox":var o=document.getElementsByTagName("iframe")[2].contentWindow.document.getElementsByTagName("input");for(j=0;j<o.length;j++)"checkbox"==o[j].getAttribute("type")&&(0!=o[j].checked?o[j].parentNode.setAttribute("class","input-checkbox-wrapper checked"):o[j].parentNode.setAttribute("class","input-checkbox-wrapper"))}}function formstyletracking(e){for(var t=e.contentWindow.document.getElementsByTagName("input"),n=0;n<t.length;n++)t[n].onchange=function(){formelechange(this)}}var frames=document.getElementsByTagName("iframe");frames[0].onload=function(){var e=frames[0];globalhidecontextdo(e)},frames[2].onload=function(){var e=frames[2];globalhidecontextdo(e),formstyling(e),formstyletracking(e)};
    </script>
    
    <script language="JavaScript" type="text/javascript">
        var _startY = 85;
        var _dragElement;
        var _oldZIndex = 999;
        var _left;
        var mask = document.createElement('div');
        mask.id = 'mask_resizer';
        mask.style.zIndex = _oldZIndex;

        InitDragDrop();

        function InitDragDrop() {
            document.getElementById('resizer').onmousedown = OnMouseDown;
            document.getElementById('resizer').onmouseup = OnMouseUp
        }

        function OnMouseDown(e) {
            if (e == null) e = window.event;
            _dragElement = e.target != null ? e.target : e.srcElement;
            if ((e.button == 1 && window.event != null || e.button == 0) && _dragElement.id == 'resizer') {
                _oldZIndex = _dragElement.style.zIndex;
                _dragElement.style.zIndex = 10000;
                _dragElement.style.background = '#a4b9cc';
                document.body.appendChild(mask)
                document.onmousemove = OnMouseMove;
                document.body.focus();
                document.onselectstart = function () {
                    return false
                };
                _dragElement.ondragstart = function () {
                    return false
                };
                return false
            }
        }

        function ExtractNumber(value) {
            var n = parseInt(value);
            return n == null || isNaN(n) ? 0 : n
        }

        function OnMouseMove(e) {
            if (e == null) var e = window.event;
            _dragElement.style.left = e.clientX + 'px';
            _dragElement.style.top = _startY + 'px';
            document.getElementById('tree').style.width = e.clientX + 'px';
            document.getElementById('main').style.left = e.clientX + 'px'
        }

        function OnMouseUp(e) {
            if (_dragElement != null) {
                _dragElement.style.zIndex = _oldZIndex;
                _dragElement.style.background = 'transparent';
                _dragElement.ondragstart = null;
                _dragElement = null;
                document.body.removeChild(mask);
                document.onmousemove = null;
                document.onselectstart = null
            }
        }
    </script>
    <?php
    $modx->invokeEvent('OnManagerFrameLoader',array('action'=>$action));
    ?>
</body>
</html>
<?php
