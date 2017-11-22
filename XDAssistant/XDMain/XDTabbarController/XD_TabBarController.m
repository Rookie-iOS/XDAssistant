//
//  XD_TabBarController.m
//  小贷助手
//
//  Created by Yanice on 2017/11/20.
//  Copyright © 2017年 张洋. All rights reserved.
//

#import "XD_TabBarController.h"
#import "XD_NavgationController.h"
#import "XD_CheckViewController.h"
#import "XD_CommentViewController.h"
#import "XD_MineViewController.h"

@interface XD_TabBarController ()

@end

@implementation XD_TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self xd_setTabbarTopLine];
    
    [self xd_setupChildViewControllers];
    
}

- (void)xd_setTabbarTopLine {
    
    // 去掉细线
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    
    // 设置背景颜色
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
}

- (void)xd_setupChildViewControllers {
    
    XD_CheckViewController *checkVC = [[XD_CheckViewController alloc] init];
    [self xd_addChildViewController:checkVC normalImage:@"nav_btn-1-1" andSelectedImg:@"nav_btn-1-2"];
    
    XD_CommentViewController *commentVC = [[XD_CommentViewController alloc] init];
    [self xd_addChildViewController:commentVC normalImage:@"nav_btn-2-1" andSelectedImg:@"nav_btn-2-2"];
    
    XD_MineViewController *mineVC = [[XD_MineViewController alloc] init];
    [self xd_addChildViewController:mineVC normalImage:@"nav_btn-5-1" andSelectedImg:@"nav_btn-5-2"];

}

- (void)xd_addChildViewController:(UIViewController *)childVC normalImage:(NSString *)normal andSelectedImg:(NSString *)select {
    
    XD_NavgationController *navVC = [[XD_NavgationController alloc] initWithRootViewController:childVC];
    [self addChildViewController:navVC];
    
    navVC.tabBarItem.image = [UIImage imageNamed:normal];
    navVC.tabBarItem.selectedImage = [UIImage imageNamed:select];
    
    navVC.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
