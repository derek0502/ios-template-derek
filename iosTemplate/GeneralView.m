//
//  GeneralView.m
//  iosTemplate
//
//  Created by Derek Cheung on 23/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "GeneralView.h"
#import "TabBarView.h"


@interface GeneralView ()

@end


@implementation GeneralView


#pragma mark - Setup

- (void)setup {
    
    [self setBackgroundColor:MYCOLOR_GREY];
    
    [self setupTabBarViewContainer];
    [self setupVerticalScrollViewContainer];
}

- (void)setupTabBarViewContainer {
    
    _tabBarViewContainer = [[BaseView alloc]init];
    
    [self addSubview:_tabBarViewContainer];
}

- (void)setupVerticalScrollViewContainer {
    
    _verticalScrollViewContainer = [[BaseView alloc]init];
    
    [self addSubview:_verticalScrollViewContainer];
}


#pragma mark - Setup Constraints

- (void)setupConstraints {
    
    [self setupTabBarViewContainerConstraints];
    [self setupVerticalScrollViewContainerConstraints];
}

- (void)setupTabBarViewContainerConstraints {
    
    [_tabBarViewContainer autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    [_tabBarViewContainer autoPinEdgeToSuperviewEdge:ALEdgeRight];
    [_tabBarViewContainer autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:20.0];
    [_tabBarViewContainer autoSetDimension:ALDimensionHeight toSize:50.0];
}

- (void)setupVerticalScrollViewContainerConstraints {
    
    [_verticalScrollViewContainer autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    [_verticalScrollViewContainer autoPinEdgeToSuperviewEdge:ALEdgeRight];
    [_verticalScrollViewContainer autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_tabBarViewContainer];
    [_verticalScrollViewContainer autoPinEdgeToSuperviewEdge:ALEdgeBottom];
}

@end
