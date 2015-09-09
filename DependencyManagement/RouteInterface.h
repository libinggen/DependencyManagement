//
//  RouteInterface.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//
#import <UIKit/UIKit.h>
#ifndef DependencyManagement_RouteInterface_h
#define DependencyManagement_RouteInterface_h
@protocol RouteInterface <NSObject>

@optional
-(void)pushInterfaceFromViewController:(UIViewController *)viewController;
-(void)presentInterfaceFromViewController:(UIViewController *)viewController;
-(void)popInterface;
-(void)dismissInterface;
@end
#endif
