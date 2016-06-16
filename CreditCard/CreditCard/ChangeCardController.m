//
//  ChangeCardController.m
//  CreditCard
//
//  Created by qq on 16/5/23.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "ChangeCardController.h"

@interface ChangeCardController ()
@property (nonatomic,strong) NSArray *titleList;

@end

@implementation ChangeCardController

- (void)viewDidLoad {
    [super viewDidLoad];
    navTitle(@"Add Card", self);
      self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemStyle:UIBarButtonSystemItemCancel target:self action:@selector(cancelCard:)];
     self.navigationItem.rightBarButtonItem = [UIBarButtonItem barButtonItemStyle:UIBarButtonSystemItemSave target:self action:@selector(saveCard:)];
    self.repaymentDate.inputView = self.datePicker;
    self.repaymentRemind.inputView = self.remindPiker;
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
  

}
-(void)saveCard:(id)sender{
   
[self dismissViewControllerAnimated:YES completion:nil];
}
-(void)cancelCard:(id)sender{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(NSArray *)titleList{
    if (!_titleList) {
        _titleList = [[NSArray alloc]initWithObjects:@"Bank Name",@"Card Name",@"Card Icon",@"Credit Amount",@"Repayment date",@"Repayment remind", nil];
    }
    return _titleList;
}
-(UITextField *)creditAmount{
    if (!_creditAmount) {
        _creditAmount = [[TSCurrencyTextField alloc]initWithFrame:CGRectMake(0, 0, 160, 30)];
        _creditAmount.font = kValueFont;
        _creditAmount.textAlignment = NSTextAlignmentRight;
    }
    return _creditAmount;
}
-(UIPickerView *)datePicker{
    if(!_datePicker){
        _datePicker = [[UIPickerView alloc]init];
        _datePicker.delegate = self;
        _datePicker.dataSource = self;
        _datePicker.tag = 0;
    }
    return _datePicker;
}
-(UIPickerView *)remindPiker{
    if(!_remindPiker){
        _remindPiker = [[UIPickerView alloc]init];
        _remindPiker.delegate = self;
        _remindPiker.dataSource = self;
         _remindPiker.tag = 1;
    }
    return _remindPiker;
}

- (IBAction)keyDone:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
             return self.titleList.count;
            break;
            
        default:
             return 1;
            break;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dd"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"dd"];
        cell.textLabel.font = kTitalFont;
    }
  
    if (indexPath.section == 0) {
          cell.textLabel.text = [self.titleList objectAtIndex:indexPath.row];
        switch (indexPath.row) {
            case 0:
                cell.accessoryView = self.bankName;
                break;
            case 1:
                cell.accessoryView = self.cardName;
                break;
            case 2:
                cell.accessoryView = self.cardIcon;
                break;
            case 3:
                cell.accessoryView = self.creditAmount;
                break;
            case 4:
                cell.accessoryView = self.repaymentDate;
                break;
            case 5:
                cell.accessoryView = self.repaymentRemind;
                break;
            default:
                break;
        }
    }else{
    
    
    }
    return cell;
}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 1) {
        return @"Note";
    }else
        return @"";
}
#pragma mark - Picker view data source
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (pickerView.tag ==0) {
        return 28;
    }else{
    
        return 8;
    }
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (pickerView.tag ==0) {
        return [NSString stringWithFormat:@"%ld per month",row+1];
    }else{
        if (row ==0) {
           return [NSString stringWithFormat:@"no reminder"];
        }else
        return [NSString stringWithFormat:@"%ld day before",row];
    }
   
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (pickerView.tag ==0) {
       self.repaymentDate.text = [NSString stringWithFormat:@"%ld per month",row+1];
    }else{
        if (row ==0) {
           self.repaymentRemind.text =   [NSString stringWithFormat:@"no reminder"];
        }else{
            self.repaymentRemind.text =  [NSString stringWithFormat:@"%ld day before",row];
        }
    }
}
@end
