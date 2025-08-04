KillPort - Free Up Your Ports Fast
==================================

Ever run into “port already in use”? This script kills whatever is blocking your port, so you can get back to coding.

How to Use
----------

1. Make it executable:
   chmod +x killport.sh

2. Run it with the port(s) you want to free:
   ./killport.sh 3000
   ./killport.sh 3000 3001

What it does
------------

- Checks if the port is in use.
- Kills all processes using that port.
- Tells you what happened (success, already closed, or failed).

Tip: Want to use it from anywhere? Add it to your PATH.

   echo 'export PATH=$PATH:~/' >> ~/.bashrc
   source ~/.bashrc

Now you can just type `killport.sh 3000` from any folder.
