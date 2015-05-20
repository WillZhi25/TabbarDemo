//
//  UIImage+Color.m
//  Foodies
//
//  Created by Dobango on 3/7/13.
//  Copyright (c) 2013 Hackintology. All rights reserved.
//

#import "UIImage+Color.h"



@implementation UIImage (Color)

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    // Create a 1 by 1 pixel context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);   // Fill it with your color
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}





@end


