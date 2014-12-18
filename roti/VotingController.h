//
//  ViewController.h
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VotingController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *txtMeetingDate;
@property (weak, nonatomic) IBOutlet UILabel *txtMeetingName;


- (IBAction)voteClicked:(id)sender;

@end

