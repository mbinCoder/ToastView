//
//  UIViewControllerEx.m
//  ToastView
//
//  Created by 孟斌 on 2018/3/20.
//  Copyright © 2018年 com.xxx. All rights reserved.
//

#import "UIViewControllerEx.h"

@interface UIViewControllerEx ()

@end

@implementation UIViewControllerEx

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)showToastView:(NSString *)text
{
    ToastView * toastView = [[ToastView alloc] initWithParentView:self.view andText:text showType:ToastType_Text];
    [toastView show];
}
- (void)showToastView:(NSString *)text showType:(ToastType)type
{
    ToastView * toastView = [[ToastView alloc] initWithParentView:self.view andText:text showType:type];
    [toastView show];
}
@end
