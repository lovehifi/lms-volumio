# LMS 8.5 - Volumio
### 1. Install LMS/SQ MC from VOLUMIO
```
cd /tmp && wget https://raw.githubusercontent.com/lovehifi/lms-volumio/main/install.sh && sudo chmod -R 755 /tmp/install.sh && ./install.sh
```
- Enable plugin LMS on Volumio


### 2. LMS

- http://volumio:9000
- Setting -> Manager Plugin -> Active the plugin Material Skin
- Setting -> Interface -> choose Material Skin

### 3. Create menu VOLUMIO in LMS
```
echo '{"system":[{"title":"Volumio","iframe":"http://volumio/","locked":true,"icon":"link","toolbar":{"title":"Volumio \u2022 $NAME"}}]}' | tee /var/lib/squeezeboxserver/prefs/material-skin/actions.json
```
