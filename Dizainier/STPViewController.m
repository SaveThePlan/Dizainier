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
}

- (IBAction)switchGeek:(id)sender {
    isGeek = !isGeek;
    [self updateInterface];
}

- (void)updateInterface {
    //change totalLabel
    [_totalLabel setText:[NSString stringWithFormat: @"%d", total]];
    if(total == 42){
        [_totalLabel setTextColor:[UIColor redColor]];
    } else {
        [_totalLabel setTextColor:[UIColor blackColor]];
    }
    
    if(isGeek){
        [_totalLabel setTextColor:[UIColor greenColor]];
    }
    
    //change stepper value
    [_stepper setValue:total];
    
    //change segmentedControls
    int unit = total % 10;
    [_tenSegment setSelectedSegmentIndex:(total - unit) / 10];
    [_unitSegment setSelectedSegmentIndex:unit];
    
    //change slider value
    [_slider setValue:total];
    
}


@end
