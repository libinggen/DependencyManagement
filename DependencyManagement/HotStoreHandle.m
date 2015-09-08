//
//  HotStoreHandle.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "HotStoreHandle.h"

@implementation HotStoreHandle
- (id)unarchive
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@".hotListArchiver"]];
}

- (void)archiveWithObject:(id)object
{
    [NSKeyedArchiver archiveRootObject:object toFile:[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:@".hotListArchiver"]];
}
@end
