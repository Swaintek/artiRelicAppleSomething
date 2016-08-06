//
//  Show.m
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "Show.h"
#import "Curator.h"
#import "Patron.h"
#import "Piece.h"
#import "NSManagedObjectContext+NSManagedObjectContext.h"

@implementation Show

+ (instancetype)showWithTitle:(NSString *)title subtitle:(NSString *)subtitle desc:(NSString *)desc gallery:(NSString *)gallery dates:(NSString *)dates pieces:(NSSet<Piece *> *)pieces curator:(Curator *)curator patrons:(NSSet<Patron *> *)patrons
{
    Show *show = [NSEntityDescription insertNewObjectForEntityForName:@"Show" inManagedObjectContext:[NSManagedObjectContext managerContext]];
    
    show.title = title;
    show.subtitle = subtitle;
    show.desc = desc;
    show.gallery = gallery;
    show.dates = dates;
    show.pieces = pieces;
    show.curator = curator;
    show.patrons = patrons;
    
    return show;
}

@end
