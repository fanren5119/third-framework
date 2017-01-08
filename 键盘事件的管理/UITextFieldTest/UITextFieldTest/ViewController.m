//
//  ViewController.m
//  UITextFieldTest
//
//  Created by wanglei on 15/4/18.
//  Copyright (c) 2015年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "IQKeyboardManager.h"
#import "IQKeyboardReturnKeyHandler.h"
#import "TableViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, strong) IQKeyboardReturnKeyHandler *returnKeyHandle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.returnKeyHandle = [[IQKeyboardReturnKeyHandler alloc] initWithViewController:self];
    [self.returnKeyHandle setLastTextFieldReturnKeyType:UIReturnKeyDone];
    self.returnKeyHandle.toolbarManageBehaviour = IQAutoToolbarBySubviews;
    
    [self setNavigation];
}


- (void)setNavigation
{
    self.title = @"UITextField";
}

- (IBAction)respondsToRightItem
{
    TableViewController *tableController = [self.storyboard instantiateViewControllerWithIdentifier:@"tableViewController"];
    [self.navigationController pushViewController:tableController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;
}

@end
