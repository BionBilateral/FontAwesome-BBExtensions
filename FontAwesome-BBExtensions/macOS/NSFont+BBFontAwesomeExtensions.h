//
//  NSFont+BBFontAwesomeExtensions.h
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

NS_ASSUME_NONNULL_BEGIN

/**
 The default name for the Font Awesome font, which is "FontAwesome". It is easiest to name the font file included in your bundle this name. If not, you need to set the appropriate name using BB_setFontAwesomeFontName:.
 */
extern NSString *const BBFontAwesomeFontNameDefault;

@interface NSFont (BBFontAwesomeExtensions)

/**
 Set and get the Font Awesome font name. Use this to set a name other than "FontAwesome" if necessary.
 */
@property (copy,class,nonatomic,nullable,setter=BB_setFontAwesomeFontName:) NSString *BB_fontAwesomeFontName;

/**
 Returns the Font Awesome font at the provided size.
 
 @param size The font size
 @return The Font Awesome font
 */
+ (NSFont *)BB_fontAwesomeFontOfSize:(CGFloat)size;

@end

NS_ASSUME_NONNULL_END
