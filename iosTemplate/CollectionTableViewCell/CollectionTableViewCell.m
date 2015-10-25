//
//  CollectionTableViewCell.m
//  iosTemplate
//
//  Created by Derek Cheung on 25/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "CollectionTableViewCell.h"


@interface CollectionTableViewCell ()

@end

@implementation CollectionTableViewCell


#pragma mark - Initialization

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        [self setup];
        [self setupConstraints];
    }
    
    return self;
}


#pragma mark - Setup

- (void)setup {
    
    [self setupCollectionView];
}

- (void)setupCollectionView {
    
    UICollectionViewFlowLayout* flowLayout = [[UICollectionViewFlowLayout alloc]init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    _collectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:flowLayout];
    [_collectionView setBackgroundColor:MYCOLOR_WHITE];
    
    [self.contentView addSubview:_collectionView];
}


#pragma mark - Setup Constraints

- (void)setupConstraints {
    
    [self setupCollectionViewConstraints];
}


- (void)setupCollectionViewConstraints {
    
    [_collectionView autoPinEdgesToSuperviewEdges];
    [_collectionView autoSetDimension:ALDimensionHeight toSize:168.0];
}


@end
