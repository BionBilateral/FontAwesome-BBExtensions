//
//  BBFontAwesomeFunctions.h
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

#ifndef BBFontAwesomeFunctions_h
#define BBFontAwesomeFunctions_h

#import <CoreGraphics/CGGeometry.h>
#if (!TARGET_OS_IPHONE && !TARGET_OS_TV)
#import <Foundation/NSGeometry.h>
#endif
#import "BBFontAwesomeConstants.h"

NS_ASSUME_NONNULL_BEGIN

/**
 Returns the appropriate font point size and centered rect by reference that should be used to draw the provided text within the provided size.
 
 @param text The text to draw
 @param size The size that should constrain the text
 @param outRect A pointer to a rect that will contain a centered rect that should be used to draw the text
 @return The font point size
 */
#if (TARGET_OS_IPHONE || TARGET_OS_TV)
extern CGFloat BBFontAwesomePointSizeAndRectForIconAndSize(NSString *text, CGSize size, CGRect *outRect);
#else
extern CGFloat BBFontAwesomePointSizeAndRectForIconAndSize(NSString *text, NSSize size, NSRect *outRect);
#endif

#endif /* BBFontAwesomeFunctions_h */

NS_ASSUME_NONNULL_END
