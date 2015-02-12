//
//  RecordViewController.m
//  Sampler
//
//  Created by Harry Nelken on 11/24/14.
//  Copyright (c) 2014 Harry Nelken. All rights reserved.
//

#import "AppDelegate.h"
#import "RecordViewController.h"
#import "Sound.h"
@interface RecordViewController ()
@end

@implementation RecordViewController
@synthesize managedObjectContext, name, recorder, player, path;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Disable Stop/Play button when application launches
    AppDelegate *del = [[UIApplication sharedApplication] delegate];
    self.managedObjectContext = del.managedObjectContext;
    [self.stopButton setEnabled:NO];
    [self.playButton setEnabled:NO];
    [self.saveButton setEnabled:NO];
    self.bg = self.stopButton.backgroundColor;
    self.recording = NO;
    
    // Setup audio session
    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
    
    // Define the recorder setting
    NSMutableDictionary *recordSetting = [[NSMutableDictionary alloc] init];
    
    [recordSetting setValue:[NSNumber numberWithInt:kAudioFormatMPEG4AAC] forKey:AVFormatIDKey];
    [recordSetting setValue:[NSNumber numberWithFloat:44100.0] forKey:AVSampleRateKey];
    [recordSetting setValue:[NSNumber numberWithInt: 2] forKey:AVNumberOfChannelsKey];
    self.recordSetting = recordSetting;
    
    self.title = @"Record";
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

- (NSString *) dateString
{
    // return a formatted string for a file name
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"ddMMMYY_hhmmssa";
    self.name = [formatter stringFromDate:[NSDate date]];
    return [self.name stringByAppendingString:@".m4a"];
}

- (IBAction)stopTapped:(id)sender {
    [self.recorder stop];
    
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setActive:NO error:nil];
}

- (IBAction)playTapped:(id)sender {
    if (!self.recorder.recording){
        
        self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:self.recorder.url error:nil];
        [self.player setDelegate:self];
        [self.player play];
        [self.playButton setEnabled:NO];
        self.playButton.backgroundColor = self.bg;
    }
}

- (IBAction)saveButtonTapped:(id)sender {
    Sound *recording = [NSEntityDescription insertNewObjectForEntityForName:@"Sound" inManagedObjectContext:self.managedObjectContext];
    
    recording.name = self.name;
    recording.extension = @"m4a";
    recording.group = @"Recordings";
    recording.path = self.path;
    
    NSError *error;
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"Couldn't save entity");
    }
    
    [self.saveButton setEnabled:NO];
    self.saveButton.backgroundColor = self.bg;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"success!" message:@"the recording has been saved to the library" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    [alert show];
}

- (IBAction)recordPauseTapped:(id)sender {
    // Stop the audio player before recording
    if (self.player.playing) {
        [self.player stop];
    }
    
    if (!self.recorder.recording) {
        AVAudioSession *session = [AVAudioSession sharedInstance];
        [session setActive:YES error:nil];
        
        if (!self.recording) {
            NSArray *searchPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
            NSString *documentPath_ = [searchPaths objectAtIndex: 0];
            self.path = [documentPath_ stringByAppendingPathComponent:[self dateString]];
            
            // File URL
            NSURL *url = [NSURL fileURLWithPath:self.path];//FILEPATH];
            
            self.recorder = [[AVAudioRecorder alloc] initWithURL:url settings:self.recordSetting error:NULL];
            self.recorder.delegate = self;
            self.recorder.meteringEnabled = YES;
            [self.recorder prepareToRecord];
            self.recording = YES;
        }
        
        // Start recording
        [self.recorder record];
        [self.recordPauseButton setTitle:@"pause" forState:UIControlStateNormal];
        
    } else {
        
        // Pause recording
        [self.recorder pause];
        [self.recordPauseButton setTitle:@"record" forState:UIControlStateNormal];
    }
    self.stopButton.backgroundColor = [UIColor darkGrayColor];
    self.playButton.backgroundColor = self.bg;
    self.saveButton.backgroundColor = self.bg;
    [self.stopButton setEnabled:YES];
    [self.playButton setEnabled:NO];
    [self.saveButton setEnabled:NO];
}

- (void) audioRecorderDidFinishRecording:(AVAudioRecorder *)avrecorder successfully:(BOOL)flag{
    [self.recordPauseButton setTitle:@"record" forState:UIControlStateNormal];
    self.recording = NO;
    self.stopButton.backgroundColor = self.bg;
    self.playButton.backgroundColor = [UIColor darkGrayColor];
    self.saveButton.backgroundColor = [UIColor darkGrayColor];
    [self.stopButton setEnabled:NO];
    [self.playButton setEnabled:YES];
    [self.saveButton setEnabled:YES];
}

- (void) audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    [self.playButton setEnabled:YES];
    self.playButton.backgroundColor = [UIColor darkGrayColor];
}

@end
