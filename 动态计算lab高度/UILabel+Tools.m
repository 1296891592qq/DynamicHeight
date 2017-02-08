//
//  UILabel+StringFrame.m
//  SBoard
//
//  Created by 冯敏 on 15-4-9.
//  Copyright (c) 2015年 冯敏. All rights reserved.
//

#import "UILabel+Tools.h"
/**
 *动态计算Label的高度
 **/
@implementation UILabel (Tools)

- (CGSize)boundingRectWithSize:(CGSize)size
{
    NSDictionary *attribute = @{NSFontAttributeName: self.font};
    
    CGSize retSize = [self.text boundingRectWithSize:size
                                             options:\
                      NSStringDrawingTruncatesLastVisibleLine |
                      NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                          attributes:attribute
                                             context:nil].size;
    
    return retSize;
}

@end
