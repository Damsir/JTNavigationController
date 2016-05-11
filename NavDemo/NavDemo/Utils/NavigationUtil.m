//
//  NavigationUtil.m
//  NavDemo
//
//  Created by ZhengXiankai on 16/5/11.
//  Copyright © 2016年 bomo. All rights reserved.
//

#import "NavigationUtil.h"

@implementation NavigationUtil

/** 获取当前控制器 */
+ (UIViewController *)currentVC
{
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    
    //当前windows的根控制器
    UIViewController *controller = window.rootViewController;
    
    while (YES) {
        //先判断是否有present的控制器
        if (controller.presentedViewController) {
            //有的话直接拿到弹出控制器，省去多余的判断
            controller = controller.presentedViewController;
        } else {
            if ([controller isKindOfClass:[UINavigationController class]]) {
                //如果是NavigationController，取最后一个控制器（当前）
                controller = [controller.childViewControllers lastObject];
            } else if ([controller isKindOfClass:[UITabBarController class]]) {
                //如果TabBarController，取当前控制器
                UITabBarController *tabBarController = (UITabBarController *)controller;
                controller = tabBarController.selectedViewController;
            } else {
                if (controller.childViewControllers.count > 0) {
                    //如果是普通控制器，找childViewControllers最后一个
                    controller = [controller.childViewControllers lastObject];
                } else {
                    //没有present，没有childViewController，则表示当前控制器
                    return controller;
                }
            }
        }
    }
}

@end
