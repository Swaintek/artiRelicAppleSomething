//
//  Piece.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Beacon, Show;


NS_ASSUME_NONNULL_BEGIN

@interface Piece : NSManagedObject

+ (instancetype)pieceWithTitle: (NSString *)title subtitle:(NSString *)subtitle desc:(NSString *)desc artist:(NSString *)artist medium:(NSString *)medium price:(NSString *)price dimensions:(NSString *)dimensions show:(Show *)show beacon:(Beacon *)beacon;

@end

NS_ASSUME_NONNULL_END

#import "Piece+CoreDataProperties.h"
