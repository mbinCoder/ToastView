//
//  ToastView.m
//  ToastView
//
//  Created by 孟斌 on 2018/3/20.
//  Copyright © 2018年 com.xxx. All rights reserved.
//

#import "ToastView.h"

@implementation ToastView

- (id)initWithParentView:(UIView *)parentView andText:(NSString *)text
{
    self = [super init];
    if (self) {
        // Initialization code
        hud = [[MBProgressHUD alloc] initWithView:parentView];
        hud.detailsLabelText = text;
        hud.detailsLabelFont = [UIFont systemFontOfSize:16];
        if (self.showType == ToastType_Error) {
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
            imageView.image = [UIImage imageNamed:@"ic_bounce_error"];
            hud.customView = imageView;
        }else if (self.showType == ToastType_Warning){
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
            imageView.image = [UIImage imageNamed:@"ic_bounce_error"];
            hud.customView = imageView;
        }else
            hud.mode = MBProgressHUDModeText;
        hud.yOffset = 0;
        hud.removeFromSuperViewOnHide = YES;
        hud.clickOutSideToHide = YES;
        hud.tag = 99999;
        [parentView addSubview:hud];
        [parentView bringSubviewToFront:hud];
    }
    return self;
}
- (id)initWithParentView:(UIView *)parentView andText:(NSString *)text showType:(ToastType)type
{
    self = [super init];
    if (self) {
        // Initialization code
        hud = [[MBProgressHUD alloc] initWithView:parentView];
        hud.detailsLabelText = text;
        hud.detailsLabelFont = [UIFont systemFontOfSize:16];
        if (type == ToastType_Error) {
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
            imageView.image = [UIImage imageNamed:@"ic_bounce_error"];
            hud.customView = imageView;
        }else if (type == ToastType_Warning){
            hud.mode = MBProgressHUDModeCustomView;
            UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
            imageView.image = [UIImage imageNamed:@"ic_bounce_error"];
            hud.customView = imageView;
        }else
            hud.mode = MBProgressHUDModeText;
        hud.yOffset = 0;
        hud.removeFromSuperViewOnHide = YES;
        hud.clickOutSideToHide = YES;
        hud.tag = 99999;
        [parentView addSubview:hud];
        [parentView bringSubviewToFront:hud];
    }
    return self;
}
- (void)dealloc {
    
}

- (void)show
{
    [hud show:YES];
    [hud hide:YES afterDelay:3];
}

- (void) setYOffset:(int) yOffset
{
    hud.yOffset = yOffset;
}
@end
