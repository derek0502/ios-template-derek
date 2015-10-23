//
//  TabBarView.m
//  iosTemplate
//
//  Created by Derek Cheung on 23/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "TabBarView.h"


@interface TabBarView ()

@property (nonatomic, strong) NSArray *tabBarButtons;

@end


@implementation TabBarView


#pragma mark - Setup

- (void)setup {
    
    [self setupTabBarButtons];
}

- (void)setupTabBarButtons {
    
    BaseView *tabBarButton1 = [[BaseView alloc]init];
    [tabBarButton1 setBackgroundColor:[UIColor grayColor]];
    
    BaseView *tabBarButton2 = [[BaseView alloc]init];
    [tabBarButton2 setBackgroundColor:[UIColor greenColor]];
    
    BaseView *tabBarButton3 = [[BaseView alloc]init];
    [tabBarButton3 setBackgroundColor:[UIColor orangeColor]];
    
    _tabBarButtons = [NSArray arrayWithObjects:tabBarButton1, tabBarButton2, tabBarButton3, nil];
    
    for (BaseView *tabBarButton in _tabBarButtons) {
        
        [self addSubview:tabBarButton];
    }
}


#pragma mark - Setup Constraints

- (void)setupConstraints {
    
    [self setupTabBarButtonsConstraints];
}

- (void)setupTabBarButtonsConstraints {
    
    [_tabBarButtons autoDistributeViewsAlongAxis:ALAxisHorizontal alignedTo:ALAttributeHorizontal withFixedSpacing:0];
    
    for (BaseView *tabBarButton in _tabBarButtons) {
        
        [tabBarButton autoPinEdgeToSuperviewEdge:ALEdgeTop];
        [tabBarButton autoPinEdgeToSuperviewEdge:ALEdgeBottom];
    }
}

@end
