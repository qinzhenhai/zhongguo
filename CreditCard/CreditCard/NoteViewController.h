//
//  NoteViewController.h
//  TinyPill
//
//  Created by yy on 5/19/13.
//  Copyright (c) 2013 yy. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol NoteValue <NSObject>

- (void) noteValue:(NSString *)note type:(NSString *)type;

@end
@interface NoteViewController : UIViewController
@property (nonatomic,strong)UITextView   *noteView;
@property (nonatomic, assign) id<NoteValue> noteValue;

@property (strong, nonatomic) UIView                        *bg_view;


@end
