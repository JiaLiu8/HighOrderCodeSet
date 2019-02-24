//
//  main.m
//  APP启动
//
//  Created by liujia on 2019/1/7.
//  Copyright © 2019年 liujia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSLog(@"start");
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
//        UIApplicationMain 主要做了3个事情 1.创建一个aplication 2.创建了application delegate 3 事件循环
//        读取info.plist文件NSMainNibFile key 加载第一个视图
//        第3个参数继承uiaplication 第4个参数 必须遵循 appdelegate协议
    }
}
