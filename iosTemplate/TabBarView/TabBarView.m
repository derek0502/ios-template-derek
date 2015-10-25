//
//  TabBarView.m
//  iosTemplate
//
//  Created by Derek Cheung on 23/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "TabBarView.h"


@interface TabBarView ()

@end


@implementation TabBarView


#pragma mark - Setup

- (void)setup {
    
    [self setBackgroundColor:MYCOLOR_GREY];
    
    [self setupTabBarButtons];
    [self setupSelectedIndicator];
}

- (void)setupTabBarButtons {
    
    UIButton *tabBarButton1 = [[UIButton alloc]init];
    [tabBarButton1 setTitle:@"HOT" forState:UIControlStateNormal];
    
    UIButton *tabBarButton2 = [[UIButton alloc]init];
    [tabBarButton2 setTitle:@"TRENDING" forState:UIControlStateNormal];
    
    UIButton *tabBarButton3 = [[UIButton alloc]init];
    [tabBarButton3 setTitle:@"FRESH" forState:UIControlStateNormal];
    
    _tabBarButtons = [NSArray arrayWithObjects:tabBarButton1, tabBarButton2, tabBarButton3, nil];
    
    for (UIButton *tabBarButton in _tabBarButtons) {
        
        [tabBarButton.titleLabel setFont:FONT_BOLD_BIG];
        [tabBarButton.titleLabel setTextColor:MYCOLOR_WHITE];
        
        [self addSubview:tabBarButton];
    }
}

- (void)setupSelectedIndicator {
    
    _selectedIndicator = [[BaseView alloc]init];
    [_selectedIndicator setBackgroundColor:[UIColor whiteColor]];
    
    [self addSubview: _selectedIndicator];
}


#pragma mark - Setup Constraints

- (void)setupConstraints {
    
    [self setupTabBarButtonsConstraints];
    [self setupSelectedIndicatorConstraints];
}

- (void)setupTabBarButtonsConstraints {
    
    [_tabBarButtons autoDistributeViewsAlongAxis:ALAxisHorizontal alignedTo:ALAttributeHorizontal withFixedSpacing:0];
    
    for (UIButton *tabBarButton in _tabBarButtons) {
        
        [tabBarButton autoPinEdgeToSuperviewEdge:ALEdgeTop];
        [tabBarButton autoPinEdgeToSuperviewEdge:ALEdgeBottom];
    }
}

- (void)setupSelectedIndicatorConstraints {
    
    [_selectedIndicator autoPinEdgeToSuperviewEdge:ALEdgeBottom];
    [_selectedIndicator autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:[_tabBarButtons firstObject]];
    [_selectedIndicator autoSetDimension:ALDimensionHeight toSize:3.0];
    [_selectedIndicator autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:[_tabBarButtons firstObject]];
}

@end
