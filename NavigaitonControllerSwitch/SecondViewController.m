//
//  SecondViewController.m
//  NavigaitonControllerSwitch
//
//  Created by Civet on 2019/5/23.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"视图二";
    UIBarButtonItem *nextBtn = [[UIBarButtonItem alloc] initWithTitle:@"第三视图" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    self.navigationItem.rightBarButtonItem = nextBtn;
}

- (void)pressNext{
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdVC animated:YES];
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
