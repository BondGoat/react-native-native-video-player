# react-native-video-player
React native video player component, used for Android, iOS

## Table of contents
- [Install](#install)
  - [iOS](#ios)
  - [Android](#android)
- [Usage](#usage)

## Install

`npm install react-native-hunterslog-media-picker --save`

Use [rnpm](https://github.com/rnpm/rnpm) to automatically complete the installation:  
`rnpm link react-native-hunterslog-media-picker`

or link manually like so:

### iOS


### Android
```gradle
// file: android/settings.gradle
...

include ':react-native-video-player'
project(':react-native-video-player').projectDir = new File(settingsDir, '../node_modules/react-native-video-player')
```
```gradle
// file: android/app/build.gradle
...

dependencies {
    ...
    compile project(':react-native-video-player')
}
```
```java
// file: android/app/src/main/java/com/<...>/MainApplication.java
...

import com.wog.videoplayer.VideoPlayerPackage;; // <-- add this import

public class MainApplication extends Application implements ReactApplication {
    @Override
    protected List<ReactPackage> getPackages() {
        return Arrays.<ReactPackage>asList(
            new MainReactPackage(),
            new VideoPlayerPackage() // <-- add this line
        );
    }
...
}

```
## Usage

```javascript
var VideoPlayer = require('react-native-video-player');

/**
 * The method will launch native module
 * @param {String} url Video link
 */
VideoPlayer.showVideoPicker(url, (response) => {
// Data is an Array of selected media
  console.log('Response = ', response);

  ...

});
