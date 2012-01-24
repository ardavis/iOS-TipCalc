//
//  TipCalcMainViewController.h
//  TipCalc
//
//  Created by Andrew Davis on 1/24/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "TipCalcFlipsideViewController.h"

@interface TipCalcMainViewController : UIViewController <TipCalcFlipsideViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *tipTextField;
@property (weak, nonatomic) IBOutlet UITextField *totalTextField;
@property (weak, nonatomic) IBOutlet UITextField *billTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *rateField;

- (IBAction)digitPressed:(UIButton*)sender;
- (IBAction)clearPressed:(id)sender;
- (IBAction)rateSelected:(UISegmentedControl *)sender;
@end
