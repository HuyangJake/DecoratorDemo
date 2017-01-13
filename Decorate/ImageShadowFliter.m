//
//  ImageShadowFliter.m
//  Decorate
//
//  Created by Jake on 17/1/10.
//  Copyright © 2017年 Jake. All rights reserved.
//

#import "ImageShadowFliter.h"

@implementation ImageShadowFliter

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //设置阴影
    CGSize offset = CGSizeMake(-25, 15);
    CGContextSetShadow(context, offset, 20.0);
}

@end
