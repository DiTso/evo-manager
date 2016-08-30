<!-- welcome -->
<div>
	<script type="text/javascript" src="media/script/tabpane.js"></script>
	<div class="tab-pane" id="welcomePane" style="border:0">
    <script type="text/javascript">
        tpPane = new WebFXTabPane(document.getElementById( "welcomePane" ),false);
    </script>

		<!-- home tab -->
		<div class="tab-page" id="tabhome" style="padding-left:0; padding-right:0;">
            [+OnManagerWelcomePrerender+]	
			<h2 class="tab">[+site_name+]</h2>
			<script type="text/javascript">tpPane.addTabPage( document.getElementById( "tabhome" ) );</script>
			<div class="sectionHeader" style="position: relative; margin-top: -20px">[+welcome_title+]</div>
                <div class="sectionBody" style="margin-bottom: -20px;">
                    <img src='media/style/[+theme+]/images/logo.svg' alt='[+logo_slogan+]' class="welcome-logo" />
                    <h1 style="margin: 10px 0 20px;">[+site_name+]</h1>
                    <p>[+welcome_title+]</p>
                    [+OnManagerWelcomeHome+]
                    <ul class="welcome-big-buttons">
                        <li><span class="wm_button">[+SecurityIcon+]</span></li>
                        <li><span class="wm_button">[+WebUserIcon+]</span></li>
                        <li><span class="wm_button">[+ModulesIcon+]</span></li>
                        <li><span class="wm_button">[+ResourcesIcon+]</span></li>
                        <li><span class="wm_button">[+BackupIcon+]</span></li>
                    </ul>
                </div>
            <div class="wrapper halfwidth">
            <div class="sectionHeader " style="">[+modx_news_title+]</div>
            <div class="sectionBody halfwidth" style="">
				[+modx_news_content+]
			</div>
            </div>
            <div class="wrapper halfwidth">
            <div class="sectionHeader halfwidth" style="">[+modx_security_notices_title+]</div>
            <div class="sectionBody halfwidth" style="">
				[+modx_security_notices_content+]
			</div>
            </div>
        </div>
		
		<!-- system check -->
		<div class="tab-page" id="tabcheck" style="display:[+config_display+]; padding-left:0; padding-right:0;">
			<h2 class="tab" style="display:[+config_display+]"><strong>[+settings_config+]</strong></h2>
			<script type="text/javascript"> if('[+config_display+]'=='block') tpPane.addTabPage( document.getElementById( "tabcheck" ) );</script>
			<div class="sectionHeader" style="position: relative; margin-top: -20px">[+configcheck_title+]</div>
			<div class="sectionBody" style="margin-bottom: -20px;">
				[+config_check_results+]
			</div>
		</div>

		<!-- recent activities -->
		<div class="tab-page" id="tabAct" style="padding-left:0; padding-right:0">
			<h2 class="tab">[+recent_docs+]</h2>
			<script type="text/javascript">tpPane.addTabPage( document.getElementById( "tabAct" ) );</script>
			<div class="sectionHeader" style="position: relative; margin-top: -20px">[+activity_title+]</div><div class="sectionBody" style="margin-bottom: -20px;">
				[+RecentInfo+]
			</div>
		</div>

		<!-- user info -->
		<div class="tab-page" id="tabYour" style="padding-left:0; padding-right:0">
			<h2 class="tab">[+info+]</h2>
			<script type="text/javascript">tpPane.addTabPage( document.getElementById( "tabYour" ) );</script>
			<div class="sectionHeader" style="position: relative; margin-top: -20px">[+yourinfo_title+]</div><div class="sectionBody" style="margin-bottom: -20px;">
				[+UserInfo+]
			</div>
		</div>

		<!-- online info -->
		<div class="tab-page" id="tabOnline" style="padding-left:0; padding-right:0">
			<h2 class="tab">[+online+]</h2>
			<script type="text/javascript">tpPane.addTabPage( document.getElementById( "tabOnline" ) );</script>
			<div class="sectionHeader" style="position: relative; margin-top: -20px">[+onlineusers_title+]</div><div class="sectionBody" style="margin-bottom: -20px;">
				[+OnlineInfo+]
			</div>
		</div>
        [+OnManagerWelcomeRender+]
	</div>
</div>