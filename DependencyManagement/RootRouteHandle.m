//
//  RootRouteHandle.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "RootRouteHandle.h"
#import "PostHelper.h"

@interface RootRouteHandle()
@property (nonatomic, strong) PostHelper *postHelper;
@end

@implementation RootRouteHandle

-(ViewController *)rootViewController
{
    if (!_rootViewController) {
        _rootViewController = [[ViewController alloc] init];
        _rootViewController.postHelper = self.postHelper;
    }
    
    return _rootViewController;
}


- (PostHelper *)postHelper
{
    if(!_postHelper)
    {
        _postHelper = [[PostHelper alloc] init];
        _postHelper.apiRequester = self.rootViewController;
    }
    return _postHelper;
}

@end