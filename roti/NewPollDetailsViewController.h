//
//  NewPollDetailsViewController.h
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewPollDetailsViewController : UIViewController
- (IBAction)cancelNewPollClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtDate;
@property (weak, nonatomic) IBOutlet UITextField *txtMeetingName;

@end
