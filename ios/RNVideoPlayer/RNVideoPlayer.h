//
//  RNVideoPlayer.h
//  RNVideoPlayer
//
//  Created by DC5 Admin (MACMINI032) on 10/25/16.
//  Copyright © 2016 DC5 Admin (MACMINI032). All rights reserved.
//

#import "RCTBridge.h"
#import <Foundation/Foundation.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface RNVideoPlayer : NSObject <RCTBridgeModule>

@property (strong, nonatomic) NSURL *videoURL;
@property (nonatomic, strong) AVPlayerViewController *playerViewController;

@end
