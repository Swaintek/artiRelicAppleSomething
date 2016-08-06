//
//  Curator.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Show;

NS_ASSUME_NONNULL_BEGIN

@interface Curator : NSManagedObject

+ (instancetype) curatorWithUserName:(NSString *)userName password:(NSString *)password firstName:(NSString *)firstName lastName:(NSString *)lastName shows:(NSSet<Show *> *)shows;

@end

NS_ASSUME_NONNULL_END

#import "Curator+CoreDataProperties.h"
