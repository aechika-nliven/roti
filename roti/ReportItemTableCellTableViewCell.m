//
//  ReportItemTableCellTableViewCell.m
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import "ReportItemTableCellTableViewCell.h"

@implementation ReportItemTableCellTableViewCell

-(void)initWithModel: (MeetingModel*)meetingModel {
    self.txtMeetingName.text = meetingModel.name;
    self.txtMeetingDate.text = meetingModel.date;
    
    self.txtNumberOfVotes.text = [NSString stringWithFormat:@"Votes: %lu", (unsigned long)[meetingModel.votes count]];
    self.txtAverage.text = [NSString stringWithFormat:@"Average %1.2f", [meetingModel calculateAverage]];

    [self setImageByAverage:[meetingModel calculateAverage]];
}


- (void)setImageByAverage:(double)average {
    NSString *assetName = @"";
    
    if (average >= 1.5) {
        assetName = @"PollLevel+2";
    }
    else if (average >= 0.5 && average < 1.5) {
        assetName = @"PollLevel+1";
    }
    else if (average >= -0.5 && average < 0.5) {
        assetName = @"PollLevel0";
    }
    else if (average >= -1.5 && average < -0.5) {
        assetName = @"PollLevel-1";
    }
    else if (average < -1.5) {
        assetName = @"PollLevel-2";
    }

    
    [self.imgResult setImage:[UIImage imageNamed:assetName]];
}

@end
