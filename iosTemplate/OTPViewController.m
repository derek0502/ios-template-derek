//
//  OTPViewController.m
//  iosTemplate
//
//  Created by Derek Cheung on 31/3/15.
//  Copyright (c) 2015 Derek Cheung. All rights reserved.
//

#import "OTPViewController.h"

@interface OTPViewController ()

@end

@implementation OTPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.footerContainer hideByHeight:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextPressed:(id)sender
{
    [DELEGATE switchToView:TAG_VC_Main];
}



@end
