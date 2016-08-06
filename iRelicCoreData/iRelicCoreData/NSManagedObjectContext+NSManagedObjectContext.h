//
//  NSManagedObjectContext+NSManagedObjectContext.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "CoreDataStack.h"

@interface NSManagedObjectContext (NSManagedObjectContext)

+ (NSManagedObjectContext *)managerContext;

@end
