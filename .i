#!/bin/bash
# cd /tmp && wget https://raw.githubusercontent.com/lovehifi/lms-volumio/main/.i && sudo chmod -R 755 /tmp/.i && ./.i
cd ~
git clone https://github.com/volumio/volumio-plugins-sources.git
echo "Install LMS 8.5 to Volumio"

file_path="/home/volumio/volumio-plugins-sources/lms/install.sh"

awk '/for f in \/home\/volumio\/logitechmediaserver\/logitechmediaserver\*\.deb; do dpkg -i "\$f"; done/ { 
    print "cd /tmp";
    print "apt-get install libio-socket-ssl-perl lame unzip -y";
    print "wget https://downloads.slimdevices.com/nightly/logitechmediaserver_8.5.0~1709149164_all.deb";
    print "dpkg -i /tmp/logitechmediaserver_8.5.0~1709149164_all.deb";
    next
} 1' "$file_path" > temp_file && mv temp_file "$file_path"


cd /home/volumio/volumio-plugins-sources/lms
volumio plugin install

#cd /tmp
#wget https://downloads.slimdevices.com/nightly/logitechmediaserver_8.5.0~1709149164_all.deb
#sudo service logitechmediaserver stop
#sudo dpkg -i /tmp/logitechmediaserver_8.5.0~1709149164_all.deb
#sudo chown -R volumio:volumio /var/lib/squeezeboxserver
#sudo rm -rf /etc/systemd/system/logitechmediaserver.service
#sudo ln -fs /data/plugins/music_service/lms/unit/logitechmediaserver.service /etc/systemd/system/logitechmediaserver.service
#sudo chmod 744 -R /var/lib/squeezeboxserver
#sudo systemctl daemon-reload
#sudo service logitechmediaserver restart
#echo "Install LMS done"

cd /home/volumio/volumio-plugins-sources/squeezelite_mc
volumio plugin install

cd /home/volumio/volumio-plugins-sources/youtube2
volumio plugin install

cd /home/volumio/volumio-plugins-sources/ytmusic
volumio plugin install

cd /home/volumio/volumio-plugins-sources/spotify
volumio plugin install

cd /home/volumio/volumio-plugins-sources/RoonBridge
volumio plugin install

cd /home/volumio/volumio-plugins-sources/touch_display
volumio plugin install

echo "Done"


