//
//  APIHandle.h
//  CallBack
//
//  Created by LiBinggen on 15/9/7.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIInterface.h"
#import "APIParamSourceInterface.h"
#import "APICallbackInterface.h"

@interface APIHandle : NSObject<APIInterface>
@property (nonatomic, strong) NSMutableData *receiveData;
@property (nonatomic, weak) id<APIParamSourceInterface> paramSourceHandle;
@property (nonatomic, weak) id<APICallbackInterface> callbackHandle;
-(NSArray *)handleList:(NSArray *)list;
@end
