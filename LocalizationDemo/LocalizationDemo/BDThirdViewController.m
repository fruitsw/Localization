//
//  BDThirdViewController.m
//  LocalizationDemo
//
//  Created by fruits on 2017/5/25.
//  Copyright © 2017年 fruits. All rights reserved.
//

#import "BDThirdViewController.h"
#import "NSBundle+Language.h"
#import "BDTabBarController.h"
#import "BDRootViewController.h"

@interface BDThirdViewController ()

@property (nonatomic, strong) UIButton *chineseBtn;
@property (nonatomic, strong) UIButton *englishBtn;
@property (nonatomic, strong) UIButton *japaneseBtn;

@end

@implementation BDThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = NSLocalizedString(@"title_setting", nil);
    [self.chineseBtn addTarget:self action:@selector(changeLanguageButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.englishBtn addTarget:self action:@selector(changeLanguageButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.japaneseBtn addTarget:self action:@selector(changeLanguageButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.chineseBtn];
    [self.view addSubview:self.englishBtn];
    [self.view addSubview:self.japaneseBtn];
    
    self.chineseBtn.frame = CGRectMake(100, 100, 100, 40);
    self.englishBtn.frame = CGRectMake(100, 180, 100, 40);
    self.japaneseBtn.frame = CGRectMake(100, 260, 100, 40);
    
}

#pragma mark - button action
- (void)changeLanguageButtonAction:(UIButton *)sender
{
    static NSInteger index = 0;
    if (index != sender.tag) {
        index = sender.tag;
    }
    else {
        return;
    }
    
    switch (sender.tag) {
        case 101:
            [self changeLanguageWithCode:@"zh-Hans"];
            break;
        case 102:
            [self changeLanguageWithCode:@"en"];
            break;
        case 103:
            [self changeLanguageWithCode:@"ja"];
            break;
        default:
            break;
    }
}

#pragma mark - private
- (void)changeLanguageWithCode:(NSString *)code
{
    // 设置语言
    [NSBundle setLanguage:code];
    
    // 然后将设置好的语言存储好，下次进来直接加载
    [[NSUserDefaults standardUserDefaults] setObject:code forKey:@"myLanguage"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    // 我们要把系统windown的rootViewController替换掉
    BDRootViewController *rootVC = [[BDRootViewController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = rootVC;
    // 跳转到设置页
    rootVC.tabBarController.selectedIndex = 2;
}

#pragma mark - setters and getters
- (UIButton *)chineseBtn
{
    if (!_chineseBtn) {
        _chineseBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_chineseBtn setTitle:NSLocalizedString(@"chinese", nil) forState:UIControlStateNormal];
        [_chineseBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _chineseBtn.tag = 101;
    }
    return _chineseBtn;
}

- (UIButton *)englishBtn
{
    if (!_englishBtn) {
        _englishBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_englishBtn setTitle:NSLocalizedString(@"english", nil) forState:UIControlStateNormal];
        [_englishBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _englishBtn.tag = 102;
    }
    return _englishBtn;
}

- (UIButton *)japaneseBtn
{
    if (!_japaneseBtn) {
        _japaneseBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_japaneseBtn setTitle:NSLocalizedString(@"japanese", nil) forState:UIControlStateNormal];
        [_japaneseBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _japaneseBtn.tag = 103;
    }
    return _japaneseBtn;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
