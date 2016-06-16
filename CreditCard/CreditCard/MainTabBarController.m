//
//  MainTabBarController.m
//  CreditCard
//
//  Created by qq on 16/5/23.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "MainTabBarController.h"
#import "CardViewController.h"
#import "AccountTableViewController.h"
#import "FigureTableViewController.h"
#import "SearchViewController.h"
@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    CardViewController *card = [[CardViewController alloc]initWithStyle:UITableViewStyleGrouped];
    UINavigationController *cardNav = [[UINavigationController alloc]initWithRootViewController:card];
    [cardNav.tabBarItem setImage:[UIImage imageNamed:@"drugs_unsel"]];
    
    AccountTableViewController *account = [[AccountTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    UINavigationController *accountNav = [[UINavigationController alloc]initWithRootViewController:account];
      [accountNav.tabBarItem setImage:[UIImage imageNamed:@"profiles_unsel"]];
    
    FigureTableViewController *figure = [[FigureTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    UINavigationController *figureNav = [[UINavigationController alloc]initWithRootViewController:figure];
      [figureNav.tabBarItem setImage:[UIImage imageNamed:@"drugs_unsel"]];
    
    SearchViewController *search = [[SearchViewController alloc]init];
    UINavigationController *searchNav = [[UINavigationController alloc]initWithRootViewController:search];
      [searchNav.tabBarItem setImage:[UIImage imageNamed:@"history_unsel"]];
    
    self.viewControllers = [NSArray arrayWithObjects:cardNav,accountNav,figureNav,searchNav, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
