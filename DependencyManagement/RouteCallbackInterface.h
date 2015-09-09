//
//  RouteCallbackInterface.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//
#import "RouteInterface.h"

#ifndef DependencyManagement_RouteCallbackInterface_h
#define DependencyManagement_RouteCallbackInterface_h
@protocol RouteCallbackInterface <NSObject>

@optional
-(void)handleData:(NSDictionary *)data routeHandle:(id<RouteInterface>)routeHandle;
-(void)handleListData:(NSArray *)data routeHandle:(id<RouteInterface>)routeHandle;
@end
#endif
