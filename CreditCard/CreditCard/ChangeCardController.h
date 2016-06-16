//
//  ChangeCardController.h
//  CreditCard
//
//  Created by qq on 16/5/23.
//  Copyright © 2016年 qq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TSCurrencyTextField.h"
@interface ChangeCardController : UITableViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *bankName;
@property (strong, nonatomic) IBOutlet UITextField *cardName;
@property (strong, nonatomic) IBOutlet UITextField *repaymentDate;
@property (strong, nonatomic) IBOutlet UITextField *repaymentRemind;
@property (strong, nonatomic) IBOutlet UIButton *cardIcon;
@property (strong, nonatomic) TSCurrencyTextField *creditAmount;
@property (strong, nonatomic) UIPickerView *datePicker;
@property (strong, nonatomic) UIPickerView *remindPiker;
- (IBAction)keyDone:(id)sender;
@end
