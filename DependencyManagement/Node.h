//
//  Node.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/7.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
@property (nonatomic, copy) NSString *avatar_large;
@property (nonatomic, copy) NSString *avatar_mini;
@property (nonatomic, copy) NSString *avatar_normal;
@property (nonatomic, copy) NSString *id;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *title_alternative;
@property (nonatomic, copy) NSString *topics;
@property (nonatomic, copy) NSString *url;
- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)objectWithDict:(NSDictionary *)dict;
@end
