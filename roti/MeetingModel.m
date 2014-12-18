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

- (int)calculateTotal {
    int total = 0;
    
    for (NSNumber* n in self.votes) {
        NSLog(@"Voting Result = %@", n);
        total += [n intValue];
    }
    
    NSLog(@"Voting Total = %d", total);
    
    return total;
}

- (double)calculateAverage {
    double average = [self calculateTotal]/(double)[self.votes count];
    
    NSLog(@"Average = %f", average);
    
    return average;
}

@end
