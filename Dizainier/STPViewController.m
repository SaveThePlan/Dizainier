//
//  STPViewController.m
//  Dizainier
//
//  Created by Nanook on 14/05/2014.
//  Copyright (c) 2014 SaveThePlan. All rights reserved.
//

#import "STPViewController.h"

@interface STPViewController ()

@end

@implementation STPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    total = 0;
    isGeek = FALSE;
    [self updateInterface];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tenChange:(id)sender {
    total = [_tenSegment selectedSegmentIndex] * 10 + [_unitSegment selectedSegmentIndex];
    [self updateInterface];
}

- (IBAction)stepperChange:(id)sender {
    total = (int)[_stepper value];
    [self updateInterface];
}

- (IBAction)sliderMove:(id)sender {
    total = (int) [_slider value];
    [self updateInterface];
}

- (IBAction)switchChange:(id)sender {
    isGeek = _geekSwitch.on;
    [self updateInterface];
}

- (IBAction)hexaChange:(id)sender {
    total = [_hex2Segment selectedSegmentIndex] * 16 + [_hex1Segment selectedSegmentIndex];
    if(total > 99){
        total = 99;
    }
    [self updateInterface];
}

- (IBAction)resetTotal:(id)sender {
    total = 0;
    [self updateInterface];
}

- (void)updateInterface {
    //set geek switch
    [_geekSwitch setOn:isGeek];
    
    //change totalLabel
    [_totalLabel setText:[NSString stringWithFormat: @"%d", total]];
    if(total == 42){
        [_totalLabel setTextColor:[UIColor greenColor]];
    } else {
        [_totalLabel setTextColor:[UIColor blackColor]];
    }
    
    //change stepper value
    [_stepper setValue:total];
    
    //change slider value
    [_slider setValue:total];

    //change segmentedControls
    int unit = total % 10;
    [_tenSegment setSelectedSegmentIndex:(total - unit) / 10];
    [_unitSegment setSelectedSegmentIndex:unit];

    if(isGeek){
        //total hexa
        [_totalhexaLabel setText:[NSString stringWithFormat: @"%X", total]];
        if(total == 42){
            [_totalhexaLabel setTextColor:[UIColor blueColor]];
        } else {
            [_totalLabel setTextColor:[UIColor redColor]];
        }
        
        //change segmented hexa
        int unit_h = total % 16;
        [_hex2Segment setSelectedSegmentIndex:(total - unit_h) / 16];
        [_hex1Segment setSelectedSegmentIndex:unit_h];

        //display
        [_hex1label setHidden:FALSE];
        [_hex1Segment setHidden:FALSE];
        [_hex2Label setHidden:FALSE];
        [_hex2Segment setHidden:FALSE];
        [_totalhexaLabel setHidden:FALSE];
    } else {
        //hide
        [_hex1label setHidden:TRUE];
        [_hex1Segment setHidden:TRUE];
        [_hex2Label setHidden:TRUE];
        [_hex2Segment setHidden:TRUE];
        [_totalhexaLabel setHidden:TRUE];
    }
}


@end
