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

}


@end
