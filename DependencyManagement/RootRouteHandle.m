//
//  RootRouteHandle.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "RootRouteHandle.h"
#import "HotAPIHandle.h"
#import "LatestAPIHandle.h"
#import "PostHelper.h"

@interface RootRouteHandle()
@property (nonatomic, strong) HotAPIHandle *hotAPIHandle;
@property (nonatomic, strong) LatestAPIHandle *latestAPIHandle;
@property (nonatomic, strong) PostHelper *postHelper;
@end

@implementation RootRouteHandle

-(ViewController *)rootViewController
{
    if (!_rootViewController) {
        _rootViewController = [[ViewController alloc] init];
        
        _rootViewController.routeHandel = self;
        _rootViewController.postHelper = self.postHelper;
        
        _rootViewController.hotAPIHandel = self.hotAPIHandle;
        self.hotAPIHandle.callbackHandle = _rootViewController;
        self.hotAPIHandle.paramSourceHandle = _rootViewController;
        
        _rootViewController.latestAPIHandel = self.latestAPIHandle;
        self.latestAPIHandle.callbackHandle = _rootViewController;
        self.latestAPIHandle.paramSourceHandle = _rootViewController;
    }
    
    return _rootViewController;
}

- (HotAPIHandle *)hotAPIHandle
{
    if(!_hotAPIHandle)
    {
        _hotAPIHandle = [[HotAPIHandle alloc] init];
    }
    return _hotAPIHandle;
}

- (LatestAPIHandle *)latestAPIHandle
{
    if(!_latestAPIHandle)
    {
        _latestAPIHandle = [[LatestAPIHandle alloc] init];
    }
    return _latestAPIHandle;
}

- (PostHelper *)postHelper
{
    if(!_postHelper)
    {
        _postHelper = [[PostHelper alloc] init];
    }
    return _postHelper;
}
@end