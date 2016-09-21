import React, {
  PropTypes,
  Component
} from 'react';

import {
  View,
  Text,
  StyleSheet,
  NativeModules,
  TouchableHighlight,
} from 'react-native';

const { VideoPlayerManager } = NativeModules;

module.exports = {
  ...VideoPlayerManager,

  showVideoPlayer(url) {
    return VideoPlayerManager.showVideoPlayer(url);
  }
}
