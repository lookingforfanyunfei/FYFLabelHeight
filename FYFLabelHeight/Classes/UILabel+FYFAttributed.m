//
//  UILabel+FYFAttributed.m
//  FYFLabelHeight
//
//  Created by 范云飞 on 2019/10/12.
//  Copyright © 2019 fanyunfei. All rights reserved.
//

#import "UILabel+FYFAttributed.h"

@implementation UILabel (FYFAttributed)

- (void)fyf_setLabelAttributedText:(NSString *)text
                          font:(UIFont *)font
                     lineSpace:(CGFloat)lineSpace
                     wardSpace:(CGFloat)wordSpace {
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paragraphStyle.lineSpacing = lineSpace;
    NSDictionary *attributes = @{ NSFontAttributeName:font,
                                  NSParagraphStyleAttributeName:paragraphStyle,
                                  NSKernAttributeName:@(wordSpace)};
    self.attributedText = [[NSAttributedString alloc]initWithString:text attributes:attributes];
}

@end
