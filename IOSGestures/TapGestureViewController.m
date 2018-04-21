//
//  TapGestureViewController.m
//  IOSGestures
//
//  Created by ruijia lin on 4/20/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "TapGestureViewController.h"

@interface TapGestureViewController ()

@end

@implementation TapGestureViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    
    UIView *tapView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
    tapView.translatesAutoresizingMaskIntoConstraints = NO;
    tapView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:tapView];
    [tapView addGestureRecognizer:tap];
    
    [tapView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [tapView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [tapView.heightAnchor constraintEqualToConstant:100].active = YES;
    [tapView.widthAnchor constraintEqualToConstant:100].active = YES;
}

-(void)tap:(UITapGestureRecognizer *)sender{
    UIColor *color = [sender.view.backgroundColor isEqual:[UIColor greenColor]] ? [UIColor yellowColor] : [UIColor greenColor];
    sender.view.backgroundColor = color;
}

@end
