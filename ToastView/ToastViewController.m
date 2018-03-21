//
//  ToastViewController.m
//  ToastView
//
//  Created by 孟斌 on 2018/3/20.
//  Copyright © 2018年 com.xxx. All rights reserved.
//

#import "ToastViewController.h"

@interface ToastViewController ()

@end

@implementation ToastViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btnName = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, 50, 40)];
    btnName.titleLabel.font = [UIFont systemFontOfSize:15];
    btnName.backgroundColor = [UIColor lightGrayColor];
    [btnName setTitle:@"按钮1" forState:UIControlStateNormal];
    [btnName setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnName addTarget:self action:@selector(btnNameClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnName];
    
    UIButton *btnName2 = [[UIButton alloc]initWithFrame:CGRectMake(200, 100, 50, 40)];
    btnName2.titleLabel.font = [UIFont systemFontOfSize:15];
    btnName2.backgroundColor = [UIColor lightGrayColor];
    [btnName2 setTitle:@"按钮2" forState:UIControlStateNormal];
    [btnName2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnName2 addTarget:self action:@selector(btnName2Clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnName2];
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
-(void)btnNameClicked:(id)sender
{
    [self showToastView:@"您错误了"];
}
-(void)btnName2Clicked:(id)sender
{
    [self showToastView:@"您错误了" showType:ToastType_Warning];
}
@end
