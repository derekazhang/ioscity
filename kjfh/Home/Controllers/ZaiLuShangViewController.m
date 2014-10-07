//
//  ZaiLuShangViewController.m
//  kjfh
//
//  Created by ZhangAimin on 14/10/6.
//  Copyright (c) 2014年 自由开发者. All rights reserved.
//

#import "ZaiLuShangViewController.h"
#import "UMSocial.h"
@interface ZaiLuShangViewController ()

@end

@implementation ZaiLuShangViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initNavBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//设置导航栏
- (void)initNavBar {
    
    //左侧按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(0.0f, 0.0f, 20.0f, 20.0f)];
    [btn addTarget:self  action:@selector(shareButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btn setImage:[UIImage imageNamed:@"share_2"] forState:UIControlStateNormal];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithCustomView:btn];
    [self.navigationItem setRightBarButtonItem:leftButton animated:NO];
    //标题
    UILabel *titleLabel = [[UILabel alloc]init];
    titleLabel.text = @"写给创业路上的你";
    titleLabel.font = [UIFont systemFontOfSize:18];
    titleLabel.textColor = RGB(66, 66, 66);
    titleLabel.backgroundColor = [UIColor clearColor];
    [titleLabel sizeToFit];
    self.navigationItem.titleView = titleLabel;
}



#pragma mark - Actions
-(void)shareButtonClicked:(UIButton *)sender{
    
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:nil
                                      shareText:@"你要分享的文字"
                                     shareImage:[UIImage imageNamed:@"icon.png"]
                                shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToTencent,UMShareToWechatSession,UMShareToWechatTimeline,UMShareToQzone,UMShareToQQ,UMShareToRenren,UMShareToDouban,UMShareToEmail,UMShareToSms,nil]
                                       delegate:nil];

}


-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}
@end