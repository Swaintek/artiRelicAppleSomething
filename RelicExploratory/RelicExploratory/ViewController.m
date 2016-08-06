//
//  ViewController.m
//  RelicExploratory
//
//  Created by Jeremy Moore on 8/3/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
#import "Relic.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *bodyField;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
- (IBAction)saveButtonSelected:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.titleField setClearsOnBeginEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonSelected:(id)sender {
    
    NSString *title = self.titleField.text;
    NSString *body = self.bodyField.text;
    
    Relic *relic = [Relic object];

    relic.title = title;
    relic.body = body;
    [relic saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        if (succeeded) {
            NSLog(@"Save succeeded: %d. Error: %@", succeeded, error);

        } else {
        NSLog(@"Save error: %d. Error: %@", succeeded, error);
        }
        }];
}


@end
