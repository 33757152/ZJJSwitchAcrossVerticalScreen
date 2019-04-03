//
//  AppDelegate.h
//  ZJJSwitchAcrossVerticalScreen
//
//  Created by YD on 2019/4/3.
//  Copyright © 2019年 xtayqria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

/** 设置方向 */
- (void)setNewOrientation:(BOOL)fullscreen;

/** 是否允许转向 */
@property (nonatomic, assign) BOOL allowRotation;

@property (strong, nonatomic) UIWindow *window;

@end

