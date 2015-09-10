//
//  Member.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/7.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CodingModel.h"

@interface Member : CodingModel
@property (nonatomic, copy) NSString *avatar_large;
@property (nonatomic, copy) NSString *avatar_mini;
@property (nonatomic, copy) NSString *avatar_normal;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *tagline;
@property (nonatomic, copy) NSString *username;
- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)objectWithDict:(NSDictionary *)dict;
@end
