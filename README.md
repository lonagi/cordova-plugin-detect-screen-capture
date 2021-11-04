# cordova-plugin-detect-screen-capture

This plugin detects screen recording and screenshot events.  
The plugin will only work on devices with iOS >= 7  

Supported platforms: **iOS only**.

There is **no plan to support Android** because there is no API to detect screen recording.

## Installation

```
cordova plugin add https://github.com/lonagi/cordova-plugin-detect-screen-capture.git
```

## Ionic/Capacitor

```
npm install cordova-plugin-detect-screen-capture
npx cap sync
```

## Usage
Simply listen for these events in your javascript.

    document.addEventListener("screenshot", function() {
        window.alert("Screenshot");
    }, false);

    document.addEventListener("screenrecord", function() {
        window.alert("Screen Recording");
    }, false);
    
## License 
MIT.
