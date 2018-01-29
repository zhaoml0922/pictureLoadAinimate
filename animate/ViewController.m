//
//  ViewController.m
//  animate
//
//  Created by zhaoml on 2017/12/11.
//  Copyright © 2017年 赵明亮. All rights reserved.
//

#import "ViewController.h"
#import "AlpView.h"
@interface ViewController ()
@property (nonatomic,strong)AlpView *alp;
@property (nonatomic,assign)int a;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, 320, 214)];
    image.image = [UIImage imageNamed:@"WechatIMG3.jpeg"];
    image.clipsToBounds = YES;
    [self.view addSubview:image];
    
    _a = 0;
    _alp = [[AlpView alloc] initWithFrame:image.bounds];
    _alp.persent = 0;
    [image addSubview:_alp];
    
    NSTimer *timer = [NSTimer timerWithTimeInterval:0.1 target:self selector:@selector(timeRespounse) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
   
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)timeRespounse {
    if (_a==100) {
        _a=0;
    }
    _a ++;
    _alp.persent = _a;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
