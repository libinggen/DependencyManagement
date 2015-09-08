//
//  PostHelper.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "PostHelper.h"
#import "Post.h"
#import "HotAPIHandle.h"
#import "LatestAPIHandle.h"
#import "HotStoreHandle.h"
#import "LatestStoreHandle.h"

@interface PostHelper()
@property (nonatomic, strong) HotAPIHandle *hotAPIHandle;
@property (nonatomic, strong) LatestAPIHandle *latestAPIHandle;
@property (nonatomic, strong) HotStoreHandle *hotStoreHandle;
@property (nonatomic, strong) LatestStoreHandle *latestStoreHandle;
@end

@implementation PostHelper
-(id<APIInterface>)hotAPI
{
    return self.hotAPIHandle;
}

-(id<APIInterface>)latestAPI
{
    return self.latestAPIHandle;
}

-(id<StoreInterface>)hotStore
{
    return self.hotStoreHandle;
}

-(id<StoreInterface>)latestStore
{
    return self.latestStoreHandle;
}

-(NSString *)titleForPost:(id<PostInterface>)post
{
    return [post title];
}

-(NSString *)imageURLStringForPost:(id<PostInterface>)post
{
    return [post member].avatar_mini;
}

-(NSArray *)postArrayWithKeyValuesArray:(NSArray *)array
{
    return [Post objectArrayWithKeyValuesArray:array];
}

- (HotAPIHandle *)hotAPIHandle
{
    if(!_hotAPIHandle)
    {
        _hotAPIHandle = [[HotAPIHandle alloc] init];
        _hotAPIHandle.callbackHandle = self.apiRequester;
        _hotAPIHandle.paramSourceHandle = self.apiRequester;
        _hotAPIHandle.postHelper = self;
    }
    return _hotAPIHandle;
}

- (LatestAPIHandle *)latestAPIHandle
{
    if(!_latestAPIHandle)
    {
        _latestAPIHandle = [[LatestAPIHandle alloc] init];
        _latestAPIHandle.callbackHandle = self.apiRequester;
        _latestAPIHandle.paramSourceHandle = self.apiRequester;
        _latestAPIHandle.postHelper = self;
    }
    return _latestAPIHandle;
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
