//
//  XD_NavgationController.m
//  小贷助手
//
//  Created by Yanice on 2017/11/20.
//  Copyright © 2017年 张洋. All rights reserved.
//

#import "XD_NavgationController.h"

@interface XD_NavgationController ()<UIGestureRecognizerDelegate>

@end

@implementation XD_NavgationController

- (UIViewController *)childViewControllerForStatusBarStyle {
    
    return [self topViewController];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setNavStyle];
    
    [self xd_addPanBackFromLeft];
}

- (void)xd_addPanBackFromLeft {
    
    id target = self.interactivePopGestureRecognizer.delegate;
    SEL selector = NSSelectorFromString(@"handleNavigationTransition:");
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:selector];
    pan.delegate = self;
    [self.view addGestureRecognizer:pan];
    self.interactivePopGestureRecognizer.enabled = NO;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    
    if (self.childViewControllers.count==1) {
        return NO;
    }
    return YES;
}

- (void)setNavStyle {
    
    [[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
    [[UINavigationBar appearance] setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = [UIColor whiteColor];
    self.navigationBar.titleTextAttributes = attr;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
