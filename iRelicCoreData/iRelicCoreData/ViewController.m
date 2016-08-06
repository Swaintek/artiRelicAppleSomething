//
//  ViewController.m
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
- (IBAction)saveButtonSelected:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Beacon *beacon = [Beacon beaconWithUIID:@"test1" major:@"test1" minor:@"test1"];
    Piece *piece = [Piece pieceWithTitle:@"test1" subtitle:@"test1" desc:@"test1" artist:@"test1" medium:@"test1" price:@"test1" dimensions:@"test1" show:[self.curator.shows filteredSetUsingPredicate:<#(nonnull NSPredicate *)#>] beacon:beacon];
    self.curator = [Curator curatorWithUserName:@"test1" password:@"test1" firstName:@"test1" lastName:@"test1" shows:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonSelected:(id)sender {
}
@end
