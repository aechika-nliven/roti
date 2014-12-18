//
//  IndividualResultsViewController.m
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import "IndividualResultsViewController.h"
#import "PollModel.h"

@interface IndividualResultsViewController ()

@property MeetingModel * meetingModel;

@end

@implementation IndividualResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.meetingModel = [[PollModel getCurrent].meetings lastObject];
    
    self.txtMeetingName.text = self.meetingModel.name;
    self.txtMeetingDate.text = self.meetingModel.date;
    
    self.lblCount.text = [NSString stringWithFormat:@"%lu", (unsigned long)[self.meetingModel.votes count]];
    self.lblAverage.text = [NSString stringWithFormat:@"%1.2f", [self.meetingModel calculateAverage]];
}

@end
