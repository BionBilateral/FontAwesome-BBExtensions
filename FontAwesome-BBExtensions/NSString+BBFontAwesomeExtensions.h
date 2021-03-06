//
//  NSString+BBFontAwesomeExtensions.h
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

#import <Foundation/Foundation.h>
#import "BBFontAwesomeConstants.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSString (BBFontAwesomeExtensions)

/**
 Returns the Font Awesome identifier for the provided icon.
 
 @param icon The Font Awesome icon, see BBFontAwesomeIcon
 @return The Font Awesome identifier, see BBFontAwesomeIdentifier
 */
+ (NSString *)BB_fontAwesomeIdentifierForIcon:(BBFontAwesomeIcon)icon;
/**
 Returns the Font Awesome icon for the provided identifier.
 
 @param identifier The Font Awesome identifier, see BBFontAwesomeIdentifier
 @return The Font Awesome icon, see BBFontAwesomeIcon
 */
+ (BBFontAwesomeIcon)BB_fontAwesomeIconForIdentifier:(NSString *)identifier;

/**
 Returns the Font Awesome string for the provided icon.
 
 @param icon The Font Awesome icon, see BBFontAwesomeIcon
 @return The Font Awesome string, see BBFontAwesomeString
 */
+ (NSString *)BB_fontAwesomeStringForIcon:(BBFontAwesomeIcon)icon;
/**
 Returns the Font Awesome string for the provided identifier.
 
 @param identifier The Font Awesome identifier, see BBFontAwesomeIdentifier
 @return The Font Awesome string, see BBFontAwesomeString
 */
+ (nullable NSString *)BB_fontAwesomeStringForIdentifier:(NSString *)identifier;

@end

NS_ASSUME_NONNULL_END
