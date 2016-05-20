//
//  ViewController.m
//  Application
//
//  Created by 王陕 on 16/5/20.
//  Copyright © 2016年 王陕. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)buttonAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 应用程序完整启动流程
    /**
     
     1, 执行Main
     2, 执行UIApplicationMain 函数
     3, 创建UIApplication对象, 并设置UIApplicationMain 对象的代理
        UIApplication 的第三个参数就是UIApplication 的名称, 如果指定为nil, 就会默认为UIApplication
        UIApplication 的第四个参数是UIApplication 的代理
     4, 开启一个主运行循环, 保证程序不退出
     5, 加载info.plist  加载配置文件, 查找info.plist 的Main stroyboard file base name 中有没哟指定storyboard. 如果有, 就去加载.  如果没有, 应用程序加载完毕
     6, 通知应用程序, 调用代理方法
     
     
     */
    
    
    
    UIApplication *app = [UIApplication sharedApplication];
    
    UIUserNotificationSettings *setting = [UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeBadge|UIUserNotificationTypeSound|UIUserNotificationTypeAlert) categories:nil];
    [app registerUserNotificationSettings:setting];
    
    // 设置应用程序右上角提醒数字
    app.applicationIconBadgeNumber = 77;
    
    // 设置联网状态
//    app.networkActivityIndicatorVisible = YES;
    
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


// 通过重写这个方法, 可以改变 系统状态条 的颜色
- (UIStatusBarStyle)preferredStatusBarStyle {

    return UIStatusBarStyleLightContent;
}


// 通过重写这个方法, 可以隐藏 系统状态条
- (BOOL)prefersStatusBarHidden {
    return NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAction:(id)sender {
    
    // 应用程序的跳转
    UIApplication *ap = [UIApplication sharedApplication];
    
    
    // URL:协议头://域名 应用程序通过协议头的类型,去打开相应的软件.
    
    // 应用跳转到系统浏览器
//    NSURL *url =[NSURL URLWithString:@"http://www.baidu.com"];
    
    // 打电话
//    NSURL *url =[NSURL URLWithString:@"tel://10086"];
    
    // 发短信
    NSURL *url = [NSURL URLWithString:@"sms://10086"];
    
    
    [ap openURL:url];
    
}
@end
