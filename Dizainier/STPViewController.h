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
}

@property (weak, nonatomic) IBOutlet UISegmentedControl *tenSegment;
@property (weak, nonatomic) IBOutlet UISegmentedControl *unitSegment;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

- (IBAction)tenChange:(id)sender;

- (void) updateInterface;

@end
