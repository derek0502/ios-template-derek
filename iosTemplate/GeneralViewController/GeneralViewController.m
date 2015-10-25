//
//  GeneralViewController.m
//  iosTemplate
//
//  Created by Derek Cheung on 13/3/15.
//  Copyright (c) 2015 Derek Cheung. All rights reserved.
//

#import "GeneralViewController.h"

// Views
#import "GeneralView.h"

// Controllers
#import "TabBarViewController.h"
#import "VerticalTableViewController.h"


@interface GeneralViewController ()

@end


@implementation GeneralViewController


#pragma mark - View lifecycle

- (void)loadView {
    
    self.view = [[GeneralView alloc]init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    [self setupTabBarView];
    
    [self setupVerticalTableView];
}


#pragma mark - Accessors

- (GeneralView *)contentView {
    
    return (GeneralView *)self.view;
}


#pragma mark - Setup

- (void)setupTabBarView {
    
    TabBarViewController *tabBarViewController = [[TabBarViewController alloc]init];
    
    [self addChildViewController:tabBarViewController];
    [self.contentView.tabBarViewContainer addSubview:tabBarViewController.view];
    [tabBarViewController.view autoPinEdgesToSuperviewEdges];
}

- (void)setupVerticalTableView {
    
    VerticalTableViewController *verticalTableViewController = [[VerticalTableViewController alloc]init];
    
    [self addChildViewController:verticalTableViewController];
    [self.contentView.verticalScrollViewContainer addSubview:verticalTableViewController.view];
    [verticalTableViewController.view autoPinEdgesToSuperviewEdges];
}

@end
