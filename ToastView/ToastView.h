//
//  ToastView.h
//  ToastView
//
//  Created by 孟斌 on 2018/3/20.
//  Copyright © 2018年 com.xxx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"

typedef NS_ENUM(NSInteger,ToastType){
    ToastType_Error,
    ToastType_Warning,
    ToastType_Text,
};
@interface ToastView : NSObject
{
    MBProgressHUD* hud;
}
//设置toast提示图标样式
@property (nonatomic, assign) ToastType showType;

- (id)initWithParentView:(UIView*)parentView andText:(NSString*)text;
- (id)initWithParentView:(UIView*)parentView andText:(NSString*)text showType:(ToastType)type;
- (void)show;

- (void) setYOffset:(int) yOffset;
@end
