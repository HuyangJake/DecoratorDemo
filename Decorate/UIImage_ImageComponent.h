//
//  UIImage_ImageComponent.h
//  Decorate
//
//  Created by Jake on 17/1/10.
//  Copyright © 2017年 Jake. All rights reserved.
// 此扩展为了关联UIImage(被装饰者)和Component抽象类

#import <UIKit/UIKit.h>
#import "ImageComponent.h"

@interface UIImage () <ImageComponent>

@end
