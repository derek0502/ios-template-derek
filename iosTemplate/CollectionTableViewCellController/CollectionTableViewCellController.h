//
//  CollectionTableViewCellController.h
//  iosTemplate
//
//  Created by Derek Cheung on 25/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import <UIKit/UIKit.h>

// Models
#import "PostModel.h"

@interface CollectionTableViewCellController : UIViewController

@property (nonatomic, strong) NSArray<PostModel *> *dataSource;

@end
