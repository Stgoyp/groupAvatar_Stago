//
//  GroupBtn.m
//  group
//
//  Created by bitzsoft_mac on 15/10/20.
//  Copyright (c) 2015年 stago_yp. All rights reserved.
//

#import "GroupBtn.h"

#define Btn_Width   self.bounds.size.width
#define Btn_Height  self.bounds.size.height

#define Back_Color  [UIColor colorWithRed:215/255.0 green:217/255.0 blue:218/255.0 alpha:1];
//#define randomCOlOR [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1];

#define Img_Width   self.bounds.size.width/(2*sqrt(2))

@implementation GroupBtn

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = Btn_Width/2.0;
        self.backgroundColor = Back_Color;
        
    }
    return self;
}

- (void)setupCircleBtnWithArr:(NSArray *)arr
{
    switch (arr.count) {
        case 1:
        {
            UIImageView *imgV = [[UIImageView alloc] initWithFrame:self.bounds];
            [self addSubview:imgV];
            imgV.image = [UIImage imageNamed:arr[0]];
//            imgV.backgroundColor = randomCOlOR;
            
            break;
        }
        case 2:
        {
            [self setupImgOnBtn:CGPointMake(self.bounds.size.width * (1)/(2+sqrt(2)), self.bounds.size.height/2) andImgName:arr[0]];
            [self setupImgOnBtn:CGPointMake(self.bounds.size.width * (1+sqrt(2))/(2+sqrt(2)), self.bounds.size.height/2) andImgName:arr[1]];
            
            break;
        }
        case 3:
        {
            [self setupImgOnBtn:CGPointMake(self.bounds.size.width/2, self.bounds.size.height * (1)/(2+sqrt(2))) andImgName:arr[0]];
            [self setupImgOnBtn:CGPointMake(self.bounds.size.width * (1)/(2+sqrt(2)), self.bounds.size.height* (1+sqrt(2))/(2+sqrt(2))) andImgName:arr[1]];
            [self setupImgOnBtn:CGPointMake(self.bounds.size.width * (1+sqrt(2))/(2+sqrt(2)), self.bounds.size.height * (1+sqrt(2))/(2+sqrt(2))) andImgName:arr[2]];

            break;
        }
        default:
        {
            [self setupImgOnBtn:CGPointMake(self.bounds.size.width * (sqrt(2)/(2+2*sqrt(2))), self.bounds.size.height * (sqrt(2)/(2+2*sqrt(2)))) andImgName:arr[0]];
            [self setupImgOnBtn:CGPointMake(self.bounds.size.width * (sqrt(2)/(2+2*sqrt(2))), self.bounds.size.height * ((2+sqrt(2))/(2+2*sqrt(2)))) andImgName:arr[1]];
            [self setupImgOnBtn:CGPointMake(self.bounds.size.width * ((2+sqrt(2))/(2+2*sqrt(2))), self.bounds.size.height * (sqrt(2)/(2+2*sqrt(2)))) andImgName:arr[2]];
            [self setupImgOnBtn:CGPointMake(self.bounds.size.width * ((2+sqrt(2))/(2+2*sqrt(2))), self.bounds.size.height * ((2+sqrt(2))/(2+2*sqrt(2)))) andImgName:arr[3]];

        }
        break;
    }
}

- (void)setupImgOnBtn:(CGPoint)center andImgName:(NSString *)imgName
{
    UIImageView *img = [[UIImageView alloc] init];
    img.center = center;
    img.bounds = CGRectMake(0, 0, Img_Width, Img_Width);
    img.layer.masksToBounds = YES;
    img.layer.cornerRadius = Img_Width/2.0;
    [self addSubview:img];
    
    img.image = [UIImage imageNamed:imgName];
//    img.backgroundColor = randomCOlOR;
}

@end
