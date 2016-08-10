//
//  ShowOverviewViewController.m
//  artiRelicAppleSomething
//
//  Created by Erin Roby on 8/8/16.
//  Copyright © 2016 Erin Roby. All rights reserved.
//

#import "ShowOverviewViewController.h"

@interface ShowOverviewViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *pieceCollectionView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *editButton;
- (IBAction)editButtonSelected:(id)sender;
@property(strong, nonatomic)NSArray *dataSource;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *publishButton;
- (IBAction)publishButtonSelected:(UIBarButtonItem *)sender;

@end

@implementation ShowOverviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.pieceCollectionView.delegate = self;
    self.pieceCollectionView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSArray *)dataSource {
    return [self.show.pieces allObjects];
}

- (IBAction)editButtonSelected:(id)sender {
}

#pragma MARK - UICollectionViewDelegate methods

#pragma MARK - UICollectionViewDataSource methods

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.dataSource.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"pieceCell" forIndexPath:indexPath];
    UIImageView *cellImageView = [[UIImageView alloc]initWithFrame:(CGRectMake(0.0, 0.0, 150.0, 150.0))];
    [cell.contentView addSubview:cellImageView];
    
    return cell;
}

- (IBAction)publishButtonSelected:(UIBarButtonItem *)sender {
}
@end
