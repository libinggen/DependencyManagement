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
#import "HotStoreHandle.h"
#import "LatestStoreHandle.h"
#import "PostHelper.h"

@interface RootRouteHandle()
@property (nonatomic, strong) HotAPIHandle *hotAPIHandle;
@property (nonatomic, strong) LatestAPIHandle *latestAPIHandle;
@property (nonatomic, strong) HotStoreHandle *hotStoreHandle;
@property (nonatomic, strong) LatestStoreHandle *latestStoreHandle;
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
        _rootViewController.latestAPIHandel = self.latestAPIHandle;
        _rootViewController.hotStoreHelper = self.hotStoreHandle;
        _rootViewController.latestStoreHelper = self.latestStoreHandle;
    }
    
    return _rootViewController;
}

- (HotAPIHandle *)hotAPIHandle
{
    if(!_hotAPIHandle)
    {
        _hotAPIHandle = [[HotAPIHandle alloc] init];
        _hotAPIHandle.callbackHandle = self.rootViewController;
        _hotAPIHandle.paramSourceHandle = self.rootViewController;
        _hotAPIHandle.postHelper = self.postHelper;
    }
    return _hotAPIHandle;
}

- (LatestAPIHandle *)latestAPIHandle
{
    if(!_latestAPIHandle)
    {
        _latestAPIHandle = [[LatestAPIHandle alloc] init];
        _latestAPIHandle.callbackHandle = self.rootViewController;
        _latestAPIHandle.paramSourceHandle = self.rootViewController;
        _latestAPIHandle.postHelper = self.postHelper;
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

- (HotStoreHandle *)hotStoreHandle
{
    if(!_hotStoreHandle)
    {
        _hotStoreHandle = [[HotStoreHandle alloc] init];
    }
    return _hotStoreHandle;
}

- (LatestStoreHandle *)latestStoreHandle
{
    if(!_latestStoreHandle)
    {
        _latestStoreHandle = [[LatestStoreHandle alloc] init];
    }
    return _latestStoreHandle;
}

@end