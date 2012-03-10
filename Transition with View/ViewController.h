//
//  ViewController.h
//  Transition with View
//
//  Created by Lion User on 3/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIView *rearsideView;
    UIView *frontsideView;
}

@property (nonatomic) IBOutlet UIView *rearsideView;
@property (nonatomic) IBOutlet UIView *frontsideView;
@property (nonatomic) IBOutlet UIView *containerView;

- (IBAction) doFlip:(id)sender;

@end
