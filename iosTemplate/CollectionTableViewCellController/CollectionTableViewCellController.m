//
//  CollectionTableViewCellController.m
//  iosTemplate
//
//  Created by Derek Cheung on 25/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "CollectionTableViewCellController.h"

// Views
#import "CollectionTableViewCell.h"
#import "HorizontalCollectionViewCell.h"


@interface CollectionTableViewCellController ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@end


@implementation CollectionTableViewCellController


#pragma mark - View lifecycle

- (void)loadView {
    
    CollectionTableViewCell *cell = [[CollectionTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CollectionTableViewCell"];
    
    [cell.collectionView registerClass:[HorizontalCollectionViewCell class] forCellWithReuseIdentifier:@"HorizontalCollectionViewCell"];
    cell.collectionView.delegate = self;
    cell.collectionView.dataSource = self;
    
    self.view = cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    NSInteger numberOfItem = 0;
    
    if (_dataSource) {
        
        numberOfItem = [_dataSource count];
    }
    
    return numberOfItem;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    HorizontalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HorizontalCollectionViewCell" forIndexPath:indexPath];
    
    if (indexPath.row == 0) {
        
        cell.leftConstraint.constant = 8.0;
        
    } else {
        
        cell.leftConstraint.constant = 0.0;

    }
    
    [cell setModel:[_dataSource objectAtIndex:indexPath.row]];
    
    return cell;
}


#pragma mark - <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.row == 0) {
        
        return CGSizeMake(168.0, 168.0);
        
    } else {
        
        return CGSizeMake(160.0, 168.0);
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return 0.0;
}

- (UIEdgeInsets)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    return UIEdgeInsetsZero;
}


#pragma - Setters

- (void)setDataSource:(NSArray<PostModel *> *)dataSource {
    
    _dataSource = dataSource;
    [self.collectionView reloadData];
}

#pragma - Accessors

- (CollectionTableViewCell *)contentView {
    
    return (CollectionTableViewCell *)self.view;
}

- (UICollectionView *)collectionView {
    
    return (UICollectionView *)self.contentView.collectionView;
}

@end
