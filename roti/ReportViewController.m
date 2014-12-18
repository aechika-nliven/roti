//
//  ReportViewController.m
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import "ReportViewController.h"
#import "ReportItemTableCellTableViewCell.h"
#import "PollModel.h"

@interface ReportViewController ()

@property NSArray * meetings;

@end

@implementation ReportViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.meetings = [PollModel getCurrent].meetings;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.meetings.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ReportItemTableCellTableViewCell
    *cell = [tableView dequeueReusableCellWithIdentifier:@"meetingItem"];
    
    [cell initWithModel:self.meetings[indexPath.row]];
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return ((UITableViewHeaderFooterView *) [tableView dequeueReusableCellWithIdentifier:@"meetingItemHeader"]).frame.size.height;
}


-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UITableViewHeaderFooterView *header = [tableView dequeueReusableCellWithIdentifier:@"meetingItemHeader"];
    return header;

}

- (IBAction)doneClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
@end
