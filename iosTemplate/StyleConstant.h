//
//  StyleConstant.h
//  iosTemplate
//
//  Created by Derek Cheung on 19/3/15.
//  Copyright (c) 2015 Derek Cheung. All rights reserved.
//

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define COLOR_NormalText        UIColorFromRGB(0xEBEEE5)

