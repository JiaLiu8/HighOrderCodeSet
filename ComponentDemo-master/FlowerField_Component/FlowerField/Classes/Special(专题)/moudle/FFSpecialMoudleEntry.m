//
//  FFSpecialMoudleEntry.m
//  FlowerField
//
//  Created by liujia on 2019/2/26.
//  Copyright © 2019年 Triangle. All rights reserved.
//

#import "FFSpecialMoudleEntry.h"
#import "FFSpecialMoudleEntryProtocol.h"
#import "FFModuleProtocolManager.h"
#import "FFSpecialDetailController.h"

@interface FFSpecialMoudleEntry () <FFSpecialMoudleEntryProtocol>

@end

@implementation FFSpecialMoudleEntry

+ (void)load {
    [FFModuleProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(FFSpecialMoudleEntryProtocol)];
}

- (UIViewController *)detailViewControllerblock:(dispatch_block_t)completeBlock {
    FFSpecialDetailController *vc = [FFSpecialDetailController new];
    vc.complete = completeBlock;
    return vc;
}

@end
