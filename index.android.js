import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { NativeModule } from 'react-native'

const { VideoPlayerManager } = NativeModules

module.exports = {
  ...VideoPlayerManager,

  showVideoPlayer(url) {
    return VideoPlayerManager.showVideoPlayer(url)
  },
}
