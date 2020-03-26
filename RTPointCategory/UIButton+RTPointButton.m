//
//  UIButton+RTPointButton.m
//  RTPointCategory
//
//  Created by Apple on 2020/3/27.
//  Copyright © 2020 Insight. All rights reserved.
//

#import "UIButton+RTPointButton.h"


@implementation UIButton (RTPointButton)

- (UIButton *(^)(CGFloat,CGFloat,CGFloat,CGFloat))frameSe {
    return ^(CGFloat x,CGFloat y,CGFloat w,CGFloat h) {
        self.frame = CGRectMake(x, y, w, h);
        return self;
    };
}

/// MARK: - 文字状态
/// 文字选中状态下颜色
- (UIButton *(^)(UIColor *color))btnTitleSC {
    return ^(UIColor *color) {
        [self setTitleColor:color forState:UIControlStateSelected];
        return self;
    };
}
/// 文字通用状态下颜色
- (UIButton *(^)(UIColor *color))btnTitleNC {
    return ^(UIColor *color) {
        [self setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}
/// 文字状态下文字
- (UIButton *(^)(NSString *titleStr,UIControlState state))btnTitleState {
    return ^(NSString *titleStr, UIControlState state) {
        [self setTitle:titleStr forState:state];
        return self;
    };
}

/// MARK: - 图片状态
- (UIButton *(^)(NSString *imgName))btnImgNC {
    return ^(NSString *imgName) {
        [self setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton *(^)(NSString *imgPath, NSString *type))btnImgPathNC {
    return ^(NSString *imgPath, NSString *type) {
        //多Pods下,Bundle需要修改，默认mainBundle
        [self setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:imgPath ofType:type]] forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton *(^)(NSString *imgPath, NSString *type))btnImgPathSC {
    return ^(NSString *imgPath, NSString *type) {
        //多Pods下,Bundle需要修改，默认mainBundle
        [self setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:imgPath ofType:type]] forState:UIControlStateSelected];
        return self;
    };
}
- (UIButton *(^)(NSString *imgName))btnImgSC {
    return ^(NSString *imgName) {
        [self setImage:[UIImage imageNamed:imgName] forState:UIControlStateSelected];
        return self;
    };
}
- (UIButton *(^)(NSString *imgName))btnBgImgNC {
    return ^(NSString *imgName) {
        [self setBackgroundImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton *(^)(NSString *imgName))btnBgImgSC {
    return ^(NSString *imgName) {
        [self setBackgroundImage:[UIImage imageNamed:imgName] forState:UIControlStateSelected];
        return self;
    };
}
- (UIButton *(^)(NSString *imgPath, NSString *type))btnBgImgPathNC {
    return ^(NSString *imgPath, NSString *type) {
        //多Pods下,Bundle需要修改，默认mainBundle
        [self setBackgroundImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:imgPath ofType:type]] forState:UIControlStateNormal];
        return self;
    };
}
- (UIButton *(^)(NSString *imgPath, NSString *type))btnBgImgPathSC {
    return ^(NSString *imgPath, NSString *type) {
        //多Pods下,Bundle需要修改，默认mainBundle
        [self setBackgroundImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:imgPath ofType:type]] forState:UIControlStateSelected];
        return self;
    };
}

/// MARK: - 适用状态
- (UIButton *(^)(BOOL))btnAdjustImgHighlight {
    return ^(BOOL isOK) {
        [self setAdjustsImageWhenHighlighted:isOK];
        return self;
    };
}
- (UIButton *(^)(BOOL))btnAdjustImgDisable {
    return ^(BOOL isOK) {
        [self setAdjustsImageWhenDisabled:isOK];
        return self;
    };
}
- (UIButton *(^)(BOOL))btnAdjustTouchHighlight {
    return ^(BOOL isOK) {
        [self setShowsTouchWhenHighlighted:isOK];
        return self;
    };
}

/// MARK: - Other
- (UIButton *(^)(id target, SEL action, UIControlEvents envents))addTarget {
    return ^(id target, SEL action, UIControlEvents envents) {
        [self addTarget:target action:action forControlEvents:envents];
        return self;
    };
}

- (UIButton *(^)(CGFloat))cornerRadius {
    return ^(CGFloat radius) {
        self.layer.cornerRadius = radius;
        return self;
    };
}
- (UIButton *(^)(BOOL))isMaskToBounds {
    return ^(BOOL isOK) {
        self.layer.masksToBounds = isOK;
        return self;
    };
}



@end
