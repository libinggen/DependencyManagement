//
//  LatestStoreHandle.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "LatestStoreHandle.h"

@implementation LatestStoreHandle
- (id)unarchive
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@".latestListArchiver"]];
}

- (void)archiveWithObject:(id)object
{
    [NSKeyedArchiver archiveRootObject:object toFile:[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@".latestListArchiver"]];
}
@end
