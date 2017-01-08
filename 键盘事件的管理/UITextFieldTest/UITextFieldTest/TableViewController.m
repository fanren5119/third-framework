//
//  TableViewController.m
//  UITextFieldTest
//
//  Created by wanglei on 15/4/18.
//  Copyright (c) 2015年 wanglei. All rights reserved.
//

#import "TableViewController.h"
#import "MyCell.h"
#import "IQKeyboardReturnKeyHandler.h"
#import "TextViewController.h"

@interface TableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) IQKeyboardReturnKeyHandler *returnKeyHandle;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.returnKeyHandle = [[IQKeyboardReturnKeyHandler alloc] initWithViewController:self];
    self.returnKeyHandle.lastTextFieldReturnKeyType = UIReturnKeyDone;
    self.returnKeyHandle.toolbarManageBehaviour = IQAutoToolbarBySubviews;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)respondsToRightItem:(id)sender
{
    TextViewController *textVC = [self.storyboard instantiateViewControllerWithIdentifier:@"textViewController"];
    [self.navigationController pushViewController:textVC animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 13;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (indexPath.row == 12) {
        [cell setReturnKeyType:UIReturnKeyGo];
    }
    [cell resetCellWithStr:[NSString stringWithFormat:@"%ld",indexPath.row]];
    return cell;
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
