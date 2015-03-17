//
//  GeneralViewController.m
//  iosTemplate
//
//  Created by Derek Cheung on 13/3/15.
//  Copyright (c) 2015 Derek Cheung. All rights reserved.
//

#import "GeneralViewController.h"

@interface GeneralViewController ()

@end

@implementation GeneralViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"GeneralViewController" bundle:nibBundleOrNil];
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.navContainer addSubview:self.navView];
    [self.contentContainer addSubview:self.contentView];
    [self.footerContainer addSubview:self.footerView];
    
    NSArray* nibViews = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
    for(UIView *view in nibViews)
    {
        if([view isEqual: self.navView])
        {
            for(UIView *subView in [self.navContainer subviews])
            {
                [subView removeFromSuperview];
            }
            [self.navContainer addSubview:view];
        }
        else if([view isEqual:self.contentView])
        {
            for(UIView *subView in [self.contentContainer subviews])
            {
                [subView removeFromSuperview];
            }
            [self.contentContainer addSubview:view];
        }
        else if([view isEqual:self.footerView])
        {
            for(UIView *subView in [self.footerContainer subviews])
            {
                [subView removeFromSuperview];
            }
            [self.footerContainer addSubview:view];
        }
    }
    
    [self addConstraintForViewToContainer:self.navView];
    [self addConstraintForViewToContainer:self.contentView];
    [self addConstraintForViewToContainer:self.footerView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addConstraintForViewToContainer:(UIView *)view
{
    UIView *container = [view superview];
    UIEdgeInsets padding = UIEdgeInsetsMake(0, 0, 0, 0);
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(container).with.insets(padding);
    }];
}

- (IBAction)backPressed:(id)sender {
}

- (IBAction)nextPressed:(id)sender {
}
@end
