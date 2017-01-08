//
//  SecondCell.m
//  UITextFieldTest
//
//  Created by wanglei on 15/4/19.
//  Copyright (c) 2015年 wanglei. All rights reserved.
//

#import "SecondCell.h"
#import "IQKeyboardManager.h"

@interface SecondCell () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, assign) UIReturnKeyType type;

@end

@implementation SecondCell

- (void)awakeFromNib {
    // Initialization code
    self.textField.delegate = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)resetCellWithStr:(NSString *)str
{
    self.textField.text = str;
}

- (void)setReturnKeyType:(UIReturnKeyType)type
{
    self.textField.returnKeyType = type;
    self.type = type;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (self.type == UIReturnKeyNext) {
        [[IQKeyboardManager sharedManager] goNext];
    }
    return YES;
}

@end
