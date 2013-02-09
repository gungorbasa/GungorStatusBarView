//
//  GungorStatusBarView.h
//  StatusBarView
//
//  Created by Gungor Basa on 2/9/13.
//  Copyright (c) 2013 Gungor Basa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GungorStatusBarView : UIView
- (id)initGungorStatusBarWith:(UIImage *)image Text:(NSString *)str;
- (id)initWithText:(NSString *)str;
- (void)addViewToWindow;
@end
