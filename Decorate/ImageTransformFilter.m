//
//  ImageTransformFilter.m
//  Decorate
//
//  Created by Jake on 17/1/10.
//  Copyright © 2017年 Jake. All rights reserved.
//

#import "ImageTransformFilter.h"

@interface ImageTransformFilter ()
@property (nonatomic, assign) CGAffineTransform transform;
@end

@implementation ImageTransformFilter

- (instancetype)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform {
    if (self = [super initWithImageComponent:component]) {
        [self setTransform:transform];
    }
    return self;
}

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextConcatCTM(context, self.transform);
}

@end
