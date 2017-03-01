//
//  UIView+DBLiner.h
//  OneLucky
//
//  Created by mt on 16/6/12.
//  Copyright © 2016年 DreamBuddy. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  一切UIKit的 描边属性 都在这里设置了
 *
 *  Author: MT-X
 */
@interface UIView (DBLiner)

-(void)db_addLinerInPlace:(UIRectEdge)edge;

-(void)db_addLinerInPlace:(UIRectEdge)edge lineColor:(UIColor *)color;

-(void)db_addLinerInPlace:(UIRectEdge)edge lineColor:(UIColor *)color lineWidth:(CGFloat)width;

-(void)db_addLinerInPlace:(UIRectEdge)edge lineColor:(UIColor *)color lineWidth:(CGFloat)width insets:(UIEdgeInsets)insets;

-(void)db_removeAllLiners;

@end

@interface DBLinerView : UIView

@end
