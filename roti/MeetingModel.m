//
//  MeetingModel.m
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import "MeetingModel.h"

@implementation MeetingModel

-(MeetingModel*)init
{
    self.votes = @[].mutableCopy;
    
    return [super init];
}

@end
