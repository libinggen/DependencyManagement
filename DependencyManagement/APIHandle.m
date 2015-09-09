//
//  APIHandle.m
//  CallBack
//
//  Created by LiBinggen on 15/9/7.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#import "APIHandle.h"
#import "APIParamSourceInterface.h"
#import "APICallbackInterface.h"

@interface APIHandle()
@property (nonatomic, weak) id<APIParamSourceInterface> paramSourceHandle;
@property (nonatomic, weak) id<APICallbackInterface> callbackHandle;
@end
@implementation APIHandle

- (void)loadData
{
    self.receiveData = [[NSMutableData alloc]init];
    NSDictionary *paramSource = [self.paramSourceHandle paramSourceAPIHandle:self];
    NSURL *url = [[NSURL alloc]initWithString:paramSource[@"URLString"]];
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc]initWithRequest:request delegate:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [self.receiveData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSError *error = nil;
    id data = [NSJSONSerialization JSONObjectWithData:self.receiveData options:NSJSONReadingAllowFragments error:&error];
    NSLog(@"%@ data\n%@",self,data);
    
    if ([data isKindOfClass:[NSArray class]]) {
        NSArray *list = [self handleList:data];
        [self.callbackHandle listWtihData:list apiHandle:self];
    }
}

-(NSArray *)handleList:(NSArray *)list
{
    return [self.postHelper postArrayWithKeyValuesArray:list];
}

-(void)setCallbackHandel:(id<APICallbackInterface>)callbackHandel
{
    self.callbackHandle = callbackHandel;
}

-(void)setParamSourceHandel:(id<APIParamSourceInterface>)paramSourceHandel
{
    self.paramSourceHandle = paramSourceHandel;
}
@end
