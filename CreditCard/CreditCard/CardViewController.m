//
//  CardViewController.m
//  CreditCard
//
//  Created by qq on 16/5/23.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "CardViewController.h"
#import "ChangeCardController.h"
@interface CardViewController ()

@end

@implementation CardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    navTitle(@"Credit Cards", self);
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemStyle:UIBarButtonSystemItemAdd target:self action:@selector(addCard:)];
}
-(void)addCard:(id)sender{
    ChangeCardController *changeCard = [[ChangeCardController alloc]initWithNibName:@"ChangeCardController" bundle:nil];
    UINavigationController *changeCardNav = [[UINavigationController alloc]initWithRootViewController:changeCard];
    [self presentViewController:changeCardNav animated:YES completion:nil];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dd"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"dd"];
    }
    cell.textLabel.text = @"dfa";
    // Configure the cell...
    
    return cell;
}


@end
