//
//  FYFLimitNumberOfLineController.m
//  FYFLabelHeight_Example
//
//  Created by 范云飞 on 2022/5/13.
//  Copyright © 2022 786452470@qq.com. All rights reserved.
//

#import "FYFLimitNumberOfLineController.h"

#import <FYFLabelHeight/UILabel+Attributed.h>
#import <FYFLabelHeight/NSString+Size.h>

#import <Masonry/Masonry.h>

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


@interface FYFLimitNumberOfLineController ()

@end

@implementation FYFLimitNumberOfLineController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    UILabel * textLabel = [UILabel new];
    textLabel.numberOfLines = 3;
    textLabel.font = [UIFont systemFontOfSize:18];
    textLabel.textColor = [UIColor blackColor];
    textLabel.backgroundColor = [UIColor redColor];
    [textLabel sizeToFit];
    [self.view addSubview:textLabel];
    
    
    CGFloat height = [self.text boundingRectWithSize:CGSizeMake(SCREEN_WIDTH - 100, MAXFLOAT)
                                                font:[UIFont systemFontOfSize:18]
                                           lineSpace:4.0
                                           wordSpace:1.0
                                       numberOfLines:3];
    
    [textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view.mas_centerY);
        make.left.equalTo(self.view.mas_left).offset(50);
        make.right.equalTo(self.view.mas_right).offset(-50);
        make.height.mas_equalTo(height);
    }];
    
    
    [textLabel setLabelAttributedText:self.text
                                 font:[UIFont systemFontOfSize:18]
                            lineSpace:4.f
                            wardSpace:1.0];
    
    textLabel.lineBreakMode = NSLineBreakByWordWrapping | NSLineBreakByTruncatingTail;
}

- (void)setText:(NSString *)text {
    _text = text;
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
