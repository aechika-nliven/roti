//
//  ReportItemTableCellTableViewCell.h
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MeetingModel.h"

@interface ReportItemTableCellTableViewCell : UITableViewCell

-(void)initWithModel: (MeetingModel*)meetingModel;
@property (weak, nonatomic) IBOutlet UILabel *txtMeetingName;
@property (weak, nonatomic) IBOutlet UILabel *txtMeetingDate;
@property (weak, nonatomic) IBOutlet UILabel *txtNumberOfVotes;
@property (weak, nonatomic) IBOutlet UILabel *txtAverage;

@end
