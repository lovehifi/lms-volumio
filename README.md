# LMS - Volumio
## LMS/SQ, YouTube Music and PeppyMeter on Volumio

You're a fan of LMS/SQ and wish to play both YouTube Music and have your LCD screen display PeppyMeter VU? You can achieve this by leveraging the LMS plugin, SQ MC plugin, and installing PeppyMeter from the Volumio forum.

### Installation Steps:

1. **Flash Volumio:**
   First, flash Volumio onto your SD card. You can find the Volumio image and instructions on their [official website](https://volumio.org/).

2. **Install LMS and SQ MC Plugins:**
   Follow the detailed installation guide for the LMS and SQ MC plugins available [on this GitHub repository](https://github.com/lovehifi/lms-volumio).

3. **PeppyMeter Setup:**
   If you want to integrate PeppyMeter, follow the instructions provided in the dedicated guide on the Volumio forum: [PeppyMeter Installation Guide](https://community.volumio.com/t/project-with-peppymeter-screensaver-plugin-for-volumio-v2-9xx-and-3-0xx-buster/45862/2644).

4. **Install plugin YouTube Music (Volumio)**

Now you're all set to enjoy a combination of LMS, SQ, YouTube Music, and PeppyMeter on your Volumio system!
>
--------------------------------------------

### 1. Install plugin Logitech Media Server (8.4 or 8.5) and plugin Squeezelite MC
8.4.0 (Latest Release) - 8.5.0 (Development Build) 
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
