//
//  RootViewController.m
//  NavigaitonControllerSwitch
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置导航栏的透明度
    //默认透明度YES:可透明
    //NO:使导航栏不透明
    self.navigationController.navigationBar.translucent = NO;
    //设置导航栏风格
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    self.view.backgroundColor = [UIColor blueColor];
    
    self.title = @"根视图";
    UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle:@"下一级" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    self.navigationItem.rightBarButtonItem = next;
    
}
- (void)pressNext{
    //创建新的视图控制器
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    //使用当前视图控制器的导航控制器对象
    [self.navigationController pushViewController:secondVC animated:YES];
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
