//
//  FFAuthorDetailController.m
//  FlowerField
//
//  Created by 郑佳 on 2017/8/26.
//  Copyright © 2017年 Triangle. All rights reserved.
//

#import "FFAuthorDetailController.h"
#import "MGJRouter.h"

@interface FFAuthorDetailController ()

@end

@implementation FFAuthorDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"作者详情";
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [MGJRouter openURL:@"jump://PushToSpecialDetail" withUserInfo:@{@"navigationVC" : self.navigationController} completion:^(id result) {
        NSLog(@"it is complete");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
