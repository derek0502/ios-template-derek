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
    
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    HorizontalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HorizontalCollectionViewCell" forIndexPath:indexPath];
    
    if (indexPath.row == 0) {
        
        cell.leftConstraint.constant = 8.0;
        
    } else {
        
        cell.leftConstraint.constant = 0.0;

    }
    
    if (indexPath.row == 0) {
        
        [cell setText:@"skdhfjks"];
        
    } else if (indexPath.row == 1) {
        
        [cell setText:@"dskjfhk jksdhf jkshd fk"];
        
    } else if (indexPath.row == 2) {
        [cell setText:@"sdkjfhsjk fjksdf kjshkfjhsdkjf kjsfk"];
    }
    
    return cell;
}


#pragma mark - <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return CGSizeMake(160.0, 168.0);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return 0.0;
}

- (UIEdgeInsets)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    return UIEdgeInsetsZero;
}

@end
