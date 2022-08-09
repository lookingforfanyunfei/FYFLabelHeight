//
//  UILabel+Attributed.h
//  FYFLabelHeight
//
//  Created by 范云飞 on 2019/10/12.
//  Copyright © 2019 fanyunfei. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (FYFAttributed)

/// UILabel 设置富文本
/// @param text 文本
/// @param font 文本字体
/// @param lineSpace 行间距
/// @param wordSpace 字间距

- (void)fyf_setLabelAttributedText:(NSString *)text
                          font:(UIFont *)font
                     lineSpace:(CGFloat)lineSpace
                     wardSpace:(CGFloat)wordSpace;

@end

NS_ASSUME_NONNULL_END
