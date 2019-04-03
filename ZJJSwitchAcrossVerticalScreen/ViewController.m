//
//  ViewController.m
//  ZJJSwitchAcrossVerticalScreen
//
//  Created by YD on 2019/4/3.
//  Copyright © 2019年 xtayqria. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    AppDelegate * appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelegate.allowRotation = NO;//关闭横屏仅允许竖屏
    [appDelegate setNewOrientation:NO];//调用转屏代码
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"viewController";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    PushViewController *push = [[PushViewController alloc] init];
    [self.navigationController pushViewController:push animated:YES];
}

@end
