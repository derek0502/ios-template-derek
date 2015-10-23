//
//  GeneralViewController.m
//  iosTemplate
//
//  Created by Derek Cheung on 13/3/15.
//  Copyright (c) 2015 Derek Cheung. All rights reserved.
//

#import "GeneralViewController.h"
#import "GeneralView.h"


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
    
    [self setFontFamily:FONT_DIN_REGULAR forView:self.view andSubViews:YES];
}


#pragma mark - Helpers

- (void)setFontFamily:(NSString*)fontFamily forView:(UIView*)view andSubViews:(BOOL)isSubViews {
    
    if ([view isKindOfClass:[UILabel class]]) {
        
        UILabel *lbl = (UILabel *)view;
        [lbl setFont:FONT_REGULAR_SIZE([[lbl font] pointSize])];
        
    } else if([view isKindOfClass:[UIButton class]]) {
        
        UIButton *btn = (UIButton *)view;
        UILabel *lbl = [btn titleLabel];
        [lbl setFont:FONT_REGULAR_SIZE([[lbl font] pointSize])];
    }
    
    if (isSubViews) {
        
        for (UIView *sview in view.subviews) {
            
            [self setFontFamily:fontFamily forView:sview andSubViews:YES];
        }
    }
}

@end
