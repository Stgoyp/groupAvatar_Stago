//
//  ViewController.m
//  group
//
//  Created by bitzsoft_mac on 15/10/20.
//  Copyright (c) 2015年 stago_yp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.gBtn1 setupCircleBtnWithArr:@[@"5.jpg"]];
    [self.gBtn2 setupCircleBtnWithArr:@[@"1.jpg",@"2.jpg"]];
    [self.gBtn3 setupCircleBtnWithArr:@[@"1.jpg",@"2.jpg",@"3.jpg"]];
    [self.gBtn4 setupCircleBtnWithArr:@[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"]];
    [self.gBtn5 setupCircleBtnWithArr:@[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg"]];
    // Do any additional setup after loading the view, typically from a nib.
}

@end
