//
//  EdgePanViewController.m
//  IOSGestures
//
//  Created by ruijia lin on 4/20/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "EdgePanViewController.h"

@interface EdgePanViewController ()
@property (nonatomic) UIRectEdge *edge;
@property (weak, nonatomic) IBOutlet UIView *edgePanView;
@property (nonatomic) BOOL isOpened;
@end

@implementation EdgePanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.isOpened = NO;
    
}

- (IBAction)edgePan:(UIScreenEdgePanGestureRecognizer *)sender {
    
    if (self.isOpened == NO){
        
        [UIView animateWithDuration:1 animations:^{
            self.edgePanView.frame = CGRectMake(self.edgePanView.frame.origin.x - self.edgePanView.frame.size.width / 2, self.edgePanView.frame.origin.y, self.edgePanView.frame.size.width, self.edgePanView.frame.size.height);
        }];
        self.isOpened = YES;
    }
    //        else if (self.isOpened == YES){
    //    
    //            [UIView animateWithDuration:1 animations:^{
    //                self.edgePanView.frame = CGRectMake(self.edgePanView.frame.origin.x + self.edgePanView.frame.size.width / 2, self.edgePanView.frame.origin.y, self.edgePanView.frame.size.width, self.edgePanView.frame.size.height);
    //            }];
    //
    //            self.isOpened = NO;
    //
    //        }
}
- (IBAction)tap:(UITapGestureRecognizer *)sender {
    if (self.isOpened == YES){
        
        [UIView animateWithDuration:1 animations:^{
            self.edgePanView.frame = CGRectMake(self.edgePanView.frame.origin.x + self.edgePanView.frame.size.width / 2, self.edgePanView.frame.origin.y, self.edgePanView.frame.size.width, self.edgePanView.frame.size.height);
        }];
        
        self.isOpened = NO;
        
    }
}

@end
