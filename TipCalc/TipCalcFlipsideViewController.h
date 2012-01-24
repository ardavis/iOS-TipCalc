//
//  TipCalcFlipsideViewController.h
//  TipCalc
//
//  Created by Andrew Davis on 1/24/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TipCalcFlipsideViewController;

@protocol TipCalcFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(TipCalcFlipsideViewController *)controller;
@end

@interface TipCalcFlipsideViewController : UIViewController

@property (weak, nonatomic) IBOutlet id <TipCalcFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
