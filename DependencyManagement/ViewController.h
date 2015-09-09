//
//  ViewController.h
//  CallBack
//
//  Created by LiBinggen on 15/9/6.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APIParamSourceInterface.h"
#import "APICallbackInterface.h"
#import "HelperInterface.h"
#import "PostHelperInterface.h"

@interface ViewController : UIViewController<APIParamSourceInterface,APICallbackInterface>
@property (nonatomic, weak) id<HelperInterface,PostHelperInterface> hotHelper;
@property (nonatomic, weak) id<HelperInterface,PostHelperInterface> latestHelper;
@end

