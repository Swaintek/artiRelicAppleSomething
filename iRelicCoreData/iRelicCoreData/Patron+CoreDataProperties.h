//
//  Patron+CoreDataProperties.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/7/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Patron.h"

NS_ASSUME_NONNULL_BEGIN

@interface Patron (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *atShow;
@property (nullable, nonatomic, retain) Show *show;

@end

NS_ASSUME_NONNULL_END
