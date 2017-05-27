//
//  BDFirstViewController.m
//  LocalizationDemo
//
//  Created by fruits on 2017/5/25.
//  Copyright © 2017年 fruits. All rights reserved.
//

#import "BDFirstViewController.h"

@interface BDFirstViewController ()

@property (nonatomic, strong) UILabel *welcomeLabel;

@end

@implementation BDFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = NSLocalizedString(@"title_badCoding", nil);
    self.welcomeLabel.text = NSLocalizedString(@"welcome", nil);
    
    [self.view addSubview:self.welcomeLabel];
    
    self.welcomeLabel.frame = self.view.bounds;;
}

#pragma mark - getters and setters
- (UILabel *)welcomeLabel
{
    if (!_welcomeLabel) {
        _welcomeLabel = [[UILabel alloc] init];
        _welcomeLabel.textColor = [UIColor orangeColor];
        _welcomeLabel.textAlignment = NSTextAlignmentCenter;
        _welcomeLabel.font = [UIFont systemFontOfSize:16.f];
    }
    return _welcomeLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
