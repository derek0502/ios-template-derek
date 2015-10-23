//
//  TabBarView.m
//  iosTemplate
//
//  Created by Derek Cheung on 23/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "TabBarView.h"


@interface TabBarView ()

@property (nonatomic, strong) BaseView *tabButton1;
@property (nonatomic, strong) BaseView *tabButton2;
@property (nonatomic, strong) BaseView *tabButton3;

@end


@implementation TabBarView


#pragma mark - Setup

- (void)setup {
    
    [self setupTabBarButton1];
    [self setupTabBarButton2];
    [self setupTabBarButton3];
}

- (void)setupTabBarButton1 {
    
    _tabButton1 = [[BaseView alloc]init];
    [_tabButton1 setBackgroundColor:[UIColor grayColor]];
    
    [self addSubview:_tabButton1];
}

- (void)setupTabBarButton2 {
    
    _tabButton2 = [[BaseView alloc]init];
    [_tabButton2 setBackgroundColor:[UIColor orangeColor]];
    
    [self addSubview:_tabButton2];
}

- (void)setupTabBarButton3 {
    
    _tabButton3 = [[BaseView alloc]init];
    [_tabButton3 setBackgroundColor:[UIColor greenColor]];
    
    [self addSubview:_tabButton3];
}


#pragma mark - Setup Constraints

- (void)setupConstraints {
    
    [self setupTabBarButton1Constraints];
    [self setupTabBarButton2Constraints];
    [self setupTabBarButton3Constraints];
}

- (void)setupTabBarButton1Constraints {
    
    [_tabButton1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(self.mas_top);
        make.bottom.mas_equalTo(self.mas_bottom);
        make.left.mas_equalTo(self.mas_left);
    }];
}

- (void)setupTabBarButton2Constraints {
    
    [_tabButton2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(self.mas_top);
        make.bottom.mas_equalTo(self.mas_bottom);
        make.left.mas_equalTo(self.mas_right);
    }];
}

- (void)setupTabBarButton3Constraints {
    
    
    [_tabButton3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(self.mas_top);
        make.bottom.mas_equalTo(self.mas_bottom);
        make.left.mas_equalTo(self.mas_right);
    }];
}



@end
