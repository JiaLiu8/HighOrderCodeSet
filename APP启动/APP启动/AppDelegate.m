//
//  AppDelegate.m
//  APP启动
//
//  Created by liujia on 2019/1/7.
//  Copyright © 2019年 liujia. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+EX.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// 业务太多 可以通过分类来处理 或者创建其他文件来处理 总的就是减轻 appdelegate的代码量 个人倾向于创建其他文件来操作

//- (void)

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    delegate的属性window 和 main.storyboard的关联默认的相当于 widow的 rootview 就是main.storyboard
//    windowlevel  最高 alert > statusbar > normal
    NSLog(@"end");
    
    //     优化启动时间 时间分为2部分 T1 main前 T2 main后 （T1:系统环境布局时间：创建进程，加载解析可执行文件《库加载，堆栈环境配置等》T2:从main到第一个界面显示时间）
    /*
     1. 库加载的越多,启动越慢
     2. Objc类越多，越慢
     3. 静态对象、全局对象越多，启动越慢
     4. Objc +load越多，启动越慢
     那么我们能把控的就是 load和T2时间上进行优化  T2优化方案，将一些业务放在子线程上来处理
     */
//    runloop 伪代码
    /*
     do {
     1.处理事情
     2.if（是否还有事情去处理） {
        goto 处理事情handle_msg（处理消息模块）
     }
     3.等待消息（wait）即休眠
     _cfrunloopServiceMachport (wait)准备休眠 阻塞 // 如果有消息来了，需要处理，就醒来 // mach_msg(port)
      4.醒来了 （即有消息来了） observers(kscfrunloopafterwaiting)
     5.继续处理消息handle_msg（处理消息模块）
     } while(1)
     
     */
    return YES;
}

- (void)runloopTest {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [[NSRunLoop currentRunLoop] run]; // 创建 并且开启
    });
  CFRunLoopRun()
//
    
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
