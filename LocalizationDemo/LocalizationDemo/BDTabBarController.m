//
//  BDTabBarController.m
//  LocalizationDemo
//
//  Created by fruits on 2017/5/25.
//  Copyright © 2017年 fruits. All rights reserved.
//

#import "BDTabBarController.h"
#import "BDFirstViewController.h"
#import "BDSecondViewController.h"
#import "BDThirdViewController.h"

@interface BDTabBarController ()

@property (nonatomic, strong) UINavigationController *tab1;
@property (nonatomic, strong) UINavigationController *tab2;
@property (nonatomic, strong) UINavigationController *tab3;

@end

@implementation BDTabBarController

- (void)dealloc
{
    NSLog(@"TabBarController dealloc");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tab1.tabBarItem.title = NSLocalizedString(@"tab_home", nil);
    self.tab2.tabBarItem.title = NSLocalizedString(@"tab_find", nil);
    self.tab3.tabBarItem.title = NSLocalizedString(@"tab_me", nil);
    
    self.viewControllers = @[self.tab1, self.tab2, self.tab3];
}

#pragma mark - setters and getters
- (UINavigationController *)tab3
{
    if (!_tab3) {
        BDThirdViewController *thirdVC = [[BDThirdViewController alloc] init];
        _tab3 = [[UINavigationController alloc] initWithRootViewController:thirdVC];
    }
    return _tab3;
}

- (UINavigationController *)tab2
{
    if (!_tab2) {
        BDSecondViewController *secondVC =[[BDSecondViewController alloc] init];
        _tab2 = [[UINavigationController alloc] initWithRootViewController:secondVC];
    }
    return _tab2;
}

- (UINavigationController *)tab1
{
    if (!_tab1) {
        BDFirstViewController *firstVC = [[BDFirstViewController alloc] init];
        _tab1 = [[UINavigationController alloc] initWithRootViewController:firstVC];
    }
    return _tab1;
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
