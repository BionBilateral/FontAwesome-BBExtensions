//
//  BBFontAwesomeFunctions.m
//  FontAwesome-BBExtensions
//
//  Created by William Towe on 11/20/16.
//  Copyright © 2016 Bion Bilateral, LLC. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#import "BBFontAwesomeFunctions.h"
#if (TARGET_OS_IPHONE)
#import "UIFont+BBFontAwesomeExtensions.h"
#else
#import "NSFont+BBFontAwesomeExtensions.h"
#endif

#if (TARGET_OS_IPHONE || TARGET_OS_TV)
static CGRect kBBFontAwesomeCGRectCenterInRect(CGRect rect_to_center, CGRect in_rect) {
    return CGRectMake(floor(CGRectGetMinX(in_rect) + (CGRectGetWidth(in_rect) * 0.5) - (CGRectGetWidth(rect_to_center) * 0.5)),
                      floor(CGRectGetMinY(in_rect) + (CGRectGetHeight(in_rect) * 0.5) - (CGRectGetHeight(rect_to_center) * 0.5)),
                      CGRectGetWidth(rect_to_center),
                      CGRectGetHeight(rect_to_center));
}
#else
static NSRect kBBFontAwesomeNSRectCenterInRect(NSRect rect_to_center, NSRect in_rect) {
    return NSMakeRect(floor(NSMinX(in_rect) + (NSWidth(in_rect) * 0.5) - (NSWidth(rect_to_center) * 0.5)),
                      floor(NSMinY(in_rect) + (NSHeight(in_rect) * 0.5) - (NSHeight(rect_to_center) * 0.5)),
                      NSWidth(rect_to_center),
                      NSHeight(rect_to_center));
}
#endif

#if (TARGET_OS_IPHONE || TARGET_OS_TV)
CGFloat BBFontAwesomePointSizeAndRectForIconAndSize(NSString *text, CGSize size, CGRect *outRect) {
#else
CGFloat BBFontAwesomePointSizeAndRectForIconAndSize(NSString *text, NSSize size, NSRect *outRect) {
#endif
    CGFloat pointSize = MIN(size.width, size.height);
#if (TARGET_OS_IPHONE || TARGET_OS_TV)
    CGSize textSize = [text sizeWithAttributes:@{NSFontAttributeName: [UIFont BB_fontAwesomeFontOfSize:pointSize]}];
#else
    NSSize textSize = [text sizeWithAttributes:@{NSFontAttributeName: [NSFont BB_fontAwesomeFontOfSize:pointSize]}];
#endif
    
    while (textSize.width <= size.width &&
           textSize.height <= size.height) {
        
        pointSize++;
#if (TARGET_OS_IPHONE || TARGET_OS_TV)
        textSize = [text sizeWithAttributes:@{NSFontAttributeName: [UIFont BB_fontAwesomeFontOfSize:pointSize]}];
#else
        textSize = [text sizeWithAttributes:@{NSFontAttributeName: [NSFont BB_fontAwesomeFontOfSize:pointSize]}];
#endif
    }
    
    while (textSize.width > size.width ||
           textSize.height > size.height) {
        
        pointSize--;
#if (TARGET_OS_IPHONE || TARGET_OS_TV)
        textSize = [text sizeWithAttributes:@{NSFontAttributeName: [UIFont BB_fontAwesomeFontOfSize:pointSize]}];
#else
        textSize = [text sizeWithAttributes:@{NSFontAttributeName: [NSFont BB_fontAwesomeFontOfSize:pointSize]}];
#endif
    }
    
#if (TARGET_OS_IPHONE || TARGET_OS_TV)
    CGRect rect = kBBFontAwesomeCGRectCenterInRect(CGRectMake(0, 0, textSize.width, textSize.height), CGRectMake(0, 0, size.width, size.height));
#else
    NSRect rect = kBBFontAwesomeNSRectCenterInRect(CGRectMake(0, 0, textSize.width, textSize.height), CGRectMake(0, 0, size.width, size.height));
#endif
    
    *outRect = rect;
    
    return pointSize;
}
