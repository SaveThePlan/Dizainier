//
//  STPViewController.h
//  Dizainier
//
//  Created by Nanook on 14/05/2014.
//  Copyright (c) 2014 SaveThePlan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STPViewController : UIViewController {
    int total;
    bool isGeek;
}

@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tenSegment;
@property (weak, nonatomic) IBOutlet UISegmentedControl *unitSegment;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISwitch *geekSwitch;
@property (weak, nonatomic) IBOutlet UILabel *hex2Label;
@property (weak, nonatomic) IBOutlet UISegmentedControl *hex2Segment;
@property (weak, nonatomic) IBOutlet UILabel *hex1label;
@property (weak, nonatomic) IBOutlet UISegmentedControl *hex1Segment;
@property (weak, nonatomic) IBOutlet UILabel *totalhexaLabel;

- (IBAction)tenChange:(id)sender;
- (IBAction)stepperChange:(id)sender;
- (IBAction)sliderMove:(id)sender;
- (IBAction)switchChange:(id)sender;
- (IBAction)hexaChange:(id)sender;
- (IBAction)resetTotal:(id)sender;

- (void) updateInterface;

@end
