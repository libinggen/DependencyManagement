//
//  RootRouteHandle.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RouteHandle.h"
#import "ViewController.h"

@interface RootRouteHandle : RouteHandle
@property (nonatomic, strong) ViewController *rootViewController;
@end
