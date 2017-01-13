//
//  UIImage+BaseFilter.h
//  Decorate
//
//  Created by Jake on 17/1/10.
//  Copyright © 2017年 Jake. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (BaseFilter)
- (CGContextRef)beginContext;
- (UIImage *)getImageFromCurrentImageContext;
- (void)endContext;
@end
