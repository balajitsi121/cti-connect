{{!-- Edited for Posh Theme --}}

{{#if showExtendedMenu}}
	<a class="header-profile-welcome-link" href="#" data-toggle="dropdown">
		<i class="header-profile-welcome-user-icon"></i>
		{{translate 'Welcome <strong class="header-profile-welcome-link-name">$(0)</strong>' displayName}}
	</a>

	{{#if showMyAccountMenu}}
		<ul class="header-profile-menu-myaccount-container">
			<li data-view="Header.Menu.MyAccount"></li>
		</ul>
	{{/if}}

{{else}}

	{{#if showLoginMenu}}
		{{#if showLogin}}
			<div class="header-profile-menu-login-container">
				<a class="Header-profile-toggle-btn" data-toggle="dropdown" href="#">
					<svg xmlns="http://www.w3.org/2000/svg" width="19.159" height="22.467" viewBox="0 0 19.159 22.467">
  						<g id="Group_147" data-name="Group 147" transform="translate(1 1)">
    						<path id="Path_866" data-name="Path 866" d="M22.159,23.035a1,1,0,0,1-1-1V20.78A7.691,7.691,0,0,0,13.579,13,7.691,7.691,0,0,0,6,20.78v1.254a1,1,0,0,1-2,0V20.78A9.692,9.692,0,0,1,13.579,11a9.692,9.692,0,0,1,9.579,9.78v1.254A1,1,0,0,1,22.159,23.035Z" transform="translate(-5 -1.567)"/>
    						<path id="Path_867" data-name="Path 867" d="M12.816,15.035A5.926,5.926,0,0,1,7,9.017,5.926,5.926,0,0,1,12.816,3a5.926,5.926,0,0,1,5.816,6.017A5.926,5.926,0,0,1,12.816,15.035ZM12.816,5A3.925,3.925,0,0,0,9,9.017a3.925,3.925,0,0,0,3.816,4.017,3.925,3.925,0,0,0,3.816-4.017A3.925,3.925,0,0,0,12.816,5Z" transform="translate(-4.237 -4)"/>
  						</g>
					</svg>
				</a>

						<ul class="header-profile-menu-myaccount-container-new">
							{{#if extraHeaderProfileView.welcometext}}<li class="header-profile-message">{{extraHeaderProfileView.welcometext}}</li>{{/if}}
							<li>
								<a class="header-profile-login-link" data-touchpoint="login" data-hashtag="login-register" href="#">
									{{translate 'Login'}}
								</a>
							</li>
							{{#if showRegister}}
								<li>
									<a class="header-profile-register-link" data-touchpoint="register" data-hashtag="login-register" href="#">
										{{translate 'Register'}}
									</a>
								</li>
							{{/if}}
						</ul>

			</div>
		{{/if}}
	{{else}}
		<a class="header-profile-loading-link">
			<i class="header-profile-loading-icon"></i>
			<span class="header-profile-loading-indicator"></span>
		</a>
	{{/if}}

{{/if}}



{{!----
Use the following context variables when customizing this template:

	showExtendedMenu (Boolean)
	showLoginMenu (Boolean)
	showLoadingMenu (Boolean)
	showMyAccountMenu (Boolean)
	displayName (String)
	showLogin (Boolean)
	showRegister (Boolean)

----}}

