//
//  Hot.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/7.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CodingModel.h"
#import "Member.h"
#import "Node.h"

@interface Post : CodingModel
@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSString *content_rendered;
@property (nonatomic, copy) NSString *created;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *last_modified;
@property (nonatomic, copy) NSString *last_touched;
@property (nonatomic, strong) Member *member;
@property (nonatomic, strong) Node *node;
@property (nonatomic, copy) NSString *replies;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *url;
- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)objectWithDict:(NSDictionary *)dict;
+(NSArray *)objectArrayWithKeyValuesArray:(NSArray *)array;
@end
