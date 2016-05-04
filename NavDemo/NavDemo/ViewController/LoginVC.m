//
//  LoginVC.m
//  NavDemo
//
//  Created by ZhengXiankai on 16/5/4.
//  Copyright © 2016年 bomo. All rights reserved.
//

#import "LoginVC.h"
#import "Masonry.h"
#import "MainTabVC.h"

@implementation LoginVC

- (void)viewDidLoad
{
    self.navigationItem.title = @"login";
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [btn setTitle:@"login" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.self.view);
    }];
}

- (void)login
{
    UIViewController *vc = [[MainTabVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
