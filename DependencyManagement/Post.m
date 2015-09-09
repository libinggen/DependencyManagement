//
//  Hot.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/7.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "Post.h"

@implementation Post
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        
        [self setValuesForKeysWithDictionary:dict];
        self.member = [Member objectWithDict:dict[@"member"]];
        self.node = [Node objectWithDict:dict[@"node"]];
        
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)decoder
{
    if (self = [super init]) {
//        [self decode:decoder];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
//    [self encode:encoder];
}

+ (instancetype)objectWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

+(NSArray *)objectArrayWithKeyValuesArray:(NSArray *)array
{
    NSMutableArray *objectArray = [NSMutableArray array];
    for (NSDictionary *dictionary in array) {
        [objectArray addObject: [Post objectWithDict:dictionary]];
    }
    
    if (objectArray.count > 0) {
        return objectArray;
    }
    return nil;
}
@end
