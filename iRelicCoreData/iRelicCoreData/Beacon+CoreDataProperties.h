//
//  Beacon+CoreDataProperties.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Beacon.h"

NS_ASSUME_NONNULL_BEGIN

@interface Beacon (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *uiid;
@property (nullable, nonatomic, retain) NSString *major;
@property (nullable, nonatomic, retain) NSString *minor;
@property (nullable, nonatomic, retain) Piece *piece;

@end

NS_ASSUME_NONNULL_END
