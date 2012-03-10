//
//  ViewController.m
//  Transition with View
//
//  Created by Lion User on 3/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize rearsideView;
@synthesize frontsideView;
@synthesize containerView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [rearsideView removeFromSuperview];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)flipToBack {
    [UIView transitionWithView:containerView
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                        [frontsideView removeFromSuperview]; 
                        [containerView addSubview:rearsideView]; }
                    completion:NULL];
}

- (void)flipToFront {
    [UIView transitionWithView:containerView
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{
                        [rearsideView removeFromSuperview]; 
                        [containerView addSubview:frontsideView]; }
                    completion:NULL];
}

- (IBAction) doFlip:(id)sender
{
    if (rearsideView.superview) {
        [self flipToFront];
    } else {
        [self flipToBack];
    }
}

@end
