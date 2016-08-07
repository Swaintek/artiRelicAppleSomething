//
//  Curator+CoreDataProperties.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/7/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Curator.h"

NS_ASSUME_NONNULL_BEGIN

@interface Curator (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *userName;
@property (nullable, nonatomic, retain) NSString *password;
@property (nullable, nonatomic, retain) NSString *firstName;
@property (nullable, nonatomic, retain) NSString *lastName;
@property (nullable, nonatomic, retain) NSSet<Show *> *shows;

@end

@interface Curator (CoreDataGeneratedAccessors)

- (void)addShowsObject:(Show *)value;
- (void)removeShowsObject:(Show *)value;
- (void)addShows:(NSSet<Show *> *)values;
- (void)removeShows:(NSSet<Show *> *)values;

@end

NS_ASSUME_NONNULL_END
