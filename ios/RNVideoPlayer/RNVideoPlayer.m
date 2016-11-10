//
//  RNVideoPlayer.m
//  RNVideoPlayer
//
//  Created by DC5 Admin (MACMINI032) on 10/25/16.
//  Copyright © 2016 DC5 Admin (MACMINI032). All rights reserved.
//

#import "RNVideoPlayer.h"

@implementation RNVideoPlayer

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(showVideoPlayer: (NSString*) url)
{
    self.videoURL = [NSURL URLWithString:url];
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

    AVPlayer *player = [AVPlayer playerWithURL:self.videoURL];
    self.playerViewController = [AVPlayerViewController new];
    _playerViewController.player = player;
    _playerViewController.showsPlaybackControls = YES;


    dispatch_async(dispatch_get_main_queue(), ^{

        [delegate.window.rootViewController.view addSubview:self.playerViewController.view];
        [delegate.window.rootViewController presentViewController:self.playerViewController animated:YES completion:nil];

    });

    _playerViewController.player.play;
}

@end
