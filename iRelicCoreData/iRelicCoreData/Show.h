//
//  Show.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Curator, Patron, Piece;


NS_ASSUME_NONNULL_BEGIN

@interface Show : NSManagedObject

+ (instancetype)showWithTitle:(NSString *)title subtitle:(NSString *)subtitle desc:(NSString *)desc gallery:(NSString *)gallery dates:(NSString *)dates pieces:(NSSet<Piece *> *)pieces curator:(Curator *)curator patrons:(NSSet<Patron *> *)patrons;

@end

NS_ASSUME_NONNULL_END

#import "Show+CoreDataProperties.h"
