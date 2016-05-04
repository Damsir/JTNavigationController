//
//  MainTabVC.m
//  NavDemo
//
//  Created by ZhengXiankai on 16/5/4.
//  Copyright © 2016年 bomo. All rights reserved.
//

#import "MainTabVC.h"
#import "MainHomeVC.h"
#import "JTNavigationController.h"

@implementation MainTabVC

- (void)viewDidLoad
{
    UIViewController *item1 = [[MainHomeVC alloc] init];
    item1.tabBarItem.title=@"AAA";
    item1.tabBarItem.image=[UIImage imageNamed:@"home"];
    
    
    UIViewController *item2 = [[MainHomeVC alloc] init];
    item2.tabBarItem.title=@"BBB";
    item2.tabBarItem.image=[UIImage imageNamed:@"home"];
    
    
    UIViewController *item3 = [[MainHomeVC alloc] init];
    item3.tabBarItem.title = @"CCC";
    item3.tabBarItem.image=[UIImage imageNamed:@"home"];
    
    
    JTNavigationController *nav1 = [[JTNavigationController alloc] initWithRootViewController:item1];
    JTNavigationController *nav2 = [[JTNavigationController alloc] initWithRootViewController:item2];
    JTNavigationController *nav3 = [[JTNavigationController alloc] initWithRootViewController:item3];
    
    self.viewControllers = @[nav1, nav2, nav3];
    
    //配置tabbar
    self.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBar.tintColor = [UIColor orangeColor];
    
    
}

@end
