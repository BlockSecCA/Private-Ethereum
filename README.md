
<head>
</head>

<p><span class="auto-style1"><strong>Private Ethereum Chain for fun and profit</strong></span><br>
Primary objective: create a private ethereum network and blockchain.</p>
<p><strong>High level goals</strong></p>
<p class="auto-style2">Develop a technical recipe for the private chain 
implementation<br>Define the coin/token in that chain<br>Develop and execute 
contracts<br>Learn something from doing all of the above<br></p>
<p><strong>The recipe looks like this:</strong></p>
<p class="auto-style2">Get some OS (Ubuntu seems to be a preference and 16.04 
server works well)<br>Install geth (Ethereum command line)<br>Create several 
user accounts in the OS to run the nodes (one node per user)<br>Configure/create 
a genesis block (genesis.json file) with a unique nonce<br>Create a rendezvous 
point via a public node to be added as a peer (AWC EC2) <br>Starting up your 
member nodes and connect to the public node <br>Optional: install 
eth-net-intelligence-api for a web console to monitor the network and subscribe 
to public netstats<br>Optional: Install Mist wallet in PC and connect to your 
nodes. This allows to execute contracts<br>Make some ether by mining<br>Execute 
transfers and watch them go</p>
<p class="auto-style2">Starting Point: Generic Node configuration (index.html 
file)<br></p>
<p><strong>Ubuntu Notes</strong></p>
<p class="auto-style2">If you have a windows/mac box laying around, VMWare 
workstation is free and does the job: 
https://my.vmware.com/web/vmware/info?slug=desktop_end_user_computing/vmware_workstation/10_0
<br>If using Ubuntu (recommended) ubuntu-17.04-server-amd64 is a good choice for 
PCs with VMWare .Is quite small and wont take much on a VM.<br>For VMWare 
workstation, setup the box in bridge network mode instead of NAT so it gets its 
own IP (if you have a router dishing out IPs via DHCP)<br>If possible assign a 
fix IP to the VM in your local network<br>If using VMWare with some Linux get 
Filezilla to move stuff across using sftp. There is a chance copy and past will 
not work with the Linux guest OS, so file moving will help<br>The etherum hashes 
are 1GB in size so size filesystems as per the number of nodes (1GB minimum per 
running node)<br>Ubuntu server may not have SFTP/SSH enabled/installed by 
default. Some work is required to get them running.<br>Use a regular user 
account (default install account) and do the geth ethereum install with SUDO. 
That way all of the Ethereum data files will be with a local user account, which 
would allow to create more nodes under different users<br>Ubuntu server does not 
have out of the box tools for network management. May need to install them</p>
<p><strong>Connectivity</strong></p>
<p class="auto-style2">If you wish to log into your Linux/Ubuntu machine from 
another computer to run your Ethereum installation and configuration commands, 
use one of the following methods: <br>For Mac OS: you probably have SSH directly 
from terminal. If not then google how to install that package.<br>For Windows 
10, enable Developer mode under Settings-&gt;Update &amp; Security-&gt;For developers. 
Then open up CMD from the startup menu by typing CMD and then Enter. then run 
the command &quot;bash&quot;. This will install the Ubuntu package and give you command 
line tools to get the job done. Here's a nifty guide.<br>For Windows 7, install 
Putty from www.putty.org. This client has SSH capabilities and emulates Linux 
shells. Note Ubutuntu server may not have SSH daemon enabled by default so you 
may need to install OpenSSH (sudo apt-get install openssh-server). <br>You will 
need to find the IP the VM got in bridge mode (recommended mode). Ifconfig 
command may not be present by default so install net tools (sudo apt install 
net-tools). Example<br>Ifconfig: sudo apt install net-tools<br>Open SSH: sudo 
apt install openssh-server<br></p>
<p><strong>Ethereum general install notes</strong></p>
<p class="auto-style2">Installing in Ubuntu: 
https://github.com/ethereum/go-ethereum/wiki/Installation-Instructions-for-Ubuntu
<br>Installing in Windows: 
https://github.com/ethereum/go-ethereum/wiki/Installation-instructions-for-Windows</p>
