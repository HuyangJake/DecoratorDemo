//
//  ImageFilter.m
//  Decorate
//
//  Created by Jake on 17/1/10.
//  Copyright © 2017年 Jake. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageFilter ()
@property (nonatomic, strong) id <ImageComponent> component;
@end

@implementation ImageFilter

- (instancetype)initWithImageComponent:(id<ImageComponent>)component {
    if (self = [super init]) {
        [self setComponent:component];
    }
    return self;
}

- (void)apply {
    //由子类重载
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSString *selectorName = NSStringFromSelector(aSelector);
    if ([selectorName hasPrefix:@"draw"]) {
        [self apply];
    }
    return self.component;
}



@end
