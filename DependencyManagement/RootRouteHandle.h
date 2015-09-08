//
//  RootRouteHandle.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RouteInterface.h"
#import "ViewController.h"

@interface RootRouteHandle : NSObject<RouteInterface>
@property (nonatomic, strong) ViewController *rootViewController;
@end
