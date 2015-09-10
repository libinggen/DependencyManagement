//
//  PostInterface.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//
#import "Member.h"

#ifndef DependencyManagement_PostInterface_h
#define DependencyManagement_PostInterface_h
@protocol PostInterface <NSObject>

@optional
-(NSString *)title;
-(Member *)member;
@end
#endif
