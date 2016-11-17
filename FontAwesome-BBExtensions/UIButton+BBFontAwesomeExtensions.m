//
//  UIButton+BBFontAwesomeExtensions.m
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

#import "UIButton+BBFontAwesomeExtensions.h"
#import "UIImage+BBFontAwesomeExtensions.h"
#import "NSString+BBFontAwesomeExtensions.h"

#import <objc/runtime.h>

static CGSize const kBBFontAwesomeDefaultSize = {.width=24, .height=24};

@interface UIButton (BBFontAwesomeExtensionsPrivate)
@property (strong,nonatomic) NSMutableDictionary *BB_controlStatesToFontAwesomeIdentifiers;
@end

@implementation UIButton (BBFontAwesomeExtensions)

@dynamic BB_fontAwesomeIdentifier;
- (NSString *)BB_fontAwesomeIdentifier {
    return [self BB_fontAwesomeIdentifierForState:UIControlStateNormal];
}
- (void)BB_setFontAwesomeIdentifier:(NSString *)BB_fontAwesomeIdentifier {
    [self BB_setFontAwesomeIdentifier:BB_fontAwesomeIdentifier forState:UIControlStateNormal];
}

static const void *kFontAwesomeSizeKey = &kFontAwesomeSizeKey;

@dynamic BB_fontAwesomeSize;
- (CGSize)BB_fontAwesomeSize {
    NSValue *retval = objc_getAssociatedObject(self, kFontAwesomeSizeKey);
    
    if (retval == nil) {
        retval = [NSValue valueWithCGSize:kBBFontAwesomeDefaultSize];
    }
    
    return [retval CGSizeValue];
}
- (void)BB_setFontAwesomeSize:(CGSize)BB_fontAwesomeSize {
    objc_setAssociatedObject(self, kFontAwesomeSizeKey, [NSValue valueWithCGSize:BB_fontAwesomeSize], OBJC_ASSOCIATION_COPY_NONATOMIC);
}
@dynamic BB_fontAwesomeIcon;
- (BBFontAwesomeIcon)BB_fontAwesomeIcon {
    return [NSString BB_fontAwesomeIconForIdentifier:self.BB_fontAwesomeIdentifier];
}
- (void)BB_setFontAwesomeIcon:(BBFontAwesomeIcon)BB_fontAwesomeIcon {
    [self BB_setFontAwesomeIdentifier:[NSString BB_fontAwesomeIdentifierForIcon:BB_fontAwesomeIcon]];
}

- (NSString *)BB_fontAwesomeIdentifierForState:(UIControlState)state; {
    return self.BB_controlStatesToFontAwesomeIdentifiers[@(state)];
}
- (void)BB_setFontAwesomeIdentifier:(NSString *)fontAwesomeIdentifier forState:(UIControlState)state; {
    [self.BB_controlStatesToFontAwesomeIdentifiers setObject:fontAwesomeIdentifier forKey:@(state)];
    
    [self setImage:[UIImage BB_fontAwesomeImageWithIcon:[NSString BB_fontAwesomeIconForIdentifier:fontAwesomeIdentifier] size:self.BB_fontAwesomeSize] forState:state];
}

@end

@implementation UIButton (BBFontAwesomeExtensionsPrivate)

static const void *kFontAwesomeControlStatesToFontAwesomeIdentifiersKey = &kFontAwesomeControlStatesToFontAwesomeIdentifiersKey;

@dynamic BB_controlStatesToFontAwesomeIdentifiers;
- (NSMutableDictionary *)BB_controlStatesToFontAwesomeIdentifiers {
    NSMutableDictionary *retval = objc_getAssociatedObject(self, kFontAwesomeControlStatesToFontAwesomeIdentifiersKey);
    
    if (retval == nil) {
        retval = [[NSMutableDictionary alloc] init];
        
        objc_setAssociatedObject(self, kFontAwesomeControlStatesToFontAwesomeIdentifiersKey, retval, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return retval;
}

@end
