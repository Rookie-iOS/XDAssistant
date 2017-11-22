//
//  XD_CommentViewController.m
//  小贷助手
//
//  Created by Yanice on 2017/11/20.
//  Copyright © 2017年 张洋. All rights reserved.
//

#import "XD_CommentViewController.h"

@interface XD_CommentViewController ()

@end

@implementation XD_CommentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self.xd_navigationController setNavgationBarColor:XD_NavGreen];

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
