//
//  XD_HLWZXViewController.m
//  XDAssistant
//
//  Created by Yanice on 2017/11/21.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import "XD_HLWZXViewController.h"

@interface XD_HLWZXViewController ()

@end

@implementation XD_HLWZXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = XD_BASE_VIEW_COLOR;
    self.navigationItem.hidesBackButton = YES;
    
    [self xd_setNavBackItemStyle:XD_BackItemLight];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
