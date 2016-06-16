//
//  TB_Credit+CoreDataProperties.h
//  CreditCard
//
//  Created by qq on 16/5/23.
//  Copyright © 2016年 qq. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "TB_Credit.h"

NS_ASSUME_NONNULL_BEGIN

@interface TB_Credit (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *bankName;
@property (nullable, nonatomic, retain) NSString *cardName;
@property (nullable, nonatomic, retain) NSString *icon;
@property (nullable, nonatomic, retain) NSNumber *amount;
@property (nullable, nonatomic, retain) NSString *note;
@property (nullable, nonatomic, retain) NSString *attribute;
@property (nullable, nonatomic, retain) NSString *attribute1;
@property (nullable, nonatomic, retain) NSString *attribute2;
@property (nullable, nonatomic, retain) NSString *attribute3;
@property (nullable, nonatomic, retain) NSString *remindType;
@property (nullable, nonatomic, retain) NSDate *repaymentdate;

@end

NS_ASSUME_NONNULL_END
