# react-native-native-video-player
React native video player component, used for Android, iOS

## Table of contents
- [Install](#install)
  - [iOS](#ios)
  - [Android](#android)
- [Usage](#usage)

## Install

`npm install react-native-native-video-player --save`

## Link

`react-native link react-native-native-video-player`

OR

Use [rnpm](https://github.com/rnpm/rnpm) to automatically complete the installation:  
`rnpm link react-native-native-video-player`

or link manually like so:

### iOS
- Add RNVideoPlayer in ios folder to your ios project
- Open 'node_modules/react-native-native-video-player/ios/RNVideoPlayer.xcodeproj' with Xcode
- Go to Build Settings > Search Paths > Header Search Paths
- Edit the path variable from `$(SRCROOT)/../../../HuntersLog` to `$(SRCROOT)/../../../[YOUR PROJECT FOLDER NAME]`

### Android

In case you're using React Native version > 0.45.0, please remove @Override of createJSModule() in VideoPlayerPackage.java
```java
// file: android/app/src/main/java/com/wog.videoplayer.VideoPlayerPackage.java
...
	  @Override // remove this if RN > 0.45.0
      public List<Class<? extends JavaScriptModule>> createJSModules() {
          return Collections.emptyList();
      }
```

```gradle
// file: android/settings.gradle
...

include ':react-native-native-video-player'
project(':react-native-native-video-player').projectDir = new File(settingsDir, '../node_modules/react-native-native-video-player/android')
```
```gradle
// file: android/app/build.gradle
...

dependencies {
    ...
    compile project(':react-native-native-video-player')
}
```
```java
// file: android/app/src/main/java/com/<...>/MainApplication.java
...

import com.wog.videoplayer.VideoPlayerPackage; // <-- add this import

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
var VideoPlayer = require('react-native-native-video-player');

/**
 * The method will launch native module
 * @param {String} url Video link
 */
VideoPlayer.showVideoPlayer(url);
