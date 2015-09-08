//
//  StoreInterface.h
//  DependencyManagement
//
//  Created by LiBinggen on 15/9/8.
//  Copyright (c) 2015年 qingqing. All rights reserved.
//

#ifndef DependencyManagement_StoreInterface_h
#define DependencyManagement_StoreInterface_h
@protocol StoreInterface <NSObject>

-(id)unarchive;
- (void)archiveWithObject:(id)object;
@end
#endif
