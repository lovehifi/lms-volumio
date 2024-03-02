# LMS 8.5 - Volumio
### 1. Install plugin LMS 8.4 or 8.5 and plugin SQ MC
8.4.0 Latest Release
>
8.5.0 Development Build
```
cd /tmp && wget https://raw.githubusercontent.com/lovehifi/lms-volumio/main/install.sh && sudo chmod -R 755 /tmp/install.sh && ./install.sh
```
- Enable plugin LMS and SQ MC on Volumio


### 2. LMS

- http://volumio:9000
- Settings -> Manage Plugins -> Active the plugin Material Skin
- Settings -> Interface -> choose Material Skin

### 3. Create menu VOLUMIO in LMS
```
echo '{"system":[{"title":"Volumio","iframe":"http://volumio/","locked":true,"icon":"link","toolbar":{"title":"Volumio \u2022 $NAME"}}]}' | tee /var/lib/squeezeboxserver/prefs/material-skin/actions.json
```

![Screenshot](Logitech%20Media%20Server-Volumio.png)

![Screenshot](Logitech%20Media%20Server-Volumio-2.png)
