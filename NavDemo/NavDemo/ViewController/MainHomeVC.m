//
//  MainHomeVC.m
//  NavDemo
//
//  Created by ZhengXiankai on 16/5/4.
//  Copyright © 2016年 bomo. All rights reserved.
//

#import "MainHomeVC.h"
#import "Masonry.h"
#import "AppDelegate.h"
#import "LoginVC.h"
#import "NavigationUtil.h"
#import "JTNavigationController.h"

@implementation MainHomeVC

static NSInteger count = 0;

- (void)viewDidLoad
{
    self.navigationItem.title = [NSString stringWithFormat:@"title:%@", @(count++)];
    
    UIViewController *controller = [NavigationUtil currentVC];
    NSLog(@"%@", controller.navigationItem.title);
    
    
    self.view.backgroundColor = [UIColor colorWithRed:(rand()%255)/255.0 green:(rand()%255)/255.0 blue:(rand()%255)/255.0 alpha:1];

   
    
    UIButton *nextBtn = [self createBtn:@"next" selector:@selector(next)];
    [self.view addSubview:nextBtn];
    [nextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.mas_topLayoutGuide).offset(12);
    }];
    
    UIButton *gobackBtn = [self createBtn:@"goback" selector:@selector(goback)];
    [self.view addSubview:gobackBtn];
    [gobackBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(nextBtn.mas_bottom).offset(12);
    }];
    
    UIButton *presentBtn = [self createBtn:@"present" selector:@selector(present)];
    [self.view addSubview:presentBtn];
    [presentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(gobackBtn.mas_bottom).offset(12);
    }];
    
    UIButton *dismissBtn = [self createBtn:@"dismiss" selector:@selector(dismiss)];
    [self.view addSubview:dismissBtn];
    [dismissBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(presentBtn.mas_bottom).offset(12);
    }];
    

    
    UIButton *logoffBtn = [self createBtn:@"logoff" selector:@selector(logoff)];
    [self.view addSubview:logoffBtn];
    [logoffBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(dismissBtn.mas_bottom).offset(12);
    }];
}

- (void)next
{
    UIViewController *vc = [[MainHomeVC alloc] init];
    
    //需要隐藏TabBar
    vc.hidesBottomBarWhenPushed = YES;    
    [self.navigationController pushViewController:vc animated:YES];

//    UINavigationController *navVC = [AppDelegate rootVC];
//    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)present
{
    UIViewController *vc = [[MainHomeVC alloc] init];
    UINavigationController *navVC = [[JTNavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:navVC animated:YES completion:nil];
}

- (void)dismiss
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)goback
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)logoff
{
    UINavigationController *navVC = [AppDelegate rootVC];

    
    NSMutableArray *array = [navVC.viewControllers mutableCopy];
    
    UIViewController *vc = [[LoginVC alloc] init];
    [array insertObject:vc atIndex:0];
    
    [navVC setViewControllers:array animated:YES];
    
    [navVC popViewControllerAnimated:YES];
    
    
}

#pragma mark - UI
- (UIButton *)createBtn:(NSString *)title selector:(SEL)selector
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [btn setTitle:title forState:UIControlStateNormal];
    
    [btn addTarget:self action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}



@end
