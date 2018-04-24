
<head>
</head>

<p><span class="auto-style1"><strong>Private Ethereum Chain for fun and profit</strong></span><br>
Primary objective: create a private ethereum network and blockchain.</p>
<p><strong>High level goals</strong></p>
<ul>
	<li>
	<p class="auto-style1">Develop a technical recipe for the private chain 
implementation</p>
	</li>
	<li>
	<p class="auto-style1">Define the coin/token in that chain</p>
	</li>
	<li>
	<p class="auto-style1">Develop and execute 
contracts</p>
	</li>
	<li>
	<p class="auto-style1">Learn something from doing all of the above<br></p>
	</li>
</ul>
<p><strong>The recipe looks like this:</strong></p>
<ul>
	<li>
	<p class="auto-style1">Get some OS (Ubuntu seems to be a preference and 16.04 
server works well)</p>
	</li>
	<li>
	<p class="auto-style1">Install geth (Ethereum command line)</p>
	</li>
	<li>
	<p class="auto-style1">Create several 
user accounts in the OS to run the nodes (one node per user)</p>
	</li>
	<li>
	<p class="auto-style1">Configure/create 
a genesis block (genesis.json file) with a unique nonce</p>
	</li>
	<li>
	<p class="auto-style1">Create a rendezvous 
point via a public node to be added as a peer (AWC EC2) </p>
	</li>
	<li>
	<p class="auto-style1">Starting up your 
member nodes and connect to the public node </p>
	</li>
	<li>
	<p class="auto-style1">Optional: install 
eth-net-intelligence-api for a web console to monitor the network and subscribe 
to public netstats</p>
	</li>
	<li>
	<p class="auto-style1">Optional: Install Mist wallet in PC and connect to your 
nodes. This allows to execute contracts</p>
	</li>
	<li>
	<p class="auto-style1">Make some ether by mining</p>
	</li>
	<li>
	<p class="auto-style1">Execute 
transfers and watch them go</p>
	</li>
</ul>
<p class="auto-style2"><strong>Starting Point</strong>: Generic Node 
configuration (index.html file)<br></p>
<p><strong>Ubuntu Notes</strong></p>
<ul>
	<li>
	<p class="auto-style1">If you have a windows/mac box laying around, VMWare 
workstation is free and does the job: 
	<a href="https://my.vmware.com/web/vmware/info?slug=desktop_end_user_computing/vmware_workstation/10_0">https://my.vmware.com/web/vmware/info?slug=desktop_end_user_computing/vmware_workstation/10_0</a>
	</p>
	</li>
	<li>
	<p class="auto-style1">If using Ubuntu (recommended) ubuntu-17.04-server-amd64 is a good choice for 
PCs with VMWare .Is quite small and wont take much on a VM.<br></p>
	</li>
	<li>
	<p class="auto-style1">For VMWare 
workstation, setup the box in bridge network mode instead of NAT so it gets its 
own IP (if you have a router dishing out IPs via DHCP)<br></p>
	</li>
	<li>
	<p class="auto-style1">If possible assign a 
fix IP to the VM in your local network<br></p>
	</li>
	<li>
	<p class="auto-style1">If using VMWare with some Linux get 
Filezilla to move stuff across using sftp. There is a chance copy and past will 
not work with the Linux guest OS, so file moving will help<br></p>
	</li>
	<li>
	<p class="auto-style1">The etherum hashes 
are 1GB in size so size filesystems as per the number of nodes (1GB minimum per 
running node)<br></p>
	</li>
	<li>
	<p class="auto-style1">Ubuntu server may not have SFTP/SSH enabled/installed by 
default. Some work is required to get them running.<br></p>
	</li>
	<li>
	<p class="auto-style1">Use a regular user 
account (default install account) and do the geth ethereum install with SUDO. 
That way all of the Ethereum data files will be with a local user account, which 
would allow to create more nodes under different users<br></p>
	</li>
	<li>
	<p class="auto-style1">Ubuntu server does not 
have out of the box tools for network management. May need to install them</p>
	</li>
</ul>
<p><strong>Connectivity</strong></p>
<p class="auto-style1">If you wish to log into your Linux/Ubuntu machine from 
another computer to run your Ethereum installation and configuration commands, 
use one of the following methods: </p>
<ul>
	<li>
	<p class="auto-style1">For Mac OS: you probably have SSH directly 
from terminal. If not then google how to install that package.<br></p>
	</li>
	<li>
	<p class="auto-style1">For Windows 
10, enable Developer mode under Settings-&gt;Update &amp; Security-&gt;For developers. 
Then open up CMD from the startup menu by typing CMD and then Enter. then run 
the command &quot;bash&quot;. This will install the Ubuntu package and give you command 
line tools to get the job done. Here's a nifty guide.<br></p>
	</li>
	<li>
	<p class="auto-style1">For Windows 7, install 
Putty from www.putty.org. This client has SSH capabilities and emulates Linux 
shells. Note Ubutuntu server may not have SSH daemon enabled by default so you 
may need to install OpenSSH (sudo apt-get install openssh-server). <br></p>
	</li>
</ul>
<p class="auto-style1">You will 
need to find the IP the VM got in bridge mode (recommended mode). Ifconfig 
command may not be present by default so install net tools (sudo apt install 
net-tools). Example</p>
<ul>
	<li>
	<p class="auto-style1">Ifconfig: sudo apt install net-tools</p>
	</li>
	<li>
	<p class="auto-style1">Open SSH: sudo 
apt install openssh-server<br></p>
	</li>
</ul>
<p><strong>Ethereum general install notes</strong></p>
<p class="auto-style1">Installing in Ubuntu: 
https://github.com/ethereum/go-ethereum/wiki/Installation-Instructions-for-Ubuntu
<br>Installing in Windows: 
https://github.com/ethereum/go-ethereum/wiki/Installation-instructions-for-Windows</p>
