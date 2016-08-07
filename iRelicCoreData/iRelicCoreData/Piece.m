//
//  Piece.m
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "Piece.h"
#import "Beacon.h"
#import "Show.h"
#import "NSManagedObjectContext+NSManagedObjectContext.h"

@implementation Piece

+ (instancetype)pieceWithTitle: (NSString *)title subtitle:(NSString *)subtitle desc:(NSString *)desc artist:(NSString *)artist medium:(NSString *)medium price:(NSString *)price dimensions:(NSString *)dimensions
{
    Piece *piece = [NSEntityDescription insertNewObjectForEntityForName:@"Piece" inManagedObjectContext:[NSManagedObjectContext managerContext]];

    piece.title = title;
    piece.subtitle = subtitle;
    piece.desc = desc;
    piece.artist = artist;
    piece.medium = medium;
    piece.price = price;
    piece.dimensions = dimensions;
    
    return piece;
}

@end
