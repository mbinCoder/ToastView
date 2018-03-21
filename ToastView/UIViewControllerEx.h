//
//  UIViewControllerEx.h
//  ToastView
//
//  Created by 孟斌 on 2018/3/20.
//  Copyright © 2018年 com.xxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToastView.h"

@interface UIViewControllerEx : UIViewController

//show toast view
- (void)showToastView:(NSString*)text;
- (void)showToastView:(NSString *)text showType:(ToastType)type;
@end
