//
//  LoginViewController.m
//  iosTemplate
//
//  Created by Derek Cheung on 31/3/15.
//  Copyright (c) 2015 Derek Cheung. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.footerContainer hideByHeight:YES];
    [self.backButton setHidden:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)nextPressed:(id)sender
{
    OTPViewController *vc = [[OTPViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
