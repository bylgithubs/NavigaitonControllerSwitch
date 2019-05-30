//
//  ThirdViewController.m
//  NavigaitonControllerSwitch
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.title = @"第三级";
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem *returnBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回根视图" style:UIBarButtonItemStylePlain target:self action:@selector(pressBackOrigin)];
    self.navigationItem.rightBarButtonItem = returnBtn;
}

- (void) pressBackOrigin{
    //直接返回到根视图
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)pressBack{
    NSLog(@"返回上一级");
    //将当前的视图控制器弹出，返回到上一级界面
    [self.navigationController popViewControllerAnimated:YES];
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

@end
