//
//  HelperInterface.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//
@protocol APIInterface;
@protocol StoreInterface;

#ifndef DependencyManagement_HelperInterface_h
#define DependencyManagement_HelperInterface_h
@protocol HelperInterface <NSObject>

@optional
-(id<APIInterface>)apiHandle;
-(id<StoreInterface>)storeHandle;
@end
#endif
