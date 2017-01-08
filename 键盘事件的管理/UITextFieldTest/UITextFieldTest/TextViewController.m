//
//  TextViewController.m
//  UITextFieldTest
//
//  Created by wanglei on 15/4/19.
//  Copyright (c) 2015年 wanglei. All rights reserved.
//

#import "TextViewController.h"
#import "SecondCell.h"
#import "ThirdCell.h"

#import "TextFieldViewController.h"

@interface TextViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation TextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        SecondCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"SecondCell" owner:nil options:nil] lastObject];
        [cell resetCellWithStr:@"睡觉了时间都费劲死了"];
        [cell setReturnKeyType:UIReturnKeyNext];
        return cell;
    }
    else if (indexPath.row == 1) {
        SecondCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"SecondCell" owner:nil options:nil] lastObject];
        [cell resetCellWithStr:@"是否加快结构连接结构"];
                [cell setReturnKeyType:UIReturnKeyNext];
        return cell;
    }
    else if (indexPath.row == 2){
        ThirdCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"ThirdCell" owner:nil options:nil] lastObject];
        [cell resetCellWithStr:@"睡觉了时间都费劲死了收到福建老家了福建老家了就是房价十分简单说了句"];
                [cell setReturnKeyType:UIReturnKeyNext];
        return cell;
    }
    else if (indexPath.row == 3) {
        ThirdCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"ThirdCell" owner:nil options:nil] lastObject];
        [cell resetCellWithStr:@"睡觉了时间都费劲死了收到福建老家了福建老家了就是房价十分简单说了句是否是对方会很舒服的客户身份"];
        [cell setReturnKeyType:UIReturnKeyNext];
        return cell;
    }
    else {
        SecondCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"SecondCell" owner:nil options:nil] lastObject];
        [cell resetCellWithStr:@"额确认人五人玩儿"];
                [cell setReturnKeyType:UIReturnKeyGo];
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return 44;
    }
    else if (indexPath.row == 1) {
        return 44;
    }
    else if (indexPath.row == 2){
        return 100;
    }
    else if (indexPath.row == 3){
        return 100;
    }
    else {
        return 44;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)respondsToPushTextFieldVC:(id)sender
{
    TextFieldViewController *textFieldVC = [self.storyboard instantiateViewControllerWithIdentifier:@"textField"];
    [self.navigationController pushViewController:textFieldVC animated:YES];
}

@end
