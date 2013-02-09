//
//  GungorStatusBarView.m
//  StatusBarView
//
//  Created by Gungor Basa on 2/9/13.
//  Copyright (c) 2013 Gungor Basa. All rights reserved.
//

#import "GungorStatusBarView.h"

@implementation GungorStatusBarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(deleteViewFromSuperView) userInfo:nil repeats:NO];
        [[[UIApplication sharedApplication] keyWindow]setWindowLevel:UIWindowLevelStatusBar + 1];
        [[[UIApplication sharedApplication] keyWindow]setBackgroundColor:[UIColor clearColor]];
        [self setBackgroundColor:[UIColor blackColor]];
    }
    return self;
}

- (id)initGungorStatusBarWith:(UIImage *)image Text:(NSString *)str{
    self = [self initWithFrame:CGRectMake(0, -20, [UIApplication sharedApplication].statusBarFrame.size.width, [UIApplication sharedApplication].statusBarFrame.size.height)];
    if (self) {
        UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(5, 1, 18, 18)];
        imageView.image = image;
        [self addSubview:imageView];
        UILabel * textLabel = [[UILabel alloc]initWithFrame:CGRectMake(30, 0, 285, 20)];
        [textLabel setBackgroundColor:[UIColor clearColor]];
        [textLabel setFont:[UIFont boldSystemFontOfSize:13]];
        [textLabel setTextColor:[UIColor whiteColor]];
        [textLabel setText:str];
        [self addSubview:textLabel];
    }
    return self;
}

- (id)initWithText:(NSString *)str{
    self = [self initWithFrame:CGRectMake(0, -20, [UIApplication sharedApplication].statusBarFrame.size.width, [UIApplication sharedApplication].statusBarFrame.size.height)];
    if (self) {
        UILabel * textLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, 310, 20)];
        [textLabel setBackgroundColor:[UIColor clearColor]];
        [textLabel setFont:[UIFont boldSystemFontOfSize:13]];
        [textLabel setTextColor:[UIColor whiteColor]];
        [textLabel setText:str];
        [self addSubview:textLabel];
    }
    return self;
}

- (void)addViewToWindow{
    [[[UIApplication sharedApplication] keyWindow] addSubview:self];
    [UIView animateWithDuration:1.0 animations:^{
        [self setFrame:CGRectMake(0, 0, [UIApplication sharedApplication].statusBarFrame.size.width, [UIApplication sharedApplication].statusBarFrame.size.height)];
    } completion:^(BOOL finished) {
        
    }];   
}

- (void)deleteViewFromSuperView{
    [UIView animateWithDuration:1.0 animations:^{
        [self setFrame:CGRectMake(0, -20, [UIApplication sharedApplication].statusBarFrame.size.width, [UIApplication sharedApplication].statusBarFrame.size.height)];
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
