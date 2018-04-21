//
//  PinchViewController.m
//  IOSGestures
//
//  Created by ruijia lin on 4/20/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

@end

@implementation PinchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 100.0;
    CGFloat height = 100.0;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    
    UIView *pinchView = [[UIView alloc] initWithFrame:frame];
    pinchView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:pinchView];
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(viewPinched:)];
    [pinchView addGestureRecognizer:pinchGesture];
}


-(void)viewPinched:(UIPinchGestureRecognizer *)sender{
    CGFloat scale = sender.scale;
    
    sender.view.transform = CGAffineTransformMakeScale(scale, scale);
    
    scale = 1.0;
}

@end
