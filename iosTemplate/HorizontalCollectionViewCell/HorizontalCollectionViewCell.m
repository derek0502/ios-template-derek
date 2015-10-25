//
//  HorizontalCollectionViewCell.m
//  iosTemplate
//
//  Created by Derek Cheung on 25/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "HorizontalCollectionViewCell.h"


@interface HorizontalCollectionViewCell ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *label;

@end


@implementation HorizontalCollectionViewCell


#pragma mark - Initialization

- (id)initWithFrame:(CGRect)aRect {
    
    self = [super initWithFrame:aRect];
    
    if (self) {
        
        [self setup];
        [self setupConstraints];
    }
    
    return self;
}


#pragma mark - Setup

- (void)setup {
    
    [self setupImageView];
    [self setupLabel];
}

- (void)setupImageView {
    
    _imageView = [[UIImageView alloc]init];
    [_imageView setBackgroundColor:MYCOLOR_LIGHTGRAY];
    
    [self.contentView addSubview:_imageView];
}

- (void)setupLabel {
    
    _label = [[UILabel alloc]init];
    _label.numberOfLines = 3;
    [_label setTextColor:MYCOLOR_BLACK];
    [_label setFont:FONT_BOLD_SMALL];
    
    [self.contentView addSubview:_label];
}


#pragma mark - Setup Constraints

- (void)setupConstraints {
    
    [self setupImageViewConstraints];
    [self setupLabelConstraints];
}

- (void)setupImageViewConstraints {
    
    [_imageView autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:8.0];
    _leftConstraint = [_imageView autoPinEdgeToSuperviewEdge:ALEdgeLeft];
    [_imageView autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:8.0];
    [_imageView autoSetDimension:ALDimensionHeight toSize:100.0];
}

- (void)setupLabelConstraints {
    
    [_label autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:_imageView];
    [_label autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:_imageView];
    [_label autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:_imageView withOffset:8.0];
}


#pragma mark - Public

- (void)setText:(NSString *)text {
    
    [_label setText:text];
}

#pragma mark - Setters

- (void)setModel:(PostModel *)model {
    
    [_label setText:model.title];
    UIImage *image = [UIImage imageNamed:model.imageName];
    [_imageView setImage:image];
}



@end
