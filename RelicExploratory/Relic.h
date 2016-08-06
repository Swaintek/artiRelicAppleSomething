//
//  Relic.h
//  RelicExploratory
//
//  Created by Jeremy Moore on 8/4/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <Parse/Parse.h>

@interface Relic : PFObject <PFSubclassing>

@property (strong, nonatomic)NSString *title;
@property (strong, nonatomic)NSString *body;
@property (strong, nonatomic)UIImage *image;

@end
