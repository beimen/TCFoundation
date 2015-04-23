//
//  NSDateFormatter+Extensions.m
//  portfolio
//
//  Created by beimen on 22/4/15.
//  Copyright (c) 2015 timecoco. All rights reserved.
//

#import "NSDateFormatter+Extensions.h"

@implementation NSDateFormatter (Extensions)

+ (NSDateFormatter *)UTCFormatter {
    static NSDateFormatter *formatter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        formatter = [[NSDateFormatter alloc] init];
        formatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ssZ";
        NSTimeZone *timeZone = [NSTimeZone localTimeZone];
        [formatter setTimeZone:timeZone];
    });
    return formatter;
}

@end
