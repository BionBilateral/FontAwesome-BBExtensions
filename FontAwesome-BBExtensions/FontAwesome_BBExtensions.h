//
//  FontAwesome-BBExtensions.h
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

FOUNDATION_EXPORT double FontAwesome_BBExtensionsVersionNumber;

FOUNDATION_EXPORT const unsigned char FontAwesome_BBExtensionsVersionString[];

#import <FontAwesome_BBExtensions/BBFontAwesomeMacros.h>
#import <FontAwesome_BBExtensions/BBFontAwesomeFunctions.h>
#import <FontAwesome_BBExtensions/NSString+BBFontAwesomeExtensions.h>
#if (TARGET_OS_IPHONE || TARGET_OS_TV)
#import <FontAwesome_BBExtensions/UIFont+BBFontAwesomeExtensions.h>
#import <FontAwesome_BBExtensions/UIImage+BBFontAwesomeExtensions.h>
#if (!TARGET_OS_WATCH)
#import <FontAwesome_BBExtensions/UIButton+BBFontAwesomeExtensions.h>
#endif
#else
#import <FontAwesome_BBExtensions/NSFont+BBFontAwesomeExtensions.h>
#import <FontAwesome_BBExtensions/NSImage+BBFontAwesomeExtensions.h>
#endif
