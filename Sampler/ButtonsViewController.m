//
//  ButtonsViewController.m
//  Sampler
//
//  Created by Harry Nelken on 11/10/14.
//  Copyright (c) 2014 Harry Nelken. All rights reserved.
//

#import "ButtonsViewController.h"
#import "Sound.h"

@interface ButtonsViewController ()

@end

@implementation ButtonsViewController
@synthesize sounds;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Play";
    self.sounds = [NSMutableDictionary dictionary];
    self.chokePlayer = [[AVPlayer alloc] init];
    self.player1 = [[AVPlayer alloc] init];
    self.player2 = [[AVPlayer alloc] init];
    self.player3 = [[AVPlayer alloc] init];
    self.player4 = [[AVPlayer alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/** PRESSED A BUTTON DOWN, PLAY SOUND AND CHANGE COLOR */

- (IBAction)pad1Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 1]];
    self.player1 = [self.player1 initWithURL:[sound getSampleURL]];
    [self.player1 seekToTime:kCMTimeZero];
    self.player1.actionAtItemEnd = 1;
    [self.player1 play];
}
- (IBAction)pad2Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 2]];
    self.player2 = [self.player2 initWithURL:[sound getSampleURL]];
    [self.player2 seekToTime:kCMTimeZero];
    self.player2.actionAtItemEnd = 1;
    [self.player2 play];
}
- (IBAction)pad3Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 3]];
    self.player3 = [self.player3 initWithURL:[sound getSampleURL]];
    [self.player3 seekToTime:kCMTimeZero];
    self.player3.actionAtItemEnd = 1;
    [self.player3 play];
}
- (IBAction)pad4Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 4]];
    self.player4 = [self.player4 initWithURL:[sound getSampleURL]];
    [self.player4 seekToTime:kCMTimeZero];
    self.player4.actionAtItemEnd = 1;
    [self.player4 play];
}
- (IBAction)pad5Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 5]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad6Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 6]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad7Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 7]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad8Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 8]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad9Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 9]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad10Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 10]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad11Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 11]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad12Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 12]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad13Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 13]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad14Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 14]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad15Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 15]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}
- (IBAction)pad16Down:(id)sender {
    [sender setBackgroundColor:[UIColor redColor]];
    Sound *sound = [self.sounds objectForKey:[NSString stringWithFormat:@"%d", 16]];
    self.chokePlayer = [AVPlayer playerWithURL:[sound getSampleURL]];
    [self.chokePlayer seekToTime:kCMTimeZero];
    self.chokePlayer.actionAtItemEnd = 1;
    [self.chokePlayer play];
}


/** LET GO OF BUTTON -- CHANGE COLOR BACK */
- (IBAction)tappedPad1:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad2:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad3:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad4:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad5:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad6:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad7:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad8:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad9:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad10:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad11:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad12:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad13:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad14:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad15:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)tappedPad16:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad1:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad2:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad3:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad4:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad5:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad6:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad7:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad8:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad9:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad10:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad11:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad12:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad13:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad14:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad15:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
- (IBAction)awayPad16:(id)sender {
    [sender setBackgroundColor:[UIColor darkGrayColor]];
}
@end
