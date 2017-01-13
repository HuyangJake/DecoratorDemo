//
//  ViewController.m
//  Decorate
//
//  Created by Jake on 17/1/10.
//  Copyright © 2017年 Jake. All rights reserved.
//

#import "ViewController.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFliter.h"
#import "DecoratorView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"avatar.jpg"];
    CGAffineTransform rorateTransform = CGAffineTransformMakeRotation(-M_PI / 4);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width / 2.0, image.size.height / 8.0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rorateTransform, translateTransform);
    
    id<ImageComponent>transformdImage = [[ImageTransformFilter alloc] initWithImageComponent:image transform:finalTransform];
    
    id<ImageComponent>finalImage = [[ImageShadowFliter alloc] initWithImageComponent:transformdImage];
    
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:self.view.frame];
    [decoratorView setImage:finalImage];
    [self.view addSubview:decoratorView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
