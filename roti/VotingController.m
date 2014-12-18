//
//  ViewController.m
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import "VotingController.h"
#import "PollModel.h"

@interface VotingController ()

@property MeetingModel * meetingModel;

@end

@implementation VotingController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.meetingModel = [[PollModel getCurrent].meetings lastObject];
    
    self.txtMeetingName.text = self.meetingModel.name;
    self.txtMeetingDate.text = self.meetingModel.date;
}

- (IBAction)voteClicked:(id)sender {
    [self.meetingModel.votes addObject:[NSNumber numberWithInteger: ((UIButton*)sender).tag]];
    
    NSLog(@"Added vote: %@", [self.meetingModel.votes lastObject]);
}
@end
