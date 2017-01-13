//
//  ImageFilter.h
//  Decorate
//
//  Created by Jake on 17/1/10.
//  Copyright © 2017年 Jake. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageComponent.h"
#import "UIImage_ImageComponent.h"

@interface ImageFilter : NSObject <ImageComponent>

- (void)apply;
- (id)initWithImageComponent:(id <ImageComponent>) component;
- (id)forwardingTargetForSelector:(SEL)aSelector;
@end
