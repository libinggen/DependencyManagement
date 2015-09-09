//
//  LatestHelper.m
//  DependencyManagement
//
//  Created by WYWK on 15/9/9.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "LatestHelper.h"
#import "LatestAPIHandle.h"
#import "LatestStoreHandle.h"
@interface LatestHelper()
@property (nonatomic, strong) LatestAPIHandle *latestAPIHandle;
@property (nonatomic, strong) LatestStoreHandle *latestStoreHandle;
@end
@implementation LatestHelper
-(id<APIInterface>)apiHandle
{
    return self.latestAPIHandle;
}

-(id<StoreInterface>)storeHandle
{
    return self.latestStoreHandle;
}

- (LatestAPIHandle *)latestAPIHandle
{
    if(!_latestAPIHandle)
    {
        _latestAPIHandle = [[LatestAPIHandle alloc] init];
        _latestAPIHandle.postHelper = self;
    }
    return _latestAPIHandle;
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
