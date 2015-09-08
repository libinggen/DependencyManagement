//
//  APICallbackInterface.h
//  CallBack
//
//  Created by LiBinggen on 15/9/6.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//
#import "APIInterface.h"

#ifndef CallBack_APICallbackInterface_h
#define CallBack_APICallbackInterface_h
@protocol APICallbackInterface <NSObject>

- (void)listWtihData:(NSArray *)data apiHandle:(id<APIInterface>)apiHandle;
@end
#endif
