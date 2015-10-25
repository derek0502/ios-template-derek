//
//  TabBarViewController.m
//  iosTemplate
//
//  Created by Derek Cheung on 24/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "TabBarViewController.h"

// Views
#import "TabBarView.h"


@interface TabBarViewController ()

@property (nonatomic, strong) NSLayoutConstraint *selectedIndicatorPostionConstraint;

@end


@implementation TabBarViewController


#pragma mark - Initialization

- (instancetype)init {
    
    return [self initWithSelectedIndex:0];
}


- (instancetype)initWithSelectedIndex:(int)index {
    
    self = [super init];
    
    if (self) {
        
        [self setSelectedIndicatorPostionAtIndex:index animated:NO];
    }
    
    return self;
}


#pragma mark - View lifecycle

- (void)loadView {
    
    self.view = [[TabBarView alloc]init];
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupTabBarButtonsTapGesture];
}


#pragma mark - Accessors

- (TabBarView *)contentView {
    
    return (TabBarView *)self.view;
}


#pragma mark - Helpers

- (void)setSelectedIndicatorPostionAtIndex:(int)index animated:(BOOL)animated{
    
    BaseView *selectedIndicator = self.contentView.selectedIndicator;
    
    CGFloat animateDuration = animated ? 0.1 : 0.0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animateDuration];
    [selectedIndicator setTransform:CGAffineTransformMakeTranslation(selectedIndicator.frame.size.width*index, 0)];
    [UIView commitAnimations];
}

- (void)setupTabBarButtonsTapGesture {
    
    for (UIButton *tabBarButton in self.contentView.tabBarButtons) {
        
        [tabBarButton addTarget:self action:@selector(tabBarButtonDidTap:) forControlEvents: UIControlEventTouchUpInside];
    }
}

- (void)tabBarButtonDidTap:(id)sender {
    
    int index = [self.contentView.tabBarButtons indexOfObject:sender];
    
    [self setSelectedIndicatorPostionAtIndex:index animated:YES];
}




@end
