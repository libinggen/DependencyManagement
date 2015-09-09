//
//  HotHelper.m
//  DependencyManagement
//
//  Created by WYWK on 15/9/9.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "HotHelper.h"
#import "HotAPIHandle.h"
#import "HotStoreHandle.h"

@interface HotHelper()
@property (nonatomic, strong) HotAPIHandle *hotAPIHandle;
@property (nonatomic, strong) HotStoreHandle *hotStoreHandle;
@end
@implementation HotHelper
-(id<APIInterface>)apiHandle
{
    return self.hotAPIHandle;
}

-(id<StoreInterface>)storeHandle
{
    return self.hotStoreHandle;
}

- (HotAPIHandle *)hotAPIHandle
{
    if(!_hotAPIHandle)
    {
        _hotAPIHandle = [[HotAPIHandle alloc] init];
        _hotAPIHandle.postHelper = self;
    }
    return _hotAPIHandle;
}

- (HotStoreHandle *)hotStoreHandle
{
    if(!_hotStoreHandle)
    {
        _hotStoreHandle = [[HotStoreHandle alloc] init];
    }
    return _hotStoreHandle;
}
@end
