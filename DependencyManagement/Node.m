//
//  Node.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/7.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "Node.h"

@implementation Node
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        
        [self setValuesForKeysWithDictionary:dict];
        
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init]) {
        //        [self decode:decoder];
//        self.avatar_mini = [decoder decodeObjectForKey:@"avatar_mini"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
    //    [self encode:encoder];
//    [encoder encodeObject:self.avatar_mini forKey:@"avatar_mini"];
}

+ (instancetype)objectWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}
@end
