//
//  NoteViewController.m
//  CheckBooks
//
//  Created by yy on 5/19/13.
//  Copyright (c) 2013 yy. All rights reserved.
//

#import "NoteViewController.h"
#import "UIBarButtonItemAdditions.h"
@interface NoteViewController ()

@end

@implementation NoteViewController
@synthesize noteView;



- (void)loadView
{
    [super loadView];
    
//    self.bg_view = [[UIView alloc]initWithFrame:CGRectMake(10, 10, kScreenWidth - 20, 176)];
//    self.bg_view.backgroundColor = [UIColor whiteColor];
//    self.bg_view.layer.cornerRadius = 10;
//    self.bg_view.clipsToBounds = YES;
//    self.bg_view.layer.borderWidth = 1;
//    self.bg_view.layer.borderColor = [UIColor colorWithRed:210/255.0 green:214/255.0 blue:217/255.0 alpha:1.0].CGColor;
//    
//    [self.view addSubview:self.bg_view];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithCostomImage:kNavback
                                                                                   target:self
                                                                                   action:@selector(back:)];
    
    [self.view addSubview:self.noteView];

}
-(UITextView *)noteView{
    if (!noteView) {
        self.noteView = [[UITextView alloc]initWithFrame:CGRectMake(20, 10, kScreenWidth - 40, 160)];
        self.noteView.font = [UIFont systemFontOfSize:17];
        self.noteView.backgroundColor = [UIColor whiteColor];
        self.noteView.layer.cornerRadius = 10;
        self.noteView.clipsToBounds = YES;
        self.noteView.layer.borderWidth = 1;
        self.noteView.layer.borderColor = [UIColor colorWithRed:210/255.0 green:214/255.0 blue:217/255.0 alpha:1.0].CGColor;
        
        self.noteView.backgroundColor = [UIColor whiteColor];
    }
    return noteView;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    if (self.title == nil) {
          navTitle(@"Note", self);
    }else{
          navTitle(self.title, self);
    }
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
  
   
    
   
       [noteView becomeFirstResponder];

}
-(void)dismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion{


}
-(void)back:(id)sender{
 
    [self.noteValue noteValue:self.noteView.text type:nil];
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
