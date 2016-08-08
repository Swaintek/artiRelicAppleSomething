//
//  Piece+CoreDataProperties.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/8/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Piece.h"

NS_ASSUME_NONNULL_BEGIN

@interface Piece (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSString *subtitle;
@property (nullable, nonatomic, retain) NSString *desc;
@property (nullable, nonatomic, retain) NSString *artist;
@property (nullable, nonatomic, retain) NSString *medium;
@property (nullable, nonatomic, retain) NSString *price;
@property (nullable, nonatomic, retain) NSString *dimensions;
@property (nullable, nonatomic, retain) NSData *image;
@property (nullable, nonatomic, retain) NSData *imageThumbnail;
@property (nullable, nonatomic, retain) NSData *audio;
@property (nullable, nonatomic, retain) Show *show;
@property (nullable, nonatomic, retain) Beacon *beacon;

@end

NS_ASSUME_NONNULL_END
