//
//  UIView+XLiner.m
//  OneLucky
//
//  Created by mt on 16/6/12.
//  Copyright © 2016年 imakejoy. All rights reserved.
//

#import "UIView+XLiner.h"

@implementation UIView (XLiner)

-(void)x_addLinerInPlace:(UIRectEdge)edge{
    [self x_addLinerInPlace:edge lineColor:One_Color_LineColor];
}

-(void)x_addLinerInPlace:(UIRectEdge)edge lineColor:(UIColor *)color{
    [self x_addLinerInPlace:edge lineColor:color lineWidth:(1/[UIScreen mainScreen].scale)];
}

-(void)x_addLinerInPlace:(UIRectEdge)edge lineColor:(UIColor *)color lineWidth:(CGFloat)width{
    [self x_addLinerInPlace:edge lineColor:color lineWidth:width insets:UIEdgeInsetsZero];
}

-(void)x_addLinerInPlace:(UIRectEdge)edge lineColor:(UIColor *)color lineWidth:(CGFloat)width insets:(UIEdgeInsets)insets{
    
    if (edge & UIRectEdgeTop && edge & UIRectEdgeBottom && edge & UIRectEdgeLeft && edge & UIRectEdgeRight) {
        self.layer.borderColor = color.CGColor;
        self.layer.borderWidth = width;
        
        return ;
    }
    
    if (edge & UIRectEdgeTop) {
        UIView *liner = [self x_createLiner];
        
        liner.backgroundColor = color;
        
        [liner mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(width);
            make.left.right.top.mas_offset(insets);
        }];
    }
    
    if (edge & UIRectEdgeBottom) {
        UIView *liner = [self x_createLiner];
        
        liner.backgroundColor = color;
        
        [liner mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(width);
            make.left.right.bottom.mas_offset(insets);
        }];
    }
    
    if (edge & UIRectEdgeLeft) {
        UIView *liner = [self x_createLiner];
        
        liner.backgroundColor = color;
        
        [liner mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(width);
            make.top.left.bottom.mas_offset(insets);
        }];
    }
    
    if (edge & UIRectEdgeRight) {
        UIView *liner = [self x_createLiner];
        
        liner.backgroundColor = color;
        
        [liner mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(width);
            make.top.right.bottom.mas_offset(insets);
        }];
    }
}

-(UIView *)x_createLiner{
    return ({
        UIView *view = [UIView new];
        [self addSubview:view];
        
        view;
    });
}

@end
