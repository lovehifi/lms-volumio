# LMS on Volumio
### 1. Install plugin Volumio
### 2. Update to LMS 8.5
```
echo "Install LMS 8.5 to Volumio" && cd /tmp && wget https://downloads.slimdevices.com/nightly/logitechmediaserver_8.5.0~1709149164_all.deb && sudo service logitechmediaserver stop && sudo dpkg -i /tmp/logitechmediaserver_8.5.0~1709149164_all.deb && sudo chown -R volumio:volumio /var/lib/squeezeboxserver && sudo rm -rf /etc/systemd/system/logitechmediaserver.service && sudo ln -fs /data/plugins/music_service/lms/unit/logitechmediaserver.service /etc/systemd/system/logitechmediaserver.service && sudo chmod 744 -R /var/lib/squeezeboxserver && sudo systemctl daemon-reload && echo "Done" && sudo service logitechmediaserver restart
```

### 3. Active plugin Material in LMS
### 4. Menu Volumio in LMS

