//
//  MeetingModel.h
//  roti
//
//  Created by Anthony Chika on 12/17/14.
//  Copyright (c) 2014 Anthony Chika. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MeetingModel : NSObject

@property NSString* name;
@property NSString* date;
@property NSMutableArray* votes;

- (double)calculateAverage;

@end
