

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Additions)

+(id)barButtonItemWithCostomImage:(UIImage *)image target:(id)target action:(SEL)action;

+(id)barButtonItemStyle:(NSInteger)styl target:(id)target action:(SEL)action;
@end
