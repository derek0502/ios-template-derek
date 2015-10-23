//
//  BaseView.h
//  iosTemplate
//
//  Created by Derek Cheung on 23/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseView : UIView

/**
 *  Setup for the view and all its subviews.
 *
 *  Note. Subclasses should override this method to setup their subviews
 */
- (void)setup;

/**
 *  Setup method for the view's constraints.
 *
 *  Note. Subclasses should override this method to add layout constraints for their subviews here
 */
- (void)setupConstraints;

@end
