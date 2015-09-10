//
//  RouteParamSourceInterface.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "RouteInterface.h"

#ifndef DependencyManagement_RouteParamSourceInterface_h
#define DependencyManagement_RouteParamSourceInterface_h
@protocol RouteParamSourceInterface <NSObject>

@optional
-(NSDictionary *)paramSourceForRouteHandle:(id<RouteInterface>)routeHandle;
@end
#endif
