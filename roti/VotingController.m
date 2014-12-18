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
@property UIView *flashView;

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
    [self flashScreen];
    [self.meetingModel.votes addObject:[NSNumber numberWithInteger: ((UIButton*)sender).tag]];
    
    NSLog(@"Added vote: %@", [self.meetingModel.votes lastObject]);
}

- (void)flashScreen
{
    //make the view if we haven't already and add it as a subview
    if(_flashView == nil)
    {
        _flashView = [[UIView alloc]
                     initWithFrame:CGRectMake(0,
                                              0,
                                              self.view.frame.size.width,
                                              self.view.frame.size.height)];
        _flashView.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:_flashView];
    }
    
    [_flashView setAlpha:1.0f];
    
    
    //flash animation code
    [UIView beginAnimations:@"flash screen" context:nil];
    [UIView setAnimationDuration:0.9f];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    
    [_flashView setAlpha:0.0f];
    
    [UIView commitAnimations];
    
}

@end
