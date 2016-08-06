//
//  Beacon.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Piece;

NS_ASSUME_NONNULL_BEGIN

@interface Beacon : NSManagedObject

+ (instancetype)beaconWithUIID: (NSString *)uiid major:(NSString *)major minor:(NSString *)minor;

@end

NS_ASSUME_NONNULL_END

#import "Beacon+CoreDataProperties.h"
