//
//  ViewController.h
//  CallBack
//
//  Created by LiBinggen on 15/9/6.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APIInterface.h"
#import "APIParamSourceInterface.h"
#import "APICallbackInterface.h"
#import "RouteInterface.h"
#import "PostHelperInterface.h"
#import "StoreInterface.h"

@interface ViewController : UIViewController<APIParamSourceInterface,APICallbackInterface>

@property (nonatomic, weak) id<APIInterface> hotAPIHandel;
@property (nonatomic, weak) id<StoreInterface> hotStoreHelper;
@property (nonatomic, weak) id<APIInterface> latestAPIHandel;
@property (nonatomic, weak) id<StoreInterface> latestStoreHelper;
@property (nonatomic, weak) id<RouteInterface> routeHandel;
@property (nonatomic, weak) id<PostHelperInterface> postHelper;
@end

