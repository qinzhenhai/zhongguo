//
//  TB_Account+CoreDataProperties.h
//  CreditCard
//
//  Created by qq on 16/5/23.
//  Copyright © 2016年 qq. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "TB_Account.h"

NS_ASSUME_NONNULL_BEGIN

@interface TB_Account (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *attribute;
@property (nullable, nonatomic, retain) NSString *attribute1;
@property (nullable, nonatomic, retain) NSString *attribute2;
@property (nullable, nonatomic, retain) NSString *attribute3;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *icon;
@property (nullable, nonatomic, retain) NSNumber *gender;
@property (nullable, nonatomic, retain) NSString *note;

@end

NS_ASSUME_NONNULL_END
