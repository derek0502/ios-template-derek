//
//  TabBarView.h
//  iosTemplate
//
//  Created by Derek Cheung on 23/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "BaseView.h"

@interface TabBarView : BaseView

@property (nonatomic, strong) NSArray *tabBarButtons;
@property (nonatomic, strong) BaseView *selectedIndicator;

@end
