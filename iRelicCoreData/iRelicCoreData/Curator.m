//
//  Curator.m
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "Curator.h"
#import "Show.h"
#import "NSManagedObjectContext+NSManagedObjectContext.h"

@implementation Curator

+ (instancetype) curatorWithUserName:(NSString *)userName password:(NSString *)password firstName:(NSString *)firstName lastName:(NSString *)lastName shows:(NSSet<Show *> *)shows
{
    Curator *curator = [NSEntityDescription insertNewObjectForEntityForName:@"Curator" inManagedObjectContext:[NSManagedObjectContext managerContext]];
    curator.userName = userName;
    curator.password = password;
    curator.firstName = firstName;
    curator.lastName = lastName;
    curator.shows = shows;
    
    return curator;
}

@end
