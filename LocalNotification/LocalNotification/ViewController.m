//
//  ViewController.m
//  LocalNotification
//
//  Created by qingyun on 16/7/7.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)firstNotification:(id)sender {
    //1.构建触发通知的时间
    UILocalNotification *localNoti = [[UILocalNotification alloc] init];
    NSDate *date = [NSDate date];//当前时间
    NSDate *fireDate = [date dateByAddingTimeInterval:7];
    localNoti.fireDate = fireDate;
    
    //通知的内容
    localNoti.alertBody = @"7S 到了.";
    localNoti.applicationIconBadgeNumber = 7;
//    localNoti.soundName = @""
    localNoti.alertAction = @"打开";
    localNoti.soundName = UILocalNotificationDefaultSoundName;
    
    //设置自定义信息
    localNoti.userInfo = @{@"key":@"7s"};
    
    //将通知内容告诉给系统
    [[UIApplication sharedApplication] scheduleLocalNotification:localNoti];
}
- (IBAction)secondNotification:(id)sender {
    //1.构建触发通知的时间
    UILocalNotification *localNoti = [[UILocalNotification alloc] init];
    NSDate *date = [NSDate date];//当前时间
    NSDate *fireDate = [date dateByAddingTimeInterval:10];
    localNoti.fireDate = fireDate;
    
    //循环的设置
    localNoti.repeatCalendar = [NSCalendar currentCalendar];
    localNoti.repeatInterval = NSCalendarUnitMinute;
    
    ;
}

@end
