//
//  ShowOverviewViewController.m
//  artiRelicAppleSomething
//
//  Created by Erin Roby on 8/8/16.
//  Copyright © 2016 Erin Roby. All rights reserved.
//

#import "ShowOverviewViewController.h"

@interface ShowOverviewViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *pieceCollectionView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *editButton;
- (IBAction)editButtonSelected:(id)sender;

@end

@implementation ShowOverviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)editButtonSelected:(id)sender {
}
@end
