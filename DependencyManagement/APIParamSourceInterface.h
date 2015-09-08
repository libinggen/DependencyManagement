//
//  APIParamSourceInterface.h
//  CallBack
//
//  Created by LiBinggen on 15/9/7.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//
#import "APIInterface.h"

#ifndef CallBack_APIParamSourceInterface_h
#define CallBack_APIParamSourceInterface_h
@protocol APIParamSourceInterface <NSObject>

- (NSDictionary *)paramSourceAPIHandle:(id<APIInterface>)apiHandle;
@end
#endif
