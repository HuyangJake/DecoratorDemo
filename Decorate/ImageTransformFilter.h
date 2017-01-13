//
//  ImageTransformFilter.h
//  Decorate
//
//  Created by Jake on 17/1/10.
//  Copyright © 2017年 Jake. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageTransformFilter : ImageFilter

- (instancetype)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform;

- (void)apply;

@end
