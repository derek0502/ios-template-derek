//
//  PostModel.h
//  iosTemplate
//
//  Created by Derek Cheung on 25/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "JSONModel.h"

@interface PostModel : JSONModel

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *imageName;

@end
