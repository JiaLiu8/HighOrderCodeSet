//
//  FFSpecialMoudleEntryProtocol.h
//  FlowerField
//
//  Created by liujia on 2019/2/25.
//  Copyright © 2019年 Triangle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol FFSpecialMoudleEntryProtocol <NSObject>

- (UIViewController *)detailViewControllerblock:(dispatch_block_t)completeBlock;

@end

