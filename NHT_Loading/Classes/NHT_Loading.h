//
//  NHT_Loading.h
//  NHT_Loading_Example
//
//  Created by NHT on 2023/6/1.
//  Copyright © 2023 NHT18610866107@163.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NHT_Loading : UIActivityIndicatorView

+(NHT_Loading *)sharedLoading;

/**
 显示小菊花同时显示灰色背景
 */
-(void)loadingAnimationStart;
/**
 只显示小菊花不显示灰色背景
 */
-(void)showViewOnlyWithFlower;

/**
 停止显示加载动画
 */
-(void)loadingAnimationStop;

@end

NS_ASSUME_NONNULL_END
