//
//  FYFViewController.m
//  FYFLabelHeight
//
//  Created by 786452470@qq.com on 05/13/2022.
//  Copyright (c) 2022 786452470@qq.com. All rights reserved.
//

#import "FYFViewController.h"

#import "FYFLimitNumberOfLineController.h"
#import "FYFUnLimitNumberOfLineController.h"

#import <Masonry/Masonry.h>

@interface FYFViewController ()

@end

@implementation FYFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Label高度计算";
    
    UIButton * limitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    limitButton.backgroundColor = [UIColor blackColor];
    [limitButton setTitle:@"指定行数" forState:UIControlStateNormal];
    [limitButton addTarget:self action:@selector(limitButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:limitButton];
    
    [limitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(200);
        make.centerX.equalTo(self.view.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(80, 30));
    }];
    
    
    UIButton * unLimitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    unLimitButton.backgroundColor = [UIColor blackColor];
    [unLimitButton setTitle:@"不限行数" forState:UIControlStateNormal];
    [unLimitButton addTarget:self action:@selector(unLimitButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:unLimitButton];
    
    [unLimitButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(limitButton.mas_bottom).offset(100);
        make.centerX.equalTo(self.view.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(80, 30));
    }];
}

- (void)limitButtonClick:(id)sender {
    FYFLimitNumberOfLineController * limitVC = [[FYFLimitNumberOfLineController alloc] init];
    limitVC.text =  @"😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了,发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方🍚🍚🍚🍚🍚🍚垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了,发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了";
    [self.navigationController pushViewController:limitVC animated:YES];
}

- (void)unLimitButtonClick:(id)sender {
    FYFUnLimitNumberOfLineController * unLimitVC = [[FYFUnLimitNumberOfLineController alloc] init];
    unLimitVC.text = @"😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊😊发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科🍚🍚🍚🍚🍚🍚技对方垃圾死了发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了发神经辣椒粉发生街坊邻居奥斯卡发神经发觉对方垃圾死了快递费金坷垃所肩负的发神经东方丽景奥斯卡飞机发生科技对方垃圾死了😠";
    [self.navigationController pushViewController:unLimitVC animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
