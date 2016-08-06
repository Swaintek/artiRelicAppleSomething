//
//  NSManagedObjectContext+NSManagedObjectContext.m
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "NSManagedObjectContext+NSManagedObjectContext.h"

@implementation NSManagedObjectContext (NSManagedObjectContext)

+ (NSManagedObjectContext *)managerContext
{
    return [[CoreDataStack shared]managedObjectContext];
}

@end
