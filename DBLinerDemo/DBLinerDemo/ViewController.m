//
//  ViewController.m
//  DBLinerDemo
//
//  Created by Xu Mengtong on 1/3/17.
//  Copyright © 2017年 Xu Mengtong. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "UIView+DBLiner.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *testView = UIView.new;
    [self.view addSubview:testView];
    testView.backgroundColor = UIColor.grayColor;
    [testView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(100, 200));
    }];
    
    [testView db_addLinerInPlace:UIRectEdgeLeft lineColor:UIColor.greenColor lineWidth:2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
