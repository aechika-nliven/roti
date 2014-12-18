//
//  PollModel.h
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MeetingModel.h"

@interface PollModel : NSObject

+ (PollModel *)getCurrent;

@property NSMutableArray* meetings;

@end
