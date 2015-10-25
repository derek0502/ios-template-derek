//
//  HorizontalCollectionViewCell.h
//  iosTemplate
//
//  Created by Derek Cheung on 25/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HorizontalCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) NSLayoutConstraint *leftConstraint;

- (void)setText:(NSString *)text;

@end
