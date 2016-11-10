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

const { RNVideoPlayer } = NativeModules;

module.exports = {

  showVideoPlayer(url) {
    return RNVideoPlayer.showVideoPlayer(url);
  }
}
