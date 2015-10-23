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

@property (nonatomic, strong) TabBarView *tabBarView;
@property (nonatomic, strong) BaseView *horizontalScrollView;
@property (nonatomic, strong) BaseView *verticalScrollView;

@end


@implementation GeneralView


#pragma mark - Setup

- (void)setup {
    
    [self setBackgroundColor:[UIColor whiteColor]];
    
    [self setupTabBarView];
    [self setupHorizontalScrollView];
    [self setupVerticalScrollView];
}

- (void)setupTabBarView {
    
    _tabBarView = [[TabBarView alloc]init];
    [_tabBarView setBackgroundColor:[UIColor redColor]];
    
    [self addSubview:_tabBarView];
}

- (void)setupHorizontalScrollView {
    
    _horizontalScrollView = [[BaseView alloc]init];
    [_horizontalScrollView setBackgroundColor:[UIColor blueColor]];
    
    [self addSubview:_horizontalScrollView];
}

- (void)setupVerticalScrollView {
    
    _verticalScrollView = [[BaseView alloc]init];
    [_verticalScrollView setBackgroundColor:[UIColor yellowColor]];
    
    [self addSubview:_verticalScrollView];
}


#pragma mark - Setup Constraints

- (void)setupConstraints {
    
    [self setupTabBarViewConstraints];
    [self setupHorizontalScrollViewConstraints];
    [self setupVerticalScrollViewConstraints];
}

- (void)setupTabBarViewConstraints {
    
    [_tabBarView autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    [_tabBarView autoPinEdgeToSuperviewEdge:ALEdgeRight];
    [_tabBarView autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:20.0];
    [_tabBarView autoSetDimension:ALDimensionHeight toSize:50.0];
}

- (void)setupHorizontalScrollViewConstraints {
    
    [_horizontalScrollView autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    [_horizontalScrollView autoPinEdgeToSuperviewEdge:ALEdgeRight];
    [_horizontalScrollView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_tabBarView];
    [_horizontalScrollView autoSetDimension:ALDimensionHeight toSize:150.0];
}

- (void)setupVerticalScrollViewConstraints {
    
    [_verticalScrollView autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    [_verticalScrollView autoPinEdgeToSuperviewEdge:ALEdgeRight];
    [_verticalScrollView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_horizontalScrollView];
    [_verticalScrollView autoPinEdgeToSuperviewEdge:ALEdgeBottom];
}

@end
