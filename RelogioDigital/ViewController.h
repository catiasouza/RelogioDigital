//
//  ViewController.h
//  RelogioDigital
//
//  Created by Cátia Souza on 13/04/20.
//  Copyright © 2020 Cátia Souza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UIImageView *backgroudImage;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIView *setingsView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColourSettings;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundColorSegment;
@property (weak, nonatomic) IBOutlet UISegmentedControl *imageSegment;
@property (weak, nonatomic) IBOutlet UIButton *buttonSetting;
- (IBAction)settings:(id)sender;
- (IBAction)colourSentting:(id)sender;
- (IBAction)backgroundColour:(id)sender;
- (IBAction)backgroundImageSelect:(id)sender;


@end

