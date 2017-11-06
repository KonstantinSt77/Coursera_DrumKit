//
//  ViewController.m
//  SoundDemo
//
//  Created by Kostya on 14.10.2017.
//  Copyright © 2017 SKS. All rights reserved.
//

#import "ViewController.h"
@import AudioToolbox;
@import AVFoundation;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *beep1;
@property (weak, nonatomic) IBOutlet UIButton *beep2;
@property (weak, nonatomic) IBOutlet UIButton *beep3;
@property (weak, nonatomic) IBOutlet UIButton *beep4;
@property (weak, nonatomic) IBOutlet UIButton *beep5;
@property (weak, nonatomic) IBOutlet UIButton *beep6;
@property (weak, nonatomic) IBOutlet UIButton *beep7;
@property (weak, nonatomic) IBOutlet UIButton *beep8;
@property (weak, nonatomic) IBOutlet UIButton *beep9;
@property (weak, nonatomic) IBOutlet UIButton *beep10;
@property (weak, nonatomic) IBOutlet UIButton *beep11;
@property (weak, nonatomic) IBOutlet UIButton *beep12;


@property (assign, nonatomic) SystemSoundID *beepID1;
@property (assign, nonatomic) SystemSoundID *beepID2;
@property (assign, nonatomic) SystemSoundID *beepID3;
@property (assign, nonatomic) SystemSoundID *beepID4;
@property (assign, nonatomic) SystemSoundID *beepID5;
@property (assign, nonatomic) SystemSoundID *beepID6;
@property (assign, nonatomic) SystemSoundID *beepID7;
@property (assign, nonatomic) SystemSoundID *beepID8;
@property (assign, nonatomic) SystemSoundID *beepID9;
@property (assign, nonatomic) SystemSoundID *beepID10;
@property (assign, nonatomic) SystemSoundID *beepID11;
@property (assign, nonatomic) SystemSoundID *beepID12;

@property (assign, nonatomic) BOOL OKbeep1;
@property (assign, nonatomic) BOOL OKbeep2;
@property (assign, nonatomic) BOOL OKbeep3;
@property (assign, nonatomic) BOOL OKbeep4;
@property (assign, nonatomic) BOOL OKbeep5;
@property (assign, nonatomic) BOOL OKbeep6;
@property (assign, nonatomic) BOOL OKbeep7;
@property (assign, nonatomic) BOOL OKbeep8;
@property (assign, nonatomic) BOOL OKbeep9;
@property (assign, nonatomic) BOOL OKbeep10;
@property (assign, nonatomic) BOOL OKbeep11;
@property (assign, nonatomic) BOOL OKbeep12;

@property (assign, nonatomic) BOOL OKbeepMedia;

@property AVAudioPlayer *player;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *soundPath1 = [[NSBundle mainBundle] pathForResource:@"sound1" ofType:@"aif"];
    NSURL *url1 = [NSURL fileURLWithPath:soundPath1];
    
    NSString *soundPath2 = [[NSBundle mainBundle] pathForResource:@"sound2" ofType:@"aif"];
    NSURL *url2 = [NSURL fileURLWithPath:soundPath2];
    
    NSString *soundPath3 = [[NSBundle mainBundle] pathForResource:@"sound3" ofType:@"aif"];
    NSURL *url3 = [NSURL fileURLWithPath:soundPath3];
    
    NSString *soundPath4 = [[NSBundle mainBundle] pathForResource:@"sound4" ofType:@"aif"];
    NSURL *url4 = [NSURL fileURLWithPath:soundPath4];

    NSString *soundPath5 = [[NSBundle mainBundle] pathForResource:@"sound5" ofType:@"aif"];
    NSURL *url5 = [NSURL fileURLWithPath:soundPath5];

    NSString *soundPath6 = [[NSBundle mainBundle] pathForResource:@"sound6" ofType:@"aif"];
    NSURL *url6 = [NSURL fileURLWithPath:soundPath6];

    NSString *soundPath7 = [[NSBundle mainBundle] pathForResource:@"sound7" ofType:@"aif"];
    NSURL *url7 = [NSURL fileURLWithPath:soundPath7];

    NSString *soundPath8 = [[NSBundle mainBundle] pathForResource:@"sound8" ofType:@"aif"];
    NSURL *url8 = [NSURL fileURLWithPath:soundPath8];

    NSString *soundPath9 = [[NSBundle mainBundle] pathForResource:@"sound9" ofType:@"aif"];
    NSURL *url9 = [NSURL fileURLWithPath:soundPath9];

    NSString *soundPath10 = [[NSBundle mainBundle] pathForResource:@"sound7" ofType:@"aif"];
    NSURL *url10 = [NSURL fileURLWithPath:soundPath10];

    NSString *soundPath11 = [[NSBundle mainBundle] pathForResource:@"sound5" ofType:@"aif"];
    NSURL *url11 = [NSURL fileURLWithPath:soundPath11];
    
    NSString *soundPath12 = [[NSBundle mainBundle] pathForResource:@"sound8" ofType:@"aif"];
    NSURL *url12 = [NSURL fileURLWithPath:soundPath12];
    
    
    NSString *soundPathMedia = [[NSBundle mainBundle] pathForResource:@"soundBack" ofType:@"aif"];
    NSURL *urlsoundPathMedia = [NSURL fileURLWithPath:soundPathMedia];
    
    OSStatus statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url1, &_beepID1);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep1 = YES;
    }
    else
    {
        self.OKbeep1 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url2, &_beepID2);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep2 = YES;
    }
    else
    {
        self.OKbeep2 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url3, &_beepID3);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep3 = YES;
    }
    else
    {
        self.OKbeep3 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url4, &_beepID4);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep4 = YES;
    }
    else
    {
        self.OKbeep4 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url5, &_beepID5);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep5 = YES;
    }
    else
    {
        self.OKbeep5 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url6, &_beepID6);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep6 = YES;
    }
    else
    {
        self.OKbeep6 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url7, &_beepID7);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep7 = YES;
    }
    else
    {
        self.OKbeep7 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url8, &_beepID8);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep8 = YES;
    }
    else
    {
        self.OKbeep8 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url9, &_beepID9);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep9 = YES;
    }
    else
    {
        self.OKbeep9 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url10, &_beepID10);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep10 = YES;
    }
    else
    {
        self.OKbeep10 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url11, &_beepID11);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep11 = YES;
    }
    else
    {
        self.OKbeep11 = NO;
    }
    
    statusReport = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url12, &_beepID12);
    
    if(statusReport == kAudioServicesNoError)
    {
        self.OKbeep12 = YES;
    }
    else
    {
        self.OKbeep12 = NO;
    }
    
    self.player = [[AVAudioPlayer alloc]initWithContentsOfURL:urlsoundPathMedia error:nil];
    
    if(!self.player)
    {
        self.OKbeepMedia = NO;
    }
    else
    {
        self.OKbeepMedia = YES;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIColor *)getRandomcColor
{
    UIColor *color = [UIColor colorWithHue:drand48() saturation:1.0 brightness:1.0 alpha:1.0];
    return color;
}

- (IBAction)beep1:(id)sender
{
    if(self.OKbeep1)
    {
        self.beep1.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID1);
    }
}

- (IBAction)beep2:(id)sender
{
    if(self.OKbeep2)
    {
        self.beep2.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID2);
    }
}

- (IBAction)beep3:(id)sender
{
    if(self.OKbeep3)
    {
        self.beep3.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID3);
    }
}

- (IBAction)beep4:(id)sender
{
    if(self.OKbeep4)
    {
        self.beep4.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID4);
    }
}

- (IBAction)beep5:(id)sender
{
    if(self.OKbeep5)
    {
        self.beep5.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID5);
    }
}

- (IBAction)beep6:(id)sender
{
    if(self.OKbeep6)
    {
        self.beep6.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID6);
    }
}

- (IBAction)beep7:(id)sender
{
    if(self.OKbeep7)
    {
        self.beep7.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID7);
    }
}

- (IBAction)beep8:(id)sender
{
    if(self.OKbeep8)
    {
        self.beep8.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID8);
    }
}

- (IBAction)beep9:(id)sender
{
    if(self.OKbeep9)
    {
        self.beep9.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID9);
    }
}

- (IBAction)beep10:(id)sender
{
    if(self.OKbeep10)
    {
        self.beep10.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID10);
    }
}

- (IBAction)beep11:(id)sender
{
    if(self.OKbeep11)
    {
        self.beep11.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID11);
    }
}

- (IBAction)beep12:(id)sender
{
    if(self.OKbeep12)
    {
        self.beep12.backgroundColor = [self getRandomcColor];
        AudioServicesPlaySystemSound(self.beepID12);
    }
}

-(void)dealloc
{
    if(self.OKbeep1)
    {
        self.beep1.backgroundColor = [self getRandomcColor];
        AudioServicesDisposeSystemSoundID(*(self.beepID1));
    }
    if(self.OKbeep2)
    {
        self.beep2.backgroundColor = [self getRandomcColor];
        AudioServicesDisposeSystemSoundID(*(self.beepID2));
    }
    
}

- (IBAction)playLongSound:(id)sender
{
    if(_OKbeepMedia)
    {
        [self.player play];
    }
    
}

- (IBAction)stopLongSound:(id)sender
{
    if(_OKbeepMedia)
    {
        [self.player stop];
    }
}

@end
