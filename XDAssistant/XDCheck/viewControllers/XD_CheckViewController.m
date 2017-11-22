//
//  XD_CheckViewController.m
//  小贷助手
//
//  Created by Yanice on 2017/11/20.
//  Copyright © 2017年 张洋. All rights reserved.
//

#import "XD_CheckViewController.h"
#import "XD_HLWZXViewController.h"
#import "XD_ZMXYViewController.h"
#import "XD_GRZXViewController.h"


NSInteger const XD_HLWZX = 100;
NSInteger const XD_ZMXY = 101;
NSInteger const XD_GRZX = 102;

@interface XD_CheckViewController ()

@end

@implementation XD_CheckViewController {
    
    UIImageView *topBg;
    UIView *noticeView; // 动态通知栏
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self xd_loadUI];
}

- (void)xd_loadUI {
    
    self.view.backgroundColor = XD_BASE_VIEW_COLOR;
    self.navigationItem.title = @"查信用";
    [self.xd_navigationController setNavgationBarColor:XD_NavBlue];
    [self xd_checkTopView];
}

- (void)xd_checkTopView {
    
    topBg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_1"]];
    topBg.userInteractionEnabled = YES;
    [self.view addSubview:topBg];
    [topBg makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.right.equalTo(self.view);
        make.top.equalTo(self.view);
        make.height.equalTo(100);
    }];
    
    NSArray *btnTitles = @[@"互联网征信",@"芝麻信用",@"个人征信"];
    NSArray *btnImgs = @[@"czx_icon-1",@"czx_icon-2",@"czx_icon-3"];
    for (int i = 0; i < btnImgs.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.tag = XD_HLWZX + i;
        btn.adjustsImageWhenHighlighted = NO;
        btn.titleLabel.font = [UIFont systemFontOfSize:XD_CHECKPAGETOPFONTSIZE];
        [btn setImage:[UIImage imageNamed:btnImgs[i]] forState:UIControlStateNormal];
        [btn setTitle:btnTitles[i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(topBtnClickAction:) forControlEvents:UIControlEventTouchUpInside];
        [topBg addSubview:btn];
        [btn makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(topBg);
            make.size.equalTo(CGSizeMake(XD_SCREEN_WIDTH/3, 100));
            make.left.equalTo(self.view).offset(XD_SCREEN_WIDTH*i/3);
        }];
        [btn xd_setBtnAlignStyle:XD_AlignTop];
    }
}

- (void)topBtnClickAction:(UIButton *)btn {
    
    switch (btn.tag) {
        case XD_HLWZX:{
            
            XD_HLWZXViewController * xd_hlwVC = [[XD_HLWZXViewController alloc] init];
            xd_hlwVC.hidesBottomBarWhenPushed = YES;
            [self.xd_navigationController pushViewController:xd_hlwVC animated:YES];
//            [self.xd_navigationController setBackItemStyle:XD_BackItemLight];

        }
            break;
        case XD_ZMXY:{
            
            XD_ZMXYViewController * xd_zmVC = [[XD_ZMXYViewController alloc] init];
            xd_zmVC.hidesBottomBarWhenPushed = YES;
            [self.xd_navigationController pushViewController:xd_zmVC animated:YES];
//            [self.xd_navigationController setBackItemStyle:XD_BackItemDefault];
        }
            break;
        case XD_GRZX:{
            
            XD_GRZXViewController * xd_grzxVC = [[XD_GRZXViewController alloc] init];
            xd_grzxVC.hidesBottomBarWhenPushed = YES;
            [self.xd_navigationController pushViewController:xd_grzxVC animated:YES];
        }
            break;
        default:
            break;
    }
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
