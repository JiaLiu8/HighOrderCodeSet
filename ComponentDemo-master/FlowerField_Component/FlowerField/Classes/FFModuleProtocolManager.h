//
//  FFModuleProtocolManager.h
//  FlowerField
//
//  Created by liujia on 2019/2/25.
//  Copyright © 2019年 Triangle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FFModuleProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;
+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
