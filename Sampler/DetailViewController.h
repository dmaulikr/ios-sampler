//
//  DetailViewController.h
//  Sampler
//
//  Created by Harry Nelken on 12/1/14.
//  Copyright (c) 2014 Harry Nelken. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "Sound.h"

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameText;
@property (weak, nonatomic) IBOutlet UILabel *groupName;
@property (weak, nonatomic) IBOutlet UILabel *numText;
@property (weak, nonatomic) IBOutlet UISlider *padSlider;

@property (nonatomic, strong) Sound *sound;
@property (nonatomic, strong) AVPlayer *player;

- (IBAction)assignButtonPressed:(id)sender;
- (IBAction)slideMoved:(id)sender;
- (IBAction)playButtonDown:(id)sender;

@end
