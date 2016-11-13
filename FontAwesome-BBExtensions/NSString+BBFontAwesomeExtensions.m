//
//  NSString+BBFontAwesomeExtensions.m
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

#import "NSString+BBFontAwesomeExtensions.h"

static NSDictionary *kFontAwesomeIconsToIdentifiers;
static NSDictionary *kFontAwesomeIdentifiersToIcons;

static NSDictionary *kFontAwesomeIconsToStrings;

@implementation NSString (BBFontAwesomeExtensions)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        kFontAwesomeIconsToIdentifiers = @{@(BBFontAwesomeIcon500PX): BBFontAwesomeIdentifier.icon500PX,
                                           @(BBFontAwesomeIconAddressBook): BBFontAwesomeIdentifier.iconAddressBook,
                                           @(BBFontAwesomeIconAddressBookO): BBFontAwesomeIdentifier.iconAddressBookO,
                                           @(BBFontAwesomeIconAddressCard): BBFontAwesomeIdentifier.iconAddressCard,
                                           @(BBFontAwesomeIconAddressCardO): BBFontAwesomeIdentifier.iconAddressCardO,
                                           @(BBFontAwesomeIconBarChart): BBFontAwesomeIdentifier.iconBarChart,
                                           @(BBFontAwesomeIconPlus): BBFontAwesomeIdentifier.iconPlus,
                                           @(BBFontAwesomeIconUser): BBFontAwesomeIdentifier.iconUser};
        
        NSMutableDictionary *temp = [[NSMutableDictionary alloc] init];
        
        [kFontAwesomeIconsToIdentifiers enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            [temp setObject:key forKey:obj];
        }];
        
        kFontAwesomeIdentifiersToIcons = [temp copy];
        
        kFontAwesomeIconsToStrings = @{@(BBFontAwesomeIcon500PX): BBFontAwesomeString.icon500PX,
                                       @(BBFontAwesomeIconAddressBook): BBFontAwesomeString.iconAddressBook,
                                       @(BBFontAwesomeIconAddressBookO): BBFontAwesomeString.iconAddressBookO,
                                       @(BBFontAwesomeIconAddressCard): BBFontAwesomeString.iconAddressCard,
                                       @(BBFontAwesomeIconAddressCardO): BBFontAwesomeString.iconAddressCardO,
                                       @(BBFontAwesomeIconBarChart): BBFontAwesomeString.iconBarChart,
                                       @(BBFontAwesomeIconPlus): BBFontAwesomeString.iconPlus,
                                       @(BBFontAwesomeIconUser): BBFontAwesomeString.iconUser};
    });
}

+ (NSString *)BB_fontAwesomeIdentifierForIcon:(BBFontAwesomeIcon)icon; {
    return kFontAwesomeIconsToIdentifiers[@(icon)];
}
+ (BBFontAwesomeIcon)BB_fontAwesomeIconForIdentifier:(NSString *)identifier; {
    return [kFontAwesomeIdentifiersToIcons[identifier] integerValue];
}

+ (NSString *)BB_fontAwesomeStringForIcon:(BBFontAwesomeIcon)icon; {
    return kFontAwesomeIconsToStrings[@(icon)];
}
+ (NSString *)BB_fontAwesomeStringForIdentifier:(NSString *)identifier; {
    return kFontAwesomeIconsToStrings[@([self BB_fontAwesomeIconForIdentifier:identifier])];
}

@end
