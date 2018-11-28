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

RCT_EXPORT_MODULE(VideoPlayer);

RCT_EXPORT_METHOD(showVideoPlayer: (NSString*) url)
{
    self.videoURL = [NSURL URLWithString:url];
    UIViewController *rootViewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];

    AVPlayer *player = [AVPlayer playerWithURL:self.videoURL];
    self.playerViewController = [AVPlayerViewController new];
    _playerViewController.player = player;
    _playerViewController.showsPlaybackControls = YES;


    dispatch_async(dispatch_get_main_queue(), ^{

        [rootViewController.view addSubview:self.playerViewController.view];
        [rootViewController presentViewController:self.playerViewController animated:YES completion:nil];

    });

    _playerViewController.player.play;
}

@end
