//
//  FFModuleProtocolManager.h
//  FlowerField
//
//  Created by liujia on 2019/2/25.
//  Copyright © 2019年 Triangle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//https://www.jianshu.com/p/760d6cd46719  做pod库
//https://www.jianshu.com/p/76da56b3bd55 协议做路由
@interface FFModuleProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;
+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
