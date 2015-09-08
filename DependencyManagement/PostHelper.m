//
//  PostHelper.m
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "PostHelper.h"
#import "Post.h"

@implementation PostHelper
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
@end
