//
//  NewPollDetailsViewController.m
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import "NewPollDetailsViewController.h"
#import "PollModel.h"


@interface NewPollDetailsViewController ()

@property MeetingModel * meetingModel;

@end

@implementation NewPollDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MM/dd/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    self.txtDate.text = dateString;
    self.txtMeetingName.text = @"Meeting";
    
    self.meetingModel = [[MeetingModel alloc]init];
    [[PollModel getCurrent].meetings addObject:self.meetingModel];
}

- (void)viewDidAppear:(BOOL)animated {
    [self.txtMeetingName becomeFirstResponder];
}

- (IBAction)cancelNewPollClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"startPollingSegue"]) {
        self.meetingModel.name = self.txtMeetingName.text;
        self.meetingModel.date = self.txtDate.text;
    }
}


@end
