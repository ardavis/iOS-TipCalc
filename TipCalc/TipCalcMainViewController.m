//
//  TipCalcMainViewController.m
//  TipCalc
//
//  Created by Andrew Davis on 1/24/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "TipCalcMainViewController.h"

@implementation TipCalcMainViewController
@synthesize tipTextField;
@synthesize totalTextField;
@synthesize billTextField;
@synthesize rateField;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setBillTextField:nil];
    [self setTipTextField:nil];
    [self setTotalTextField:nil];
    [self setRateField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(TipCalcFlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

- (IBAction)digitPressed:(UIButton *)sender {
    NSString *text = [NSString stringWithFormat:@"%@%@", billTextField.text, sender.titleLabel.text];
    
    billTextField.text = text;
    
    [self rateSelected:self.rateField];
}

- (IBAction)clearPressed:(id)sender {
    billTextField.text = @"";
    tipTextField.text = @"";
    totalTextField.text = @"";
    
}

- (IBAction)rateSelected:(UISegmentedControl *)sender {
    
    double bill = [billTextField.text doubleValue];
    
    // Update the Tip field
    switch ([sender selectedSegmentIndex]) 
    {
        case 0:
            // 10%
            tipTextField.text = [NSString stringWithFormat:@"%g", (bill * 0.1)];
                
            break;
        case 1:
            // 15%
            tipTextField.text = [NSString stringWithFormat:@"%g", (bill * 0.15)];
            
            break;
        case 2:
            // 20%
            tipTextField.text = [NSString stringWithFormat:@"%g", (bill * 0.2)];
            
            break;
            
    }
    
    // Update the Total field
    double tip = [tipTextField.text doubleValue];
    double total = bill + tip;
    totalTextField.text = [NSString stringWithFormat:@"%g", total];
}
@end























