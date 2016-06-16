//
//  UIBarButtonItemAdditions.h
//  TinyPill
//
//  Created by yy on 5/19/13.
//  Copyright (c) 2013 yy. All rights reserved.
//

#import "UIBarButtonItemAdditions.h"

@implementation UIBarButtonItem (Additions)

+(id)barButtonItemWithCostomImage:(UIImage *)image target:(id)target action:(SEL)action{
    [self navBackgroundImage:(id)target];
    
    UIBarButtonItem *setBudgetButton = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStyleDone target:target action:action];
    
    
    setBudgetButton.tintColor = [UIColor colorWithPatternImage:image];

    return setBudgetButton;
}
+(id)barButtonItemStyle:(NSInteger)styl target:(id)target action:(SEL)action{
    UIBarButtonItem *barBack = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:styl target:target action:action];
    barBack.tintColor = [UIColor whiteColor];
    [self navBackgroundImage:(id)target];
    return barBack;
}
+(void)navBackgroundImage:(id)target{
    if ([[target class] isSubclassOfClass:[UITableViewController class]]) {
        UITableViewController *view = (UITableViewController *)target;
        //        view.view.backgroundColor = kBackgroudColor;
        //        view.tableView.backgroundView = [[UIImageView alloc]initWithImage:kBackgroundImage];
//        view.navigationController.navigationBar.backgroundColor = [UIColor colorWithRed:224/255.0 green:105/255.0 blue:25/255.0 alpha:1];
        view.tableView.backgroundView = nil;
        
        
        view.navigationController.navigationBar.shadowImage = [[UIImage alloc]init];
    }
    else {
        UIViewController *view = (UIViewController *)target;
        //        view.view.backgroundColor = kBackgroudColor;
        //        [view.navigationController.navigationBar setBackgroundImage:kNavigationImage forBarMetrics:UIBarMetricsDefault];
//        view.navigationController.navigationBar.backgroundColor = [UIColor colorWithRed:224/255.0 green:105/255.0 blue:25/255.0 alpha:1];
        view.navigationController.navigationBar.shadowImage = [[UIImage alloc]init];
    }
    
}
@end
