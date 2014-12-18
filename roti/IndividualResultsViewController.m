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
    self.lblAverage.text = [NSString stringWithFormat:@"%1.2f", [self calculateAverage]];
}

- (int)calculateTotal {
    int total = 0;
    
    for (NSNumber* n in self.meetingModel.votes) {
        NSLog(@"Voting Result = %@", n);
        total += [n intValue];
    }
    
    NSLog(@"Voting Total = %d", total);
    
    return total;
}

- (double)calculateAverage {
    double average = [self calculateTotal]/(double)[self.meetingModel.votes count];
    
    NSLog(@"Average = %f", average);
    
    return average;
}

@end
