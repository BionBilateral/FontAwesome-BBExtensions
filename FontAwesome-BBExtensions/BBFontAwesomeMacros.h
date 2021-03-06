//
//  BBFontAwesomeMacros.h
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

#ifndef BBFontAwesomeMacros_h
#define BBFontAwesomeMacros_h

#if (TARGET_OS_IPHONE || TARGET_OS_TV)
#import <UIKit/UIColor.h>
#else
#import <AppKit/NSColor.h>
#endif

/**
 Macro returning the default tint color. The UIImage and NSImage categories default to this if nil is passed for their foregroundColor argument.
 */
#if (TARGET_OS_IPHONE || TARGET_OS_TV)
#define BBFontAwesomeDefaultForegroundColor() [UIColor colorWithRed:0 green:122.0/255.0 blue:1.0 alpha:1.0]
#else
#define BBFontAwesomeDefaultForegroundColor() [NSColor colorWithRed:0 green:122.0/255.0 blue:1.0 alpha:1.0]
#endif

#endif /* BBFontAwesomeMacros_h */
