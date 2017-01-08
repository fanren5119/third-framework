//
//  ThirdCell.m
//  UITextFieldTest
//
//  Created by wanglei on 15/4/19.
//  Copyright (c) 2015年 wanglei. All rights reserved.
//

#import "ThirdCell.h"
#import "IQKeyboardManager.h"

@interface ThirdCell () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (nonatomic, assign) UIReturnKeyType type;

@end

@implementation ThirdCell

- (void)awakeFromNib {
    // Initialization code
    self.textView.delegate = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)resetCellWithStr:(NSString *)str
{
    self.textView.text = str;
}

- (void)setReturnKeyType:(UIReturnKeyType)type
{
    self.type = type;
    self.textView.returnKeyType = type;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        if (self.type == UIReturnKeyNext) {
            [[IQKeyboardManager sharedManager] goNext];
        }
        return YES;
    }
    return YES;
}


@end
