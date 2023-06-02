//
//  NHT_Loading.m
//  NHT_Loading_Example
//
//  Created by NHT on 2023/6/1.
//  Copyright © 2023 NHT18610866107@163.com. All rights reserved.
//

#import "NHT_Loading.h"

@implementation NHT_Loading

{
    UIView *bgView;//透明色
}

static NHT_Loading * sharedLoading;


+(NHT_Loading *)sharedLoading{
    
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        CGFloat width = [[UIScreen mainScreen] bounds].size.width;
        CGFloat height = [[UIScreen mainScreen] bounds].size.height;
        sharedLoading = [[NHT_Loading alloc] initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyle)UIActivityIndicatorViewStyleWhiteLarge];
        sharedLoading.frame = [[UIApplication sharedApplication].keyWindow bounds];
        sharedLoading.center = CGPointMake(width/2, height/2);
        sharedLoading.color = [UIColor whiteColor];
        sharedLoading.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:1];
    });
    return sharedLoading;
}
-(void)loadingAnimationStart{
    sharedLoading.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [[UIApplication sharedApplication].keyWindow addSubview:sharedLoading];
    [UIApplication sharedApplication].keyWindow.userInteractionEnabled = NO;
    [sharedLoading startAnimating];
}
-(void)loadingAnimationStop{
    [sharedLoading removeFromSuperview];
    [sharedLoading stopAnimating];
    [UIApplication sharedApplication].keyWindow.userInteractionEnabled = YES;
    //    dispatch_async(dispatch_get_main_queue(), ^{
    //
    //    });
}
-(void)showViewOnlyWithFlower{
    [[UIApplication sharedApplication].keyWindow addSubview:sharedLoading];
    [UIApplication sharedApplication].keyWindow.userInteractionEnabled = NO;
    [sharedLoading startAnimating];
    sharedLoading.backgroundColor = [UIColor clearColor];
}

@end
