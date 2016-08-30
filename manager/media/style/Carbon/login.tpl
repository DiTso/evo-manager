<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
    <title>MODX CMF Manager Login</title>
    <meta http-equiv="content-type" content="text/html; charset=[+modx_charset+]" />
    <meta name="robots" content="noindex, nofollow" />
    <link rel="stylesheet" href="media/style/[+theme+]/style.css" />
    <script type="text/javascript">
        function formstyling(){for(var e=document.getElementsByTagName("input"),t=0;t<e.length;t++)switch(e[t].getAttribute("type")){case"radio":var r=document.createElement("span");if(null!=e[t].getAttribute("checked"))var a="input-radio-wrapper checked";else var a="input-radio-wrapper";r.setAttribute("class",a),r.innerHTML=e[t].outerHTML,e[t].parentNode.replaceChild(r,e[t]);break;case"checkbox":var r=document.createElement("span");if(null!=e[t].getAttribute("checked"))var a="input-checkbox-wrapper checked";else var a="input-checkbox-wrapper";r.setAttribute("class",a),r.innerHTML=e[t].outerHTML,e[t].parentNode.replaceChild(r,e[t]);break;case"file":var r=document.createElement("span");r.setAttribute("class","input-file-wrapper"),r.innerHTML=e[t].outerHTML,e[t].parentNode.replaceChild(r,e[t])}}function formelechange(e){switch(e.getAttribute("type")){case"radio":var t=e.getAttribute("name"),r=document.getElementsByName(t);for(i=0;i<r.length;i++)0==r[i].checked?r[i].parentNode.setAttribute("class","input-radio-wrapper"):r[i].parentNode.setAttribute("class","input-radio-wrapper checked");break;case"checkbox":0==e.checked?e.parentNode.setAttribute("class","input-checkbox-wrapper"):e.parentNode.setAttribute("class","input-checkbox-wrapper checked")}}function formstyletracking(){for(var e=document.getElementsByTagName("input"),t=0;t<e.length;t++)e[t].onchange=function(){formelechange(this)}}window.onload=function(){var e=this;formstyling(e),formstyletracking(e)};
    </script>
    <script src="media/script/mootools/mootools.js" type="text/javascript"></script>
    <script type="text/javascript">
    /* <![CDATA[ */
        if (top.frames.length!=0) {
            top.location=self.document.location;
        }
        
        window.addEvent('domready', function() {
            $('submitButton').addEvent('click', function(e) {
                 e = new Event(e).stop();
                 params = 'ajax=1&' + $('loginfrm').toQueryString();
                 url = 'processors/login.processor.php';
                 new Ajax(url,
                    {
                        method: 'post',
                        postBody: params,
                        onComplete:ajaxReturn
                    }
                ).request();
                $$('input').setProperty('readonly', 'readonly');
            });  
			
			// Initial focus
			if ($('username').value != '') {
				$('password').focus();
			} else {
				$('username').focus();
			}
			   
        });

        function ajaxReturn(response) {
            var header = response.substr(0,9);
            if (header.toLowerCase()=='location:') top.location = response.substr(10);
            else {
                var cimg = $('captcha_image');
                if (cimg) {
                	cimg.src = 'includes/veriword.php?rand=' + Math.random();
                }
                $$('input').removeProperty('readonly');
                alert(response);
            }
        }
    /* ]]> */
    </script>
</head>
<body id="login">
<div id="mx_loginbox">
    <form method="post" name="loginfrm" id="loginfrm" action="processors/login.processor.php">
    <!-- anything to output before the login box via a plugin? -->
    [+OnManagerLoginFormPrerender+]
        <div class="sectionHeader">
			<a class="logo" href="../" title="[+site_name+]">
				<img src="media/style/[+theme+]/images/logo.svg" width="160" alt="[+site_name+]" id="logo" />
			</a>
		</div>
        <div class="sectionBody">
            <p>
            <label for="username">[+username+]</label><br />
            <input type="text" class="text" name="username" id="username" tabindex="1" value="[+uid+]" />
            </p>
            <p>
            <label for="password">[+password+]</label><br />
            <input type="password" class="text" name="password" id="password" tabindex="2" value="" />
            </p>
            <p class="caption">[+login_captcha_message+]</p>
            <div>[+captcha_image+]</div>
            [+captcha_input+]
            <p>
            <input type="checkbox" id="rememberme" name="rememberme" tabindex="4" value="1" class="checkbox" [+remember_me+] />
			<label for="rememberme" style="cursor:pointer" class="remtext">[+remember_username+]</label>
            <input type="submit" class="login" id="submitButton" value="[+login_button+]" />
            </p>
            <!-- anything to output before the login box via a plugin ... like the forgot password link? -->
            [+OnManagerLoginFormRender+]
        </div>
    </form>
</div>
<!-- convert this to a language include -->
<div class="gpl">&copy; 2005-2015 by the <a href="http://modx.com/" target="_blank">MODX</a>. <strong>MODX</strong>&trade; is licensed under the GPL.</div>
</body>
</html>