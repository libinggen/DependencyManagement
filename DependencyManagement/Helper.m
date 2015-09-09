//
//  Helper.m
//  DependencyManagement
//
//  Created by WYWK on 15/9/9.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "Helper.h"
#import "APIHandle.h"
#import "StoreHandle.h"

@interface Helper()
@property (nonatomic, strong) APIHandle *apiHandle;
@property (nonatomic, strong) StoreHandle *storeHandle;
@end
@implementation Helper
-(id<APIInterface>)apiHandle
{
    return self.apiHandle;
}

-(id<StoreInterface>)storeHandle
{
    return self.storeHandle;
}
@end
