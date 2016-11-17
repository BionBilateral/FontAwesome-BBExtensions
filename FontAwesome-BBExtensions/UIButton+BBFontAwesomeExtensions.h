//
//  UIButton+BBFontAwesomeExtensions.h
//  FontAwesome-BBExtensions
//
//  Created by William Towe on 11/17/16.
//  Copyright © 2016 Bion Bilateral, LLC. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#import <UIKit/UIKit.h>
#import "BBFontAwesomeConstants.h"

IB_DESIGNABLE
@interface UIButton (BBFontAwesomeExtensions)

@property (copy,nonatomic,setter=BB_setFontAwesomeIdentifier:) IBInspectable NSString *BB_fontAwesomeIdentifier;
@property (assign,nonatomic,setter=BB_setFontAwesomeSize:) IBInspectable CGSize BB_fontAwesomeSize;

@property (assign,nonatomic,setter=BB_setFontAwesomeIcon:) BBFontAwesomeIcon BB_fontAwesomeIcon;

- (NSString *)BB_fontAwesomeIdentifierForState:(UIControlState)state;
- (void)BB_setFontAwesomeIdentifier:(NSString *)fontAwesomeIdentifier forState:(UIControlState)state;

@end