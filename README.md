<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<style type="text/css">
.auto-style1 {
	font-size: smaller;
}
</style>
</head>
<h3 id="sites-page-title-header" align="left" style="font-size: 1.8em; font-weight: normal; margin: 0px; padding-left: 10px; padding-right: 10px; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-stretch: normal; line-height: normal; font-family: Verdana, Helvetica, Arial, sans-serif; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" xmlns="http://www.w3.org/1999/xhtml">
<span id="sites-page-title" dir="ltr" style="outline: none;" tabindex="-1">
Private Ethereum Chain for fun and profit</span></h3>
<div id="sites-canvas-main" class="sites-canvas-main" style="background-color: rgb(255, 255, 255); padding-top: 15px; overflow: hidden; min-height: 150px; padding-bottom: 5px; color: rgb(0, 0, 0); font-family: Verdana, Helvetica, Arial, sans-serif; font-size: 13.3333px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
	<div id="sites-canvas-main-content">
		<table cellspacing="0" class="sites-layout-name-one-column sites-layout-hbox" style="width: 1168px; table-layout: fixed; margin: 0px;" xmlns="http://www.w3.org/1999/xhtml">
			<tr>
				<td class="sites-layout-tile sites-tile-name-content-1" style="vertical-align: top; padding: 10px;">
				<div dir="ltr">
					<div>
						<font size="2" style="background-color: transparent;">
						<b>Primary objective</b></font><span style="background-color: transparent; font-size: 10pt;">:&nbsp;create 
						a private ethereum network and blockchain.</span></div>
					<div>
						<br></div>
					<div>
						<font size="2"><b>High level goals</b></font></div>
					<div>
						<ul>
							<li class="auto-style1">Develop a technical recipe 
							for the private chain implementation</li>
							<li class="auto-style1">Define the coin/token in 
							that chain</li>
							<li class="auto-style1">Develop and execute 
							contracts</li>
							<li class="auto-style1">Learn something from doing 
							all of the above</li>
						</ul>
						<div>
							<span style="background-color: transparent; font-size: 10pt;">
							The recipe looks like this:</span></div>
					</div>
					<div>
						<ul>
							<li class="auto-style1">Get some OS (Ubuntu seems to 
							be a preference and 16.04 server works well)</li>
							<li class="auto-style1">Install geth (Ethereum 
							command line)</li>
							<li class="auto-style1">Create several user accounts 
							in the OS to run the nodes (one node per user)</li>
							<li class="auto-style1">Configure/create a genesis 
							block (genesis.json file) with a unique nonce</li>
							<li class="auto-style1">Create a rendezvous point 
							via a public node to be added as a peer (AWC EC2) &nbsp;</li>
							<li class="auto-style1">Starting up your member 
							nodes and connect to the public node&nbsp;</li>
							<li class="auto-style1">Optional: install 
							eth-net-intelligence-api for a web console to 
							monitor the network and subscribe to public netstats</li>
							<li class="auto-style1">Optional: Install Mist 
							wallet in PC and connect to your nodes. This allows 
							to execute contracts</li>
							<li class="auto-style1">Make some ether by mining</li>
							<li class="auto-style1">Execute transfers and watch 
							them go</li>
						</ul>
					</div>
					<div>
						<div style="font-size: 13.3333px;">
							<b>Next Step: Node configuration</b>&nbsp;</div>
						<div style="font-size: 13.3333px;">
							<ul>
								<li>
								<span style="background-color: transparent; font-size: 10pt;">
								Node config:&nbsp;</span><b style="background-color: transparent; font-size: 10pt;"><u><a href="../../../OneDrive/OneChain/Private%20Ethereum%20Chain/generic-1-node-chain/generic-1-node-chain.html" style="color: rgb(85, 26, 139); text-decoration: none; background-color: transparent; font-size: 10pt;">Generic 
								node config</a></u></b></li>
							</ul>
						</div>
					</div>
					<div>
						<div style="font-size: 13.3333px;">
							<b>Ubuntu Notes</b></div>
						<ul style="font-size: 13.3333px;">
							<li>If you have a windows/mac box laying around, 
							VMWare workstation is free and does the job:&nbsp;<a href="https://my.vmware.com/web/vmware/info?slug=desktop_end_user_computing/vmware_workstation/10_0" style="color: rgb(85, 26, 139); text-decoration: none; background-color: transparent; font-size: 10pt;">https://my.vmware.com/web/vmware/info?slug=desktop_end_user_computing/vmware_workstation/10_0<span style="background-color: transparent; font-size: 10pt;">&nbsp;</span></a></li>
						</ul>
						<ul style="font-size: 13.3333px;">
							<li>If using Ubuntu (recommended) 
							ubuntu-17.04-server-amd64 is a good choice for PCs 
							with VMWare .Is quite small and wont take much on a 
							VM.</li>
						</ul>
						<ul style="font-size: 13.3333px;">
							<li style="font-size: 13.3333px;">For VMWare 
							workstation, setup the box in bridge network mode 
							instead of NAT so it gets its own IP (if you have a 
							router dishing out IPs via DHCP)</li>
						</ul>
						<ul>
							<li><span style="font-size: 13.3333px;">If possible 
							assign a fix IP to the VM in your local network</span></li>
						</ul>
						<ul>
							<li style="font-size: 13.3333px;">If using VMWare 
							with some Linux get Filezilla to move stuff across 
							using sftp. There is a chance copy and past will not 
							work with the Linux guest OS, so file moving will 
							help</li>
						</ul>
						<ul style="font-size: 13.3333px;">
							<li>The etherum hashes are 1GB in size so size 
							filesystems as per the number of nodes (1GB minimum 
							per running node)</li>
						</ul>
						<ul style="font-size: 13.3333px;">
							<li>Ubuntu server may not have SFTP/SSH 
							enabled/installed by default. Some work is required 
							to get them running.</li>
						</ul>
						<ul>
							<li style="font-size: 13.3333px;">Use a regular user 
							account (default install account) and do the geth 
							ethereum install with SUDO. That way all of the 
							Ethereum data files will be with a local user 
							account, which would allow to create more nodes 
							under different users</li>
						</ul>
					</div>
					<div>
						<ul>
							<li><span style="font-size: 13.3333px;">Ubuntu 
							server does not have out of the box tools for 
							network management. May need to install them</span></li>
						</ul>
					</div>
					<div>
						<br></div>
					<div>
						<div style="font-size: 13.3333px;">
							<b>Connectivity</b></div>
						<span style="font-size: 10pt; background-color: transparent;">
						If you wish to log into your Linux/Ubuntu machine from 
						another computer to run your Ethereum installation and 
						configuration commands, use one of the following 
						methods:&nbsp;</span><br style="font-size: 13.3333px;">
						<ul style="font-size: 13.3333px;">
							<li>For Mac OS: you probably have SSH directly from 
							terminal. &nbsp;If not then google how to install that 
							package.</li>
						</ul>
						<ul style="font-size: 13.3333px;">
							<li>For Windows 10, enable Developer mode under 
							Settings-&gt;Update &amp; Security-&gt;For developers. &nbsp;Then 
							open up CMD from the startup menu by typing CMD and 
							then Enter. &nbsp;then run the command &quot;bash&quot;. &nbsp;This will 
							install the Ubuntu package and give you command line 
							tools to get the job done. Here's a nifty&nbsp;<a href="https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/" style="color: rgb(85, 26, 139); text-decoration: none; background-color: transparent; font-size: 10pt;">guide</a><span style="background-color: transparent; font-size: 10pt;">.</span></li>
						</ul>
						<ul style="font-size: 13.3333px;">
							<li>For Windows 7, install Putty from www.putty.org. 
							&nbsp;This client has SSH capabilities and emulates Linux 
							shells. Note Ubutuntu server may not have SSH daemon 
							enabled by default so you may need to install 
							OpenSSH (sudo apt-get install openssh-server).&nbsp;</li>
						</ul>
						<ul style="font-size: 13.3333px;">
							<li>You will need to find the IP the VM got in 
							bridge mode (recommended mode). Ifconfig command may 
							not be present by default so install net tools (sudo 
							apt install net-tools). Example<ul>
								<li>Ifconfig: sudo apt install net-tools</li>
								<li>Open SSH: sudo apt install openssh-server</li>
							</ul>
							</li>
						</ul>
					</div>
					<div>
						<b style="background-color: transparent; font-size: 10pt;">
						<span style="background-color: transparent; font-size: 10pt;">
						Ethereum general install notes</span></b></div>
					<div>
						<ul>
							<li>Installing in Ubuntu:&nbsp;<a href="https://github.com/ethereum/go-ethereum/wiki/Installation-Instructions-for-Ubuntu" style="color: rgb(85, 26, 139); text-decoration: none; background-color: transparent; font-size: 10pt;">https://github.com/ethereum/go-ethereum/wiki/Installation-Instructions-for-Ubuntu</a><span style="background-color: transparent; font-size: 10pt;">&nbsp;</span></li>
						</ul>
						<ul>
							<li>Installing in Windows:&nbsp;<a href="https://github.com/ethereum/go-ethereum/wiki/Installation-instructions-for-Windows" style="color: rgb(85, 26, 139); text-decoration: none; background-color: transparent; font-size: 10pt;">https://github.com/ethereum/go-ethereum/wiki/Installation-instructions-for-Windows</a></li>
						</ul>
					</div>
				</div>
				</td>
			</tr>
		</table>
	</div>
</div>
