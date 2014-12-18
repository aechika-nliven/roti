//
//  PollModel.m
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import "PollModel.h"

@implementation PollModel

+ (PollModel *)getCurrent
{
    static PollModel *object;
    if (!object) {
        object = [PollModel alloc];
        object.meetings = @[].mutableCopy;

    }
    return object;
}

@end
