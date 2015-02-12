//
//  ButtonsViewController.h
//  Sampler
//
//  Created by Harry Nelken on 11/10/14.
//  Copyright (c) 2014 Harry Nelken. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarControllerDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface ButtonsViewController : UIViewController

@property (nonatomic, strong) NSMutableDictionary *sounds;
@property (nonatomic, strong) AVPlayer *chokePlayer;
@property (nonatomic, strong) AVPlayer *player1;
@property (nonatomic, strong) AVPlayer *player2;
@property (nonatomic, strong) AVPlayer *player3;
@property (nonatomic, strong) AVPlayer *player4;
- (IBAction)tappedPad1:(id)sender;
- (IBAction)tappedPad2:(id)sender;
- (IBAction)tappedPad3:(id)sender;
- (IBAction)tappedPad4:(id)sender;
- (IBAction)tappedPad5:(id)sender;
- (IBAction)tappedPad6:(id)sender;
- (IBAction)tappedPad7:(id)sender;
- (IBAction)tappedPad8:(id)sender;
- (IBAction)tappedPad9:(id)sender;
- (IBAction)tappedPad10:(id)sender;
- (IBAction)tappedPad11:(id)sender;
- (IBAction)tappedPad12:(id)sender;
- (IBAction)tappedPad13:(id)sender;
- (IBAction)tappedPad14:(id)sender;
- (IBAction)tappedPad15:(id)sender;
- (IBAction)tappedPad16:(id)sender;
@end
