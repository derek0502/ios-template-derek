//
//  StyleConstant.h
//  iosTemplate
//
//  Created by Derek Cheung on 19/3/15.
//  Copyright (c) 2015 Derek Cheung. All rights reserved.
//

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define MYCOLOR_GREY            UIColorFromRGB(0x222222)
#define MYCOLOR_WHITE           UIColorFromRGB(0xFFFFFF)
#define MYCOLOR_BLACK           UIColorFromRGB(0x000000)
#define MYCOLOR_LIGHTGRAY       UIColorFromRGB(0xD8D8D8)


#define FONT_BOLD_SIZE(x)       [UIFont fontWithName:FONTTYPE_DIN_BOLD size:(x)]
#define FONT_BOLD_SMALL         [UIFont fontWithName:FONTTYPE_DIN_BOLD size:(11)]
#define FONT_BOLD_BIG           [UIFont fontWithName:FONTTYPE_DIN_BOLD size:(13)]

#define FONTTYPE_DIN_BOLD       @"DIN-Bold"
