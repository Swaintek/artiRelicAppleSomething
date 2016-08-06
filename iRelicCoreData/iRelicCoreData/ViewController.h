//
//  ViewController.h
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Curator.h"
#import "Show.h"
#import "Piece.h"
#import "Beacon.h"
#import "CoreDataStack.h"
#import "NSManagedObjectContext+NSManagedObjectContext.h"

@interface ViewController : UIViewController

@property (strong, nonatomic)Curator *curator;

@end

