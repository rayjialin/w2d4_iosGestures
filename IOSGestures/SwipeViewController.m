//
//  SwipeViewController.m
//  IOSGestures
//
//  Created by ruijia lin on 4/20/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()
@property (weak, nonatomic) IBOutlet UIView *whiteView;
@property (weak, nonatomic) IBOutlet UIView *grayView;
@property (nonatomic) BOOL isSwipe;
@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.isSwipe = NO;
    UISwipeGestureRecognizer *leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    
    UISwipeGestureRecognizer *rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
//    self.whiteView.clipsToBounds = YES;
    [self.grayView addGestureRecognizer:leftSwipe];
    [self.grayView addGestureRecognizer:rightSwipe];
    
}

-(void)swipe:(UISwipeGestureRecognizer *)sender{
    if (sender.direction == UISwipeGestureRecognizerDirectionRight){
        if (self.isSwipe == YES){
            [UIView animateWithDuration:0.5 animations:^{
                sender.view.frame = CGRectMake(sender.view.frame.origin.x + sender.view.frame.size.width / 3, sender.view.frame.origin.y, sender.view.frame.size.width, sender.view.frame.size.height);
                self.isSwipe = NO;
            }];
        }
    }else if (sender.direction == UISwipeGestureRecognizerDirectionLeft){
        
        if (self.isSwipe == NO){
            [UIView animateWithDuration:0.5 animations:^{
                sender.view.frame = CGRectMake(sender.view.frame.origin.x - sender.view.frame.size.width / 3, sender.view.frame.origin.y, sender.view.frame.size.width, sender.view.frame.size.height);
                self.isSwipe = YES;
            }];
        }
    }
    
}
@end
