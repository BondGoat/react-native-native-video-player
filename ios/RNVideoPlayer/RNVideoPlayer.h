//
//  RNVideoPlayer.h
//  RNVideoPlayer
//
//  Created by DC5 Admin (MACMINI032) on 10/25/16.
//  Copyright © 2016 DC5 Admin (MACMINI032). All rights reserved.
//

#import "AppDelegate.h"
#import "RCTBridge.h"
#import <Foundation/Foundation.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface RNVideoPlayer : UIViewController <RCTBridgeModule>

@property (strong, nonatomic) NSURL *videoURL;
@property (nonatomic, strong) AVPlayerViewController *playerViewController;

@end
