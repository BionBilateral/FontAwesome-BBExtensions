//
//  NSImage+BBFontAwesomeExtensions.m
//  FontAwesome-BBExtensions
//
//  Created by William Towe on 11/19/16.
//  Copyright © 2016 Bion Bilateral, LLC. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#import "NSImage+BBFontAwesomeExtensions.h"
#import "NSString+BBFontAwesomeExtensions.h"
#import "NSFont+BBFontAwesomeExtensions.h"

static NSRect kBBFontAwesomeCGRectCenterInRect(NSRect rect_to_center, NSRect in_rect) {
    return NSMakeRect(floor(NSMinX(in_rect) + (NSWidth(in_rect) * 0.5) - (NSWidth(rect_to_center) * 0.5)),
                      floor(NSMinY(in_rect) + (NSHeight(in_rect) * 0.5) - (NSHeight(rect_to_center) * 0.5)),
                      NSWidth(rect_to_center),
                      NSHeight(rect_to_center));
}

@implementation NSImage (BBFontAwesomeExtensions)

+ (NSImage *)BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)icon size:(NSSize)size; {
    return [self BB_fontAwesomeImageWithIcon:icon foregroundColor:nil backgroundColor:nil size:size];
}
+ (NSImage *)BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)icon foregroundColor:(NSColor *)foregroundColor size:(NSSize)size; {
    return [self BB_fontAwesomeImageWithIcon:icon foregroundColor:foregroundColor backgroundColor:nil size:size];
}
+ (NSImage *)BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)icon foregroundColor:(NSColor *)foregroundColor backgroundColor:(NSColor *)backgroundColor size:(NSSize)size; {
    NSImage *retval = [[NSImage alloc] initWithSize:size];
    
    [retval lockFocus];
    
    if (backgroundColor != nil) {
        [backgroundColor setFill];
        NSRectFill(NSMakeRect(0, 0, size.width, size.height));
    }
    
    NSString *text = [NSString BB_fontAwesomeStringForIcon:icon];
    CGFloat pointSize = MIN(size.width, size.height);
    CGSize textSize = [text sizeWithAttributes:@{NSFontAttributeName: [NSFont BB_fontAwesomeFontOfSize:pointSize]}];
    
    while (textSize.width <= size.width &&
           textSize.height <= size.height) {
        
        pointSize++;
        textSize = [text sizeWithAttributes:@{NSFontAttributeName: [NSFont BB_fontAwesomeFontOfSize:pointSize]}];
    }
    
    while (textSize.width > size.width ||
           textSize.height > size.height) {
        
        pointSize--;
        textSize = [text sizeWithAttributes:@{NSFontAttributeName: [NSFont BB_fontAwesomeFontOfSize:pointSize]}];
    }
    
    NSRect rect = kBBFontAwesomeCGRectCenterInRect(NSMakeRect(0, 0, textSize.width, textSize.height), NSMakeRect(0, 0, size.width, size.height));
    
    if (foregroundColor == nil) {
        foregroundColor = [NSColor blackColor];
    }
    
    [text drawInRect:rect withAttributes:@{NSFontAttributeName: [NSFont BB_fontAwesomeFontOfSize:pointSize], NSForegroundColorAttributeName: foregroundColor}];
    
    [retval unlockFocus];
    
    return retval;
}

@end
