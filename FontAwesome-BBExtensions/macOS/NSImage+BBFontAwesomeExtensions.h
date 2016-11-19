//
//  NSImage+BBFontAwesomeExtensions.h
//  FontAwesome-BBExtensions
//
//  Created by William Towe on 11/19/16.
//  Copyright © 2016 Bion Bilateral, LLC. All rights reserved.
//

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
