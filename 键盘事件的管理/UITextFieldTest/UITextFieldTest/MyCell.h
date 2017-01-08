//
//  MyCell.h
//  UITextFieldTest
//
//  Created by wanglei on 15/4/18.
//  Copyright (c) 2015年 wanglei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell

- (void)setReturnKeyType:(UIReturnKeyType)type;

- (void)resetCellWithStr:(NSString *)str;

@end
