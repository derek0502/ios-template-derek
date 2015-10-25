//
//  VerticalTableViewCell.m
//  iosTemplate
//
//  Created by Derek Cheung on 25/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "VerticalTableViewCell.h"


@interface VerticalTableViewCell ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *myImageView;

@end


@implementation VerticalTableViewCell


#pragma mark - Initialization

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        [self setup];
        [self setupConstraints];
    }
    
    return self;
}


#pragma mark - Setup

- (void)setup {
    
    [self setupTitleLabel];
    [self setupMyImageView];
}

- (void)setupTitleLabel{
    
    _titleLabel = [[UILabel alloc]init];
    _titleLabel.numberOfLines = 3;
    [_titleLabel setFont:FONT_BOLD_BIG];
    [_titleLabel setTextColor:MYCOLOR_BLACK];
    
    [self.contentView addSubview:_titleLabel];
}

- (void)setupMyImageView{
    
    _myImageView = [[UIImageView alloc]init];
    [_myImageView setBackgroundColor:MYCOLOR_LIGHTGRAY];
    
    [self.contentView addSubview:_myImageView];
}


#pragma mark - Setup Constraints

- (void)setupConstraints {
    
    [self setupTitleLabelConstraints];
    [self setupMyImageViewConstraints];
}

- (void)setupTitleLabelConstraints {
    
    [_titleLabel autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:20.0];
    [_titleLabel autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:8.0];
    [_titleLabel autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:8.0];
}

- (void)setupMyImageViewConstraints {
    
    [_myImageView autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_titleLabel withOffset:10.0];
    [_myImageView autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    [_myImageView autoPinEdgeToSuperviewEdge:ALEdgeRight];
    [_myImageView autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:20.0];
    [_myImageView autoSetDimension:ALDimensionHeight toSize:150.0];
}


#pragma mark - Pubilc

- (void)setTitle:(NSString *)title {
    
    _titleLabel.text = title;
}

@end
