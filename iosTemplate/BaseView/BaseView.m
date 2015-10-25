//
//  BaseView.m
//  iosTemplate
//
//  Created by Derek Cheung on 23/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "BaseView.h"


@implementation BaseView


#pragma mark - Initialization

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        [self setup];
        [self setupConstraints];
    }
    
    return self;
}


#pragma mark - Setup

- (void)setup {
    
    // Abstract method.
}


#pragma mark - Setup Constraints

- (void)setupConstraints {
    
    // Abstract method.
}


@end
