/* 
 * Copyright (c) 2009 Keith Lazuka
 * License: http://www.opensource.org/licenses/mit-license.html
 */

#import "UIViewAdditions.h"


@implementation UIView (KalAdditions)

- (CGFloat)left
{
  return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x
{
  CGRect frame = self.frame;
  frame.origin.x = x;
  self.frame = frame;
}

- (CGFloat)right
{
  return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right
{
  CGRect frame = self.frame;
  frame.origin.x = right - frame.size.width;
  self.frame = frame;
}

- (CGFloat)top
{
  return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y
{
  CGRect frame = self.frame;
  frame.origin.y = y;
  self.frame = frame;
}

- (CGFloat)bottom
{
  return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom
{
  CGRect frame = self.frame;
  frame.origin.y = bottom - frame.size.height;
  self.frame = frame;
}

- (CGFloat)width
{
  return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width
{
  CGRect frame = self.frame;
  frame.size.width = width;
  self.frame = frame;
}

- (CGFloat)height
{
  return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height
{
  CGRect frame = self.frame;
  frame.size.height = height;
  self.frame = frame;
}

-(CGFloat)centerX
{
    return self.center.x;
}

-(void)setCenterX:(CGFloat)centerX
{
    CGPoint point = self.center;
    point.x = centerX;
    self.center = point;
}

-(CGFloat)centerY
{
    return self.center.y;
}

-(void)setCenterY:(CGFloat)centerY{
    CGPoint point = self.center;
    point.y = centerY;
    self.center = point;
}

@end
