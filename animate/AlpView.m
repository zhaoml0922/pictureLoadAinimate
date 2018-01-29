//
//  AlpView.m
//  animate
//
//  Created by zhaoml on 2017/12/11.
//  Copyright © 2017年 赵明亮. All rights reserved.
//

#import "AlpView.h"

@interface AlpView ()


@property (nonatomic, assign) CGRect imgFrame;
///半径
@property (nonatomic, assign) CGFloat cirR;

@property (nonatomic, strong) CAShapeLayer *shape;
@end;
@implementation AlpView


- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.imgFrame = frame;
        CGFloat width = frame.size.width;
        CGFloat height = frame.size.height;
        CGFloat r = sqrt(width * width + height * height);
        self.cirR = r+10;
        self.frame = CGRectMake(0, 0, r, r);
        
        _shape = [CAShapeLayer layer];
        _shape.lineWidth = self.cirR;
        _shape.strokeColor =  [UIColor colorWithRed:1 green:1 blue:1 alpha:0.5].CGColor;
        _shape.fillColor =  [UIColor blueColor].CGColor;
        [self.layer addSublayer:_shape];
    }
    return self;
}


- (void)setPersent:(CGFloat)persent {
    _persent = persent;
    self.center = CGPointMake(self.imgFrame.size.width/2, self.imgFrame.size.height/2);
    CGFloat witdhR = (persent/100.0) * (self.cirR/2.0);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.cirR/2, self.cirR/2) radius:self.cirR/2.0-witdhR startAngle:0 endAngle:2*M_PI clockwise:true];
    _shape.path = [path CGPath];
    

}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//}
//

@end
