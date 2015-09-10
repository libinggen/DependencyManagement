//
//  Hot.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/7.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "Post.h"
#include <objc/runtime.h>

@implementation Post

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
        [self decode:decoder];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder
{
    [self encode:encoder];
}

- (void) decode:(NSCoder *)decoder
{
    unsigned int numIvars = 0;
    Ivar *ivars = class_copyIvarList([self class], &numIvars);
    for (int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString *key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        [self decodeWithCoder:decoder key:key];
    }
}

- (void) encode:(NSCoder *)encoder
{
    unsigned int numIvars = 0;
    Ivar *ivars = class_copyIvarList([self class], &numIvars);
    for (int i = 0; i < numIvars; i++) {
        Ivar thisIvar = ivars[i];
        NSString *key = [NSString stringWithUTF8String:ivar_getName(thisIvar)];
        [self encodeWithCoder:encoder key:key];
    }
}

-(void)decodeWithCoder:(NSCoder *)decoder key:(NSString *)key
{
    if(key){
        [self setValue:[decoder decodeObjectForKey:key] forKey:key];
    }
}

-(void)encodeWithCoder:(NSCoder *)encoder key:(NSString *)key
{
    id value = [self valueForKey:key];
    if (value){
        [encoder encodeObject:value forKey:key];
    }
}
@end
