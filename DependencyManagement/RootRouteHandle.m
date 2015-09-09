//
//  RootRouteHandle.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "RootRouteHandle.h"
#import "HotHelper.h"
#import "LatestHelper.h"

@interface RootRouteHandle()
@property (nonatomic, strong) HotHelper *hotHelper;
@property (nonatomic, strong) LatestHelper *latestHelper;
@end

@implementation RootRouteHandle

-(ViewController *)rootViewController
{
    if (!_rootViewController) {
        _rootViewController = [[ViewController alloc] init];
        _rootViewController.hotHelper = self.hotHelper;
        _rootViewController.latestHelper = self.latestHelper;
    }
    
    return _rootViewController;
}

- (HotHelper *)hotHelper
{
    if(!_hotHelper)
    {
        _hotHelper = [[HotHelper alloc] init];
        [[_hotHelper apiHandle]setCallbackHandel:self.rootViewController];
        [[_hotHelper apiHandle]setParamSourceHandel:self.rootViewController];
    }
    return _hotHelper;
}

- (LatestHelper *)latestHelper
{
    if(!_latestHelper)
    {
        _latestHelper = [[LatestHelper alloc] init];
        [[_latestHelper apiHandle]setCallbackHandel:self.rootViewController];
        [[_latestHelper apiHandle]setParamSourceHandel:self.rootViewController];
    }
    return _latestHelper;
}

@end