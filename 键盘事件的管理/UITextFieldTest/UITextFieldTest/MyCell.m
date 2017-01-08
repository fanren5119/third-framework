//
//  MyCell.m
//  UITextFieldTest
//
//  Created by wanglei on 15/4/18.
//  Copyright (c) 2015年 wanglei. All rights reserved.
//

#import "MyCell.h"
#import "IQKeyboardManager.h"

@interface MyCell () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation MyCell

- (void)awakeFromNib {
    // Initialization code
    self.textField.delegate = self;
    self.textField.returnKeyType = UIReturnKeyNext;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)resetCellWithStr:(NSString *)str
{
    self.textField.placeholder = str;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [[IQKeyboardManager sharedManager] goNext];
    return YES;
}

- (void)setReturnKeyType:(UIReturnKeyType)type
{
    self.textField.returnKeyType = type;
}

@end
