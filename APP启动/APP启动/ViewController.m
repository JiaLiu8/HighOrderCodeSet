//
//  ViewController.m
//  APP启动
//
//  Created by liujia on 2019/1/7.
//  Copyright © 2019年 liujia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

+ (void)load {
    NSLog(@"load");
}

+(void)initialize {
    NSLog(@"initialize");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
