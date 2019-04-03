//
//  PushViewController.m
//  ZJJSwitchAcrossVerticalScreen
//
//  Created by YD on 2019/4/3.
//  Copyright © 2019年 xtayqria. All rights reserved.
//

#import "PushViewController.h"
#import "AppDelegate.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelegate.allowRotation = YES;//(以上2行代码,可以理解为打开横屏开关)
    [appDelegate setNewOrientation:YES];//调用转屏代码
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"push";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
