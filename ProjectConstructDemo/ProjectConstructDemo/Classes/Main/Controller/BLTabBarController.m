//
//  BLTabBarController.m
//  ProjectConstructDemo
//
//  Created by 边雷 on 17/4/10.
//  Copyright © 2017年 Mac-b. All rights reserved.
//

#import "BLTabBarController.h"
#import "BLHomeViewController.h"
#import "BLMineViewController.h"
#import "BLFriendViewController.h"
#import "BLBussinessViewController.h"

@interface BLTabBarController ()

@end

@implementation BLTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    BLHomeViewController *home = [[BLHomeViewController alloc] init];
//    home.tabBarItem.title = @"首页";
//    home.tabBarItem.image = [[UIImage imageNamed:@"TabBar_HomeBar"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    home.tabBarItem.selectedImage = [[UIImage imageNamed:@"TabBar_HomeBar_Sel"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:home];
    UIViewController *vc1 = [self controllerWith:@"BLHomeViewController" title:@"首页" imageName:@"TabBar_HomeBar"];
    UIViewController *vc2 = [self controllerWith:@"BLBussinessViewController" title:@"口碑" imageName:@"TabBar_HomeBar"];
    UIViewController *vc3 = [self controllerWith:@"BLFriendViewController" title:@"朋友" imageName:@"TabBar_HomeBar"];
    UIViewController *vc4 = [self controllerWith:@"BLMineViewController" title:@"我的" imageName:@"TabBar_HomeBar"];
    self.viewControllers = @[vc1,vc2,vc3,vc4];
}

-(UIViewController *)controllerWith:(NSString *)className title:(NSString *)title imageName:(NSString *)imageName {
    Class clz = NSClassFromString(className);
    UIViewController *vc = [[clz alloc] init];
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_Sel", imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    return nav;
}

@end
