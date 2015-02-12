//
//  DetailViewController.m
//  Sampler
//
//  Created by Harry Nelken on 12/1/14.
//  Copyright (c) 2014 Harry Nelken. All rights reserved.
//

#import "DetailViewController.h"
#import "AppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize player;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.player = [AVPlayer playerWithURL:[self.sound getSampleURL]];
    [self.player seekToTime:kCMTimeZero];
    self.player.actionAtItemEnd = 1;
    self.numText.text = [NSString stringWithFormat:@"%d", (int)self.padSlider.value];
    self.nameText.text = self.sound.name;
    self.groupName.text = self.sound.group;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)assignButtonPressed:(id)sender {
    int index = (int)self.padSlider.value;
    AppDelegate *del = [[UIApplication sharedApplication] delegate];
    Sound *existing = [del.sounds objectForKey:[NSString stringWithFormat:@"%d", index]];
    if (existing != NULL) {
        
        NSString *name = existing.name;
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"overwrite?" message:[NSString stringWithFormat:@"%@%@", @"will replace current sound: ", name] delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"replace", nil];
        [alert show];
    }
    else {
        del.sounds[[NSString stringWithFormat:@"%d", index]] = self.sound;
    }
}

- (IBAction)slideMoved:(id)sender {
    self.numText.text = [NSString stringWithFormat:@"%d", (int)self.padSlider.value];
}

- (IBAction)playButtonDown:(id)sender {
    NSURL *url = [self.sound getSampleURL];
    self.player = [AVPlayer playerWithURL:url];
    [self.player seekToTime:kCMTimeZero];
    self.player.actionAtItemEnd = 1;
    [self.player play];
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1) { //replace button is clicked
        int index = (int)self.padSlider.value;
        AppDelegate *del = [[UIApplication sharedApplication] delegate];
        [del.sounds setObject:self.sound forKey:[NSString stringWithFormat:@"%d", index]];
    }
}

@end
