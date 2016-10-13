//
//  UIView+XLiner.h
//  OneLucky
//
//  Created by mt on 16/6/12.
//  Copyright © 2016年 imakejoy. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  一切UIKit的 描边属性 都在这里设置了
 *
 *  Author: MT-X
 */
@interface UIView (XLiner)

-(void)x_addLinerInPlace:(UIRectEdge)edge;

-(void)x_addLinerInPlace:(UIRectEdge)edge lineColor:(UIColor *)color;

-(void)x_addLinerInPlace:(UIRectEdge)edge lineColor:(UIColor *)color lineWidth:(CGFloat)width;

-(void)x_addLinerInPlace:(UIRectEdge)edge lineColor:(UIColor *)color lineWidth:(CGFloat)width insets:(UIEdgeInsets)insets;

-(void)x_removeAllLiners;

@end

@interface XLinerView : UIView

@end
