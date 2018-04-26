# Private Ethereum Chain for fun and profit

## Primary objective: create a private ethereum network and blockchain

### High level goals

* Develop a technical recipe for the private chain implementation

* Define the coin/token in that chain

* Develop and execute contracts

* Learn something from doing all of the above

### The recipe looks like this

* Get some OS (Ubuntu seems to be a preference and 16.04 server works well)

* Install geth (Ethereum command line)

* Create several user accounts in the OS to run the nodes (one node per user)

* Configure/create a genesis block (genesis.json file) with a unique nonce

* Create a rendezvous point via a public node to be added as a peer (AWC EC2)

* Starting up your member nodes and connect to the public node

* Optional: install eth-net-intelligence-api for a web console to monitor the network and subscribe to public netstats

* Optional: Install Mist wallet in PC and connect to your nodes. This allows to execute contracts

* Make some ether by mining

* Execute transfers and watch them go

## Starting Point: Generic Node configuration (index.html)

### Ubuntu Notes

* If you have a windows/mac box laying around, VMWare workstation is free and does the job: <https://my.vmware.com/web/vmware/info?slug=desktop_end_user_computing/vmware_workstation/10_0>

* If using Ubuntu (recommended) ubuntu-17.04-server-amd64 is a good choice for PCs with VMWare .Is quite small and wont take much on a VM.

* For VMWare workstation, setup the box in bridge network mode instead of NAT so it gets its own IP (if you have a router dishing out IPs via DHCP)

* If possible assign a fix IP to the VM in your local network

* If using VMWare with some Linux get Filezilla to move stuff across using sftp. There is a chance copy and past will not work with the Linux guest OS, so file moving will help

* The etherum hashes are 1GB in size so size filesystems as per the number of nodes (1GB minimum per running node)

* Ubuntu server may not have SFTP/SSH enabled/installed by default. Some work is required to get them running.

* Use a regular user account (default install account) and do the geth ethereum install with SUDO. That way all of the Ethereum data files will be with a local user account, which would allow to create more nodes under different users

* Ubuntu server does not have out of the box tools for network management. May need to install them

### Connectivity

* If you wish to log into your Linux/Ubuntu machine from another computer to run your Ethereum installation and configuration commands, use one of the following methods:

* For Mac OS: you probably have SSH directly from terminal. If not then google how to install that package.

* For Windows 10, enable Developer mode under Settings->Update & Security->For developers. Then open up CMD from the startup menu by typing CMD and then Enter. then run the command "bash". This will install the Ubuntu package and give you command line tools to get the job done. Here's a nifty guide.

* For Windows 7, install Putty from www.putty.org. This client has SSH capabilities and emulates Linux shells. Note Ubutuntu server may not have SSH daemon enabled by default so you may need to install OpenSSH (sudo apt-get install openssh-server).

* You will need to find the IP the VM got in bridge mode (recommended mode). Ifconfig command may not be present by default so install net tools (sudo apt install net-tools). Example

  * Ifconfig: sudo apt install net-tools

  * Open SSH: sudo apt install openssh-server

### Ethereum general install notes

* Ubuntu Installs: <https://github.com/ethereum/go-ethereum/wiki/Installation-Instructions-for-Ubuntu>

* Windows Installs: <https://github.com/ethereum/go-ethereum/wiki/Installation-instructions-for-Windows>