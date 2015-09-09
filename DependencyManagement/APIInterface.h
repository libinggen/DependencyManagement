//
//  APIInterface.h
//  CallBack
//
//  Created by LiBinggen on 15/9/6.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//
@protocol APICallbackInterface;
@protocol APIParamSourceInterface;

#ifndef CallBack_APIInterface_h
#define CallBack_APIInterface_h
@protocol APIInterface <NSObject>

- (void)setCallbackHandel:(id<APICallbackInterface>)callbackHandel;
- (void)setParamSourceHandel:(id<APIParamSourceInterface>)paramSourceHandel;

- (void)loadData;
@end
#endif
