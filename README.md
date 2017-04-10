# ProjectConstructDemo
TabBarC添加NavC的项目基本架构

--参考支付宝框架的简单搭建--

TabBarC里创建四个navC, 在NavC封装并创建各自的控制器

UIViewController *vc1 = [self controllerWith:@"BLHomeViewController" title:@"首页" imageName:@"TabBar_HomeBar"];
UIViewController *vc2 = [self controllerWithStoryboard:@"BLBussiness" title:@"口碑" imageName:@"TabBar_HomeBar"];
UIViewController *vc3 = [self controllerWith:@"BLFriendViewController" title:@"朋友" imageName:@"TabBar_HomeBar"];
UIViewController *vc4 = [self controllerWith:@"BLMineViewController" title:@"我的" imageName:@"TabBar_HomeBar"];
self.viewControllers = @[vc1,vc2,vc3,vc4];
