//
//  ViewController.m
//  iRelicCoreData
//
//  Created by Jeremy Moore on 8/6/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "ViewController.h"



@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
- (IBAction)saveButtonSelected:(id)sender;
- (IBAction)pickPhotoSelected:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *pieceImage;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.curator = [Curator curatorWithUserName:@"test1" password:@"test1" firstName:@"test1" lastName:@"test1"];
    Show *show = [Show showWithTitle:@"test1" subtitle:@"test1" desc:@"test1" gallery:@"test1" dates:@"test1" curator:self.curator];
    Piece *piece = [Piece pieceWithTitle:@"test1" subtitle:@"test1" desc:@"test1" artist:@"test1" medium:@"test1" price:@"test1" dimensions:@"test1"];
    [show addPiecesObject:piece];
    [self.curator addShowsObject:show];
    NSLog(@"%@", self.curator);
    
    NSError *error;
    [[NSManagedObjectContext managerContext] save:&error];
    if (error) {
        NSLog(@"Error saving curator: %@", error);
    } else {
        NSLog(@"Saved curator, error code: %@", error);
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonSelected:(id)sender {
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Show"];
    request.returnsObjectsAsFaults = NO;
//    [request setRelationshipKeyPathsForPrefetching:@[@"shows"]];
    NSError *error;
    NSArray *results = [[NSManagedObjectContext managerContext]executeFetchRequest:request error:&error];
    
    if (error) {
        NSLog(@"Error fetching curator: %@",error);
    } else {
//        self.curator = results.firstObject;
//        NSLog(@"Results: %@",results.firstObject);
        self.show = results.firstObject;
        self.piece = [self.show.pieces anyObject];
        NSString *pieceLabel = [NSString stringWithFormat:@"Title: %@  Subtitle: %@", self.piece.title, self.piece.subtitle];
        NSLog(@"Show: %@", self.show);
        NSLog(@"Piece in show: %@", pieceLabel);
        
    }
    
}

- (IBAction)pickPhotoSelected:(id)sender {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker animated:YES completion:nil];
}


#pragma mark UIImagePickerController Delegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    self.piece.image = UIImagePNGRepresentation(info[UIImagePickerControllerOriginalImage]);
    
    self.pieceImage.image = [UIImage imageWithData:self.piece.image];
    
    NSError *error;
    [[NSManagedObjectContext managerContext] save:&error];
    if (error) {
        NSLog(@"Error saving image: %@", error);
    } else {
        NSLog(@"Saved image, error code: %@", error);
    }
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
