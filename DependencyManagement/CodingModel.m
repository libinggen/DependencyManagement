//
//  CodingModel.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/7.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "CodingModel.h"
#include <objc/runtime.h>

@implementation CodingModel

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
