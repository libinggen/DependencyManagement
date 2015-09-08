//
//  HelperInterface.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//
#import "PostInterface.h"

#ifndef DependencyManagement_PostHelperInterface_h
#define DependencyManagement_PostHelperInterface_h
@protocol PostHelperInterface <NSObject>
-(NSString *)titleForPost:(id<PostInterface>)post;
-(NSString *)imageURLStringForPost:(id<PostInterface>)post;
-(NSArray *)postArrayWithKeyValuesArray:(NSArray *)array;
@end
#endif
