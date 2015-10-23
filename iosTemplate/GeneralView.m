//
//  GeneralView.m
//  iosTemplate
//
//  Created by Derek Cheung on 23/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "GeneralView.h"

@interface GeneralView ()

@property (nonatomic, strong) BaseView *tabBarView;
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
    
    _tabBarView = [[BaseView alloc]init];
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

    [_tabBarView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.mas_top).with.offset(20);
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
        make.height.equalTo(@(50));
    }];
}

- (void)setupHorizontalScrollViewConstraints {
    
    [_horizontalScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(_tabBarView.mas_bottom);
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
        make.height.equalTo(@(150));
    }];
}

- (void)setupVerticalScrollViewConstraints {
    
    [_verticalScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(_horizontalScrollView.mas_bottom);
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(self.mas_bottom);
    }];
}

@end
