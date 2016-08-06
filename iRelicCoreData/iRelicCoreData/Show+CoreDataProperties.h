//
//  Show+CoreDataProperties.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Show.h"

NS_ASSUME_NONNULL_BEGIN

@interface Show (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSString *subtitle;
@property (nullable, nonatomic, retain) NSString *desc;
@property (nullable, nonatomic, retain) NSString *gallery;
@property (nullable, nonatomic, retain) NSString *dates;
@property (nullable, nonatomic, retain) NSSet<Piece *> *pieces;
@property (nullable, nonatomic, retain) Curator *curator;
@property (nullable, nonatomic, retain) NSSet<Patron *> *patrons;

@end

@interface Show (CoreDataGeneratedAccessors)

- (void)addPiecesObject:(Piece *)value;
- (void)removePiecesObject:(Piece *)value;
- (void)addPieces:(NSSet<Piece *> *)values;
- (void)removePieces:(NSSet<Piece *> *)values;

- (void)addPatronsObject:(Patron *)value;
- (void)removePatronsObject:(Patron *)value;
- (void)addPatrons:(NSSet<Patron *> *)values;
- (void)removePatrons:(NSSet<Patron *> *)values;

@end

NS_ASSUME_NONNULL_END
