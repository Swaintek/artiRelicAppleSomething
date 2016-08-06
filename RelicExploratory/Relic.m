//
//  Relic.m
//  RelicExploratory
//
//  Created by Jeremy Moore on 8/4/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "Relic.h"

@implementation Relic

@dynamic title;
@dynamic body;
@dynamic image;

+ (void)load
{
    [self registerSubclass];
}

+ (NSString *)parseClassName
{
    return @"Relic";
}

@end
