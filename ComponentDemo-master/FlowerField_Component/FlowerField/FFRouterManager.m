//
//  FFRouterManager.m
//  FlowerField
//
//  Created by liujia on 2019/2/25.
//  Copyright © 2019年 Triangle. All rights reserved.
//

#import "FFRouterManager.h"
#import "MGJRouter.h"
#import <UIKit/UIKit.h>
#import "FFSpecialDetailController.h"

@implementation FFRouterManager

+ (void)load {
    [MGJRouter registerURLPattern:@"jump://PushToSpecialDetail" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *navigationVC = routerParameters[MGJRouterParameterUserInfo][@"navigationVC"];
        FFSpecialDetailController *vc = [[FFSpecialDetailController alloc] init];
        [navigationVC pushViewController:vc animated:YES];
    }];
}

@end
