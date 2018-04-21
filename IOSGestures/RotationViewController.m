//
//  RotationViewController.m
//  IOSGestures
//
//  Created by ruijia lin on 4/20/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()
@property (strong, nonatomic) IBOutlet UIView *rotationView;

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)rotation:(UIRotationGestureRecognizer *)sender {

        sender.view.transform = CGAffineTransformRotate(sender.view.transform, sender.rotation);
        sender.rotation = 0.0;
}

@end
