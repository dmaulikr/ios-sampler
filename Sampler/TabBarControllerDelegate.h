//
//  TabBarControllerDelegate.h
//  Sampler
//
//  Created by Harry Nelken on 11/24/14.
//  Copyright (c) 2014 Harry Nelken. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
@import UIKit;

@interface TabBarControllerDelegate : NSObject <UITabBarControllerDelegate>
@property (nonatomic, strong) NSArray *assets;
@end
