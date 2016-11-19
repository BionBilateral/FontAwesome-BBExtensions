//
//  NSFont+BBFontAwesomeExtensions.m
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

#import "NSFont+BBFontAwesomeExtensions.h"

#import <objc/runtime.h>

NSString *const BBFontAwesomeFontNameDefault = @"FontAwesome";

@implementation NSFont (BBFontAwesomeExtensions)

static const void *kFontAwesomeFontNameKey = &kFontAwesomeFontNameKey;

+ (NSString *)BB_fontAwesomeFontName; {
    return objc_getAssociatedObject(self, kFontAwesomeFontNameKey) ?: BBFontAwesomeFontNameDefault;
}
+ (void)BB_setFontAwesomeFontName:(NSString *)fontName; {
    objc_setAssociatedObject(self, kFontAwesomeFontNameKey, fontName, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

+ (NSFont *)BB_fontAwesomeFontOfSize:(CGFloat)size; {
    return [NSFont fontWithName:[self BB_fontAwesomeFontName] size:size];
}

@end
