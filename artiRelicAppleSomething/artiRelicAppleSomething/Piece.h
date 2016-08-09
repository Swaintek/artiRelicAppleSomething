//
//  Piece.h
//  artiRelicAppleSomething
//
//  Created by Jeremy Moore on 8/8/16.
//  Copyright © 2016 Erin Roby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "CoreDataStack.h"
#import "NSManagedObjectContext+NSManagedObjectContext.h"

@class Beacon, Show;

NS_ASSUME_NONNULL_BEGIN

@interface Piece : NSManagedObject

+ (instancetype)pieceWithTitle:(NSString *)title desc:(NSString *)desc artist:(NSString *)artist price:(NSString *)price;

@end

NS_ASSUME_NONNULL_END

#import "Piece+CoreDataProperties.h"
