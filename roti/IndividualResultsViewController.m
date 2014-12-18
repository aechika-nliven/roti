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
    
    [self setImageByAverage:[self.meetingModel calculateAverage]];
}

- (void)setImageByAverage:(double)average {
    NSString *assetName = @"";
    
    if (average >= 1.5) {
        assetName = @"imgPollLevel2";
    }
    else if (average >= 0.5 && average < 1.5) {
        assetName = @"imgPollLevel1";
    }
    else if (average >= -0.5 && average < 0.5) {
        assetName = @"imgPollLevel0";
    }
    else if (average >= -1.5 && average < -0.5) {
        assetName = @"imgPollLevel-1";
    }
    else if (average < -1.5) {
        assetName = @"imgPollLevel-2";
    }

    [self.imgOverallResult setImage:[UIImage imageNamed:assetName]];
}

@end
