#!/bin/bash
cd ~/
#git clone https://github.com/ImGGAAVVIINN/win7-mint-webkit-greeter-english-with-install-scripts.git
unzip .win7-mint-webkit-greeter-english-with-install-scripts-master.zip
cd win7-mint-webkit-greeter-english-with-install-scripts
chmod +x installer.sh
sudo ./installer.sh

echo "Done!, restart or logout to check if it is applied."
