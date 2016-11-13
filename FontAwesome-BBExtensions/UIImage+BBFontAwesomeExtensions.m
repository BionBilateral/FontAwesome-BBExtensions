//
//  UIImage+BBFontAwesomeExtensions.m
//  FontAwesome-BBExtensions
//
//  Created by William Towe on 11/13/16.
//  Copyright © 2016 Bion Bilateral, LLC. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#import "UIImage+BBFontAwesomeExtensions.h"
#import "UIFont+BBFontAwesomeExtensions.h"
#import "NSString+BBFontAwesomeExtensions.h"

@implementation UIImage (BBFontAwesomeExtensions)

+ (UIImage *)BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)icon size:(CGSize)size; {
    return [self BB_fontAwesomeImageWithIcon:icon foregroundColor:nil backgroundColor:nil scale:0.0 size:size];
}
+ (UIImage *)BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)icon foregroundColor:(UIColor *)foregroundColor size:(CGSize)size; {
    return [self BB_fontAwesomeImageWithIcon:icon foregroundColor:foregroundColor backgroundColor:nil scale:0.0 size:size];
}
+ (UIImage *)BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)icon foregroundColor:(UIColor *)foregroundColor backgroundColor:(UIColor *)backgroundColor size:(CGSize)size; {
    return [self BB_fontAwesomeImageWithIcon:icon foregroundColor:foregroundColor backgroundColor:backgroundColor scale:0.0 size:size];
}
+ (UIImage *)BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)icon foregroundColor:(UIColor *)foregroundColor backgroundColor:(UIColor *)backgroundColor scale:(CGFloat)scale size:(CGSize)size; {
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    
    if (backgroundColor != nil) {
        [backgroundColor setFill];
        UIRectFill(CGRectMake(0, 0, size.width, size.height));
    }
    
    if (scale == 0.0) {
        scale = 1.0;
    }
    
    NSString *text = [NSString BB_fontAwesomeStringForIcon:icon];
    CGFloat pointSize = MIN(size.width, size.height) * scale;
    CGRect rect = CGRectMake((size.width * 0.5) - (pointSize * 0.5), (size.height * 0.5) - (pointSize * 0.5), pointSize, pointSize);
    
    if (foregroundColor == nil) {
        foregroundColor = [UIColor blackColor];
    }
    
    [text drawInRect:rect withAttributes:@{NSFontAttributeName: [UIFont BB_fontAwesomeFontOfSize:pointSize], NSForegroundColorAttributeName: foregroundColor}];
    
    UIImage *retval = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return retval;
}

@end
