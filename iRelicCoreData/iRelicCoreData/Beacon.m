//
//  Beacon.m
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "Beacon.h"
#import "Piece.h"
#import "NSManagedObjectContext+NSManagedObjectContext.h"

@implementation Beacon

+ (instancetype)beaconWithUIID: (NSString *)uiid major:(NSString *)major minor:(NSString *)minor
{
    Beacon *beacon = [NSEntityDescription insertNewObjectForEntityForName:@"Beacon" inManagedObjectContext:[NSManagedObjectContext managerContext]];
    beacon.uiid = uiid;
    beacon.major = major;
    beacon.minor = minor;
    
    return beacon;
}

@end
