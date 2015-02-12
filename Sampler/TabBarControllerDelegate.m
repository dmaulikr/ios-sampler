//
//  TabBarControllerDelegate.m
//  Sampler
//
//  Created by Harry Nelken on 11/24/14.
//  Copyright (c) 2014 Harry Nelken. All rights reserved.
//

#import "TabBarControllerDelegate.h"
#import "ButtonsViewController.h"
#import "AppDelegate.h"
#import "Sound.h"

@implementation TabBarControllerDelegate
@synthesize assets;

-(void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSLog(@"%@", viewController.description);
    if ([viewController isKindOfClass:[ButtonsViewController class]]) {
        ButtonsViewController *vc = (ButtonsViewController *)viewController;
        AppDelegate *del = [[UIApplication sharedApplication] delegate];
        vc.sounds = del.sounds;
    }
}

@end
