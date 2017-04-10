//
//  BLNavController.m
//  ProjectConstructDemo
//
//  Created by 边雷 on 17/4/10.
//  Copyright © 2017年 Mac-b. All rights reserved.
//

#import "BLNavController.h"

@interface BLNavController ()

@end

@implementation BLNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // barTintColor 导航条颜色
    self.navigationBar.barTintColor = [UIColor whiteColor];
    
    // 取消导航条下方黑线
    [self.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[[UIImage alloc] init]];
    
    // 如果隐藏了黑线(空背景图片和空阴影图片),必须要设置translucent透明效果为no才能够看到背景颜色
    self.navigationBar.translucent = NO;
    
    // 设置导航条barbuttonItem颜色
//    self.navigationBar.tintColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
