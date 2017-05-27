//
//  BDSecondViewController.m
//  LocalizationDemo
//
//  Created by fruits on 2017/5/25.
//  Copyright © 2017年 fruits. All rights reserved.
//

#import "BDSecondViewController.h"

@interface BDSecondViewController ()

@property (nonatomic, strong) UILabel *findLabel;

@end

@implementation BDSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = NSLocalizedString(@"title_bug", nil);

    self.findLabel.text = NSLocalizedString(@"find", nil);
    
    [self.view addSubview:self.findLabel];
    
    self.findLabel.frame = self.view.bounds;
}

#pragma mark - setters and getters
- (UILabel *)findLabel
{
    if (!_findLabel) {
        _findLabel = [[UILabel alloc] init];
        _findLabel.textColor = [UIColor blackColor];
        _findLabel.textAlignment = NSTextAlignmentCenter;
        _findLabel.font = [UIFont systemFontOfSize:16.f];
    }
    return _findLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
