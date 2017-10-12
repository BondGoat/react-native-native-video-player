import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { NativeModules } from 'react-native'

const { VideoPlayerManager } = NativeModules

module.exports = {
  ...VideoPlayerManager,

  showVideoPlayer(url) {
    return VideoPlayerManager.showVideoPlayer(url)
  },
}
