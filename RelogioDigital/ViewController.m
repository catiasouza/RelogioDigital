//
//  ViewController.m
//  RelogioDigital
//
//  Created by Cátia Souza on 13/04/20.
//  Copyright © 2020 Cátia Souza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateTimer];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    
    self.setingsView.hidden = YES;
    self.buttonSetting.alpha = 0.15;
    self.setingsView.layer.cornerRadius = 10;
    self.buttonSetting.layer.cornerRadius = 10;
    
}

-(void)updateTimer{
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc]init];
    [timeFormat setDateFormat:@"HH:mm:ss"];
    self.label.text = [timeFormat stringFromDate:[NSDate date]];
}
- (IBAction)settings:(id)sender {
    if (self.setingsView.hidden == YES) {
        self.setingsView.hidden = NO;
        self.buttonSetting.alpha = 2.0;
        [self.buttonSetting setTitle:@"Hiden Settings" forState:UIControlStateNormal];
    }else{
        self.setingsView.hidden = YES;
        self.buttonSetting.alpha = 0.15;
        [self.buttonSetting setTitle:@"Show Settings" forState:UIControlStateNormal];
    }
}

- (IBAction)colourSentting:(id)sender {
    if (self.clockColourSettings.selectedSegmentIndex == 0) {
        self.label.textColor = [UIColor whiteColor];
    }
    if (self.clockColourSettings.selectedSegmentIndex == 1) {
        self.label.textColor = [UIColor blackColor];
    }
    if (self.clockColourSettings.selectedSegmentIndex == 2) {
        self.label.textColor = [UIColor greenColor];
    }
    if (self.clockColourSettings.selectedSegmentIndex == 3) {
        self.label.textColor = [UIColor redColor];
    }
}
- (IBAction)backgroundColour:(id)sender {
    self.backgroudImage.hidden = YES;
    if ( self.backgroundColorSegment.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor blackColor];
    }
    if ( self.backgroundColorSegment.selectedSegmentIndex == 1) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    if ( self.backgroundColorSegment.selectedSegmentIndex == 2) {
        self.view.backgroundColor = [UIColor yellowColor];
    }
    if ( self.backgroundColorSegment.selectedSegmentIndex == 3) {
        self.view.backgroundColor = [UIColor blueColor];
    }
}

- (IBAction)backgroundImageSelect:(id)sender {
     self.backgroudImage.hidden = NO;
    if ( self.imageSegment.selectedSegmentIndex == 0) {
        self.backgroudImage.image = [UIImage imageNamed: @"Background1"];
    }
    if ( self.imageSegment.selectedSegmentIndex == 1) {
        self.backgroudImage.image = [UIImage imageNamed: @"Background2"];
    }
    if ( self.imageSegment.selectedSegmentIndex == 2) {
        self.backgroudImage.image = [UIImage imageNamed: @"Background3"];
    }
    if ( self.imageSegment.selectedSegmentIndex == 3) {
        self.backgroudImage.image = [UIImage imageNamed: @"Background4"];
    }
}
@end


