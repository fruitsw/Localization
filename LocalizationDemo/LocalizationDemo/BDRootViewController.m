//
//  BDRootViewController.m
//  LocalizationDemo
//
//  Created by fruits on 2017/5/25.
//  Copyright © 2017年 fruits. All rights reserved.
//

#import "BDRootViewController.h"

@interface BDRootViewController ()

@end

@implementation BDRootViewController

- (void)dealloc
{
    NSLog(@"RootViewController dealloc");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self addChildViewController:self.tabBarController];
    [self.view addSubview:self.tabBarController.view];
    self.tabBarController.view.frame = self.view.bounds;
}

#pragma mark - getters and setter
- (BDTabBarController *)tabBarController
{
    if (!_tabBarController) {
        _tabBarController = [[BDTabBarController alloc] init];
    }
    return _tabBarController;
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
