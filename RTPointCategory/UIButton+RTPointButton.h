//
//  UIButton+RTPointButton.h
//  RTPointCategory
//
//  Created by Apple on 2020/3/27.
//  Copyright © 2020 Insight. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (RTPointButton)

- (UIButton *(^)(CGFloat,CGFloat,CGFloat,CGFloat))frameSe;

/// MARK: - 文字状态
/// 文字选中状态下颜色
- (UIButton *(^)(UIColor *color))btnTitleSC;
/// 文字通用状态下颜色
- (UIButton *(^)(UIColor *color))btnTitleNC;
/// 文字状态下文字
- (UIButton *(^)(NSString *titleStr,UIControlState state))btnTitleState;


/// MARK: - 图片状态
- (UIButton *(^)(NSString *imgName))btnImgNC;
- (UIButton *(^)(NSString *imgName))btnImgSC;
- (UIButton *(^)(NSString *imgName))btnBgImgNC;
- (UIButton *(^)(NSString *imgName))btnBgImgSC;
- (UIButton *(^)(NSString *imgPath, NSString *type))btnImgPathNC;
- (UIButton *(^)(NSString *imgPath, NSString *type))btnImgPathSC;
- (UIButton *(^)(NSString *imgPath, NSString *type))btnBgImgPathNC;
- (UIButton *(^)(NSString *imgPath, NSString *type))btnBgImgPathSC;

/// MARK: - 适用状态
- (UIButton *(^)(BOOL))btnAdjustImgHighlight;
- (UIButton *(^)(BOOL))btnAdjustImgDisable;
- (UIButton *(^)(BOOL))btnAdjustTouchHighlight;

- (UIButton *(^)(id target, SEL action, UIControlEvents envents))addTarget;
- (UIButton *(^)(CGFloat))cornerRadius;
- (UIButton *(^)(BOOL))isMaskToBounds;

@end

NS_ASSUME_NONNULL_END
