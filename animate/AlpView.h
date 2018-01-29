//
//  AlpView.h
//  animate
//
//  Created by zhaoml on 2017/12/11.
//  Copyright © 2017年 赵明亮. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlpView : UIView


/**
 初始化

 @param frame 图片的位置即可
 @return View
 */
- (instancetype)initWithFrame:(CGRect)frame;

///最大是100，百分比
@property (nonatomic, assign) CGFloat persent;

@end
