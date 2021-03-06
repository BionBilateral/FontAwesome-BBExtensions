//
//  NSImage+BBFontAwesomeExtensions.h
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

#import <Cocoa/Cocoa.h>
#import "BBFontAwesomeConstants.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSImage (BBFontAwesomeExtensions)

/**
 Calls `BB_fontAwesomeImageWithIcon:foregroundColor:backgroundColor:size:`, passing icon, nil, nil, and size.
 
 @param icon The Font Awesome icon
 @param size The desired size of the image
 @return The Font Awesome image
 */
+ (NSImage *)BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)icon size:(NSSize)size;
/**
 Calls `BB_fontAwesomeImageWithIcon:foregroundColor:backgroundColor:size:`, passing icon, foregroundColor, nil, and size.
 
 @param icon The Font Awesome icon
 @param foregroundColor The foreground color of the image
 @param size The desired size of the image
 @return The Font Awesome image
 */
+ (NSImage *)BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)icon foregroundColor:(nullable NSColor *)foregroundColor size:(NSSize)size;
/**
 Draws the Font Awesome string into a graphics context of the provided size using the provided foreground and background colors.
 
 @param icon The Font Awesome icon
 @param foregroundColor The foreground color of the image, the default is [UIColor blackColor]
 @param backgroundColor The background color of the image
 @param size The desired size of the image
 @return The Font Awesome image
 */
+ (NSImage *)BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)icon foregroundColor:(nullable NSColor *)foregroundColor backgroundColor:(nullable NSColor *)backgroundColor size:(NSSize)size;

@end

NS_ASSUME_NONNULL_END
