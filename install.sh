#!/bin/bash
# cd /tmp && wget https://raw.githubusercontent.com/lovehifi/lms-volumio/main/install.sh && sudo chmod -R 755 /tmp/install.sh && ./install.sh
cd ~
echo "Download the LMS plugin from Volumio repo"
git clone https://github.com/volumio/volumio-plugins-sources.git

#file_path="/home/volumio/volumio-plugins-sources/lms/install.sh" && awk '/for f in \/home\/volumio\/logitechmediaserver\/logitechmediaserver\*\.deb; do dpkg -i "\$f"; done/ { print "cd /tmp"; print "apt-get install libio-socket-ssl-perl lame unzip -y"; print "wget https://downloads.slimdevices.com/nightly/logitechmediaserver_8.5.0~1709149164_all.deb"; print "dpkg -i /tmp/logitechmediaserver_8.5.0~1709149164_all.deb"; next } 1' "$file_path" > temp_file && mv temp_file "$file_path"

echo "Choose LMS version 8.4.0 Latest Release or 8.5.0 Development Build"
select version in "8.4.0" "8.5.0"; do
    case $version in
        8.4.0) wget https://downloads.slimdevices.com/LogitechMediaServer_v8.4.0/logitechmediaserver_8.4.0_all.deb -O /tmp/logitechmediaserver.deb; break;;
        8.5.0) wget https://downloads.slimdevices.com/nightly/logitechmediaserver_8.5.0~1709721796_all.deb -O /tmp/logitechmediaserver.deb; break;;
        *) echo "Invalid option";;
    esac
done

file_path="/home/volumio/volumio-plugins-sources/lms/install.sh"
awk '/for f in \/home\/volumio\/logitechmediaserver\/logitechmediaserver\*\.deb; do dpkg -i "\$f"; done/ { 
    print "cd /tmp";
    print "apt-get install libio-socket-ssl-perl lame unzip -y";
    print "dpkg -i /tmp/logitechmediaserver.deb";
    next
} 1' "$file_path" > temp_file && mv temp_file "$file_path"


echo "Install plugin LMS to Volumio"
cd /home/volumio/volumio-plugins-sources/lms
volumio plugin install
mkdir -p /var/lib/squeezeboxserver/prefs/material-skin

echo "Install plugin SQ MC to Volumio"
cd /home/volumio/volumio-plugins-sources/squeezelite_mc
volumio plugin install
