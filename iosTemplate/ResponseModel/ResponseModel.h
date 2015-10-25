//
//  ResponseModel.h
//  iosTemplate
//
//  Created by Derek Cheung on 25/10/15.
//  Copyright © 2015 Derek Cheung. All rights reserved.
//

#import "JSONModel.h"

// Models
#import "PostModel.h"


@interface ResponseModel : JSONModel

@property (nonatomic, strong) NSArray<PostModel *> *horizontalPosts;
@property (nonatomic, strong) NSArray<PostModel *> *verticalPosts;

@end
