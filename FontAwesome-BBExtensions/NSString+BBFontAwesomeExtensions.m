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
static NSDictionary *kFontAwesomeIdentifiersToStrings;

@interface NSString (BBFontAwesomeExtensionsPrivate)
+ (NSString *)_BB_fontAwesomeIdentifierForIcon:(BBFontAwesomeIcon)icon;
+ (NSString *)_BB_fontAwesomeStringForIcon:(BBFontAwesomeIcon)icon;
@end

@implementation NSString (BBFontAwesomeExtensions)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSMutableDictionary *iconsToIdentifiers = [[NSMutableDictionary alloc] init];
        NSMutableDictionary *identifiersToIcons = [[NSMutableDictionary alloc] init];
        NSMutableDictionary *iconsToStrings = [[NSMutableDictionary alloc] init];
        NSMutableDictionary *identifiersToStrings = [[NSMutableDictionary alloc] init];
        
        for (NSInteger i=0; i<BB_FONT_AWESOME_ICON_TOTAL_ICONS; i++) {
            NSString *identifier = [self _BB_fontAwesomeIdentifierForIcon:i];
            NSString *string = [self _BB_fontAwesomeStringForIcon:i];
            
            [iconsToIdentifiers setObject:identifier forKey:@(i)];
            [identifiersToIcons setObject:@(i) forKey:identifier];
            [iconsToStrings setObject:string forKey:@(i)];
            [identifiersToStrings setObject:string forKey:identifier];
        }
        
        kFontAwesomeIconsToIdentifiers = [iconsToIdentifiers copy];
        kFontAwesomeIdentifiersToIcons = [identifiersToIcons copy];
        kFontAwesomeIconsToStrings = [iconsToStrings copy];
        kFontAwesomeIdentifiersToStrings = [identifiersToStrings copy];
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
    return kFontAwesomeIdentifiersToStrings[identifier];
}

@end

@implementation NSString (BBFontAwesomeExtensionsPrivate)

+ (NSString *)_BB_fontAwesomeIdentifierForIcon:(BBFontAwesomeIcon)icon; {
    switch (icon) {
        case BBFontAwesomeIcon500PX:
            return BBFontAwesomeIdentifier.icon500PX;
        case BBFontAwesomeIconAddressBook:
            return BBFontAwesomeIdentifier.iconAddressBook;
        case BBFontAwesomeIconAddressBookO:
            return BBFontAwesomeIdentifier.iconAddressBookO;
        case BBFontAwesomeIconAddressCard:
            return BBFontAwesomeIdentifier.iconAddressCard;
        case BBFontAwesomeIconAddressCardO:
            return BBFontAwesomeIdentifier.iconAddressCardO;
        case BBFontAwesomeIconAdjust:
            return BBFontAwesomeIdentifier.iconAdjust;
        case BBFontAwesomeIconADN:
            return BBFontAwesomeIdentifier.iconADN;
        case BBFontAwesomeIconAlignCenter:
            return BBFontAwesomeIdentifier.iconAlignCenter;
        case BBFontAwesomeIconAlignJustify:
            return BBFontAwesomeIdentifier.iconAlignJustify;
        case BBFontAwesomeIconAlignLeft:
            return BBFontAwesomeIdentifier.iconAlignLeft;
        case BBFontAwesomeIconAlignRight:
            return BBFontAwesomeIdentifier.iconAlignRight;
        case BBFontAwesomeIconAmazon:
            return BBFontAwesomeIdentifier.iconAmazon;
        case BBFontAwesomeIconAmbulance:
            return BBFontAwesomeIdentifier.iconAmbulance;
        case BBFontAwesomeIconAmericanSignLanguageInterpreting:
            return BBFontAwesomeIdentifier.iconAmericanSignLanguageInterpreting;
        case BBFontAwesomeIconAnchor:
            return BBFontAwesomeIdentifier.iconAnchor;
        case BBFontAwesomeIconAndroid:
            return BBFontAwesomeIdentifier.iconAndroid;
        case BBFontAwesomeIconAngelList:
            return BBFontAwesomeIdentifier.iconAngelList;
        case BBFontAwesomeIconAngleDoubleDown:
            return BBFontAwesomeIdentifier.iconAngleDoubleDown;
        case BBFontAwesomeIconAngleDoubleLeft:
            return BBFontAwesomeIdentifier.iconAngleDoubleLeft;
        case BBFontAwesomeIconAngleDoubleRight:
            return BBFontAwesomeIdentifier.iconAngleDoubleRight;
        case BBFontAwesomeIconAngleDoubleUp:
            return BBFontAwesomeIdentifier.iconAngleDoubleUp;
        case BBFontAwesomeIconAngleDown:
            return BBFontAwesomeIdentifier.iconAngleDown;
        case BBFontAwesomeIconAngleLeft:
            return BBFontAwesomeIdentifier.iconAngleLeft;
        case BBFontAwesomeIconAngleRight:
            return BBFontAwesomeIdentifier.iconAngleRight;
        case BBFontAwesomeIconAngleUp:
            return BBFontAwesomeIdentifier.iconAngleUp;
        case BBFontAwesomeIconApple:
            return BBFontAwesomeIdentifier.iconApple;
        case BBFontAwesomeIconArchive:
            return BBFontAwesomeIdentifier.iconArchive;
        case BBFontAwesomeIconAreaChart:
            return BBFontAwesomeIdentifier.iconAreaChart;
        case BBFontAwesomeIconArrowCircleDown:
            return BBFontAwesomeIdentifier.iconArrowCircleDown;
        case BBFontAwesomeIconArrowCircleLeft:
            return BBFontAwesomeIdentifier.iconArrowCircleLeft;
        case BBFontAwesomeIconArrowCircleRight:
            return BBFontAwesomeIdentifier.iconArrowCircleRight;
        case BBFontAwesomeIconArrowCircleUp:
            return BBFontAwesomeIdentifier.iconArrowCircleUp;
        case BBFontAwesomeIconArrowCircleDownO:
            return BBFontAwesomeIdentifier.iconArrowCircleDownO;
        case BBFontAwesomeIconArrowCircleLeftO:
            return BBFontAwesomeIdentifier.iconArrowCircleLeftO;
        case BBFontAwesomeIconArrowCircleRightO:
            return BBFontAwesomeIdentifier.iconArrowCircleRightO;
        case BBFontAwesomeIconArrowCircleUpO:
            return BBFontAwesomeIdentifier.iconArrowCircleUpO;
        case BBFontAwesomeIconArrowDown:
            return BBFontAwesomeIdentifier.iconArrowDown;
        case BBFontAwesomeIconArrowLeft:
            return BBFontAwesomeIdentifier.iconArrowLeft;
        case BBFontAwesomeIconArrowRight:
            return BBFontAwesomeIdentifier.iconArrowRight;
        case BBFontAwesomeIconArrowUp:
            return BBFontAwesomeIdentifier.iconArrowUp;
        case BBFontAwesomeIconArrows:
            return BBFontAwesomeIdentifier.iconArrows;
        case BBFontAwesomeIconArrowsAlt:
            return BBFontAwesomeIdentifier.iconArrowsAlt;
        case BBFontAwesomeIconArrowsHorizontal:
            return BBFontAwesomeIdentifier.iconArrowsHorizontal;
        case BBFontAwesomeIconArrowsVertical:
            return BBFontAwesomeIdentifier.iconArrowsVertical;
        case BBFontAwesomeIconAssistiveListeningSystems:
            return BBFontAwesomeIdentifier.iconAssistiveListeningSystems;
        case BBFontAwesomeIconAsterisk:
            return BBFontAwesomeIdentifier.iconAsterisk;
        case BBFontAwesomeIconAt:
            return BBFontAwesomeIdentifier.iconAt;
        case BBFontAwesomeIconAudioDescription:
            return BBFontAwesomeIdentifier.iconAudioDescription;
        case BBFontAwesomeIconBackward:
            return BBFontAwesomeIdentifier.iconBackward;
        case BBFontAwesomeIconBalanceScale:
            return BBFontAwesomeIdentifier.iconBalanceScale;
        case BBFontAwesomeIconBan:
            return BBFontAwesomeIdentifier.iconBan;
        case BBFontAwesomeIconBandcamp:
            return BBFontAwesomeIdentifier.iconBandcamp;
        case BBFontAwesomeIconBarChart:
            return BBFontAwesomeIdentifier.iconBarChart;
        case BBFontAwesomeIconBarcode:
            return BBFontAwesomeIdentifier.iconBarcode;
        case BBFontAwesomeIconBars:
            return BBFontAwesomeIdentifier.iconBars;
        case BBFontAwesomeIconBath:
            return BBFontAwesomeIdentifier.iconBath;
        case BBFontAwesomeIconBatteryEmpty:
            return BBFontAwesomeIdentifier.iconBatteryEmpty;
        case BBFontAwesomeIconBatteryFull:
            return BBFontAwesomeIdentifier.iconBatteryFull;
        case BBFontAwesomeIconBatteryHalf:
            return BBFontAwesomeIdentifier.iconBatteryHalf;
        case BBFontAwesomeIconBatteryQuarter:
            return BBFontAwesomeIdentifier.iconBatteryQuarter;
        case BBFontAwesomeIconBatteryThreeQuarters:
            return BBFontAwesomeIdentifier.iconBatteryThreeQuarters;
        case BBFontAwesomeIconBed:
            return BBFontAwesomeIdentifier.iconBed;
        case BBFontAwesomeIconBeer:
            return BBFontAwesomeIdentifier.iconBeer;
        case BBFontAwesomeIconBehance:
            return BBFontAwesomeIdentifier.iconBehance;
        case BBFontAwesomeIconBehanceSquare:
            return BBFontAwesomeIdentifier.iconBehanceSquare;
        case BBFontAwesomeIconBell:
            return BBFontAwesomeIdentifier.iconBell;
        case BBFontAwesomeIconBellO:
            return BBFontAwesomeIdentifier.iconBellO;
        case BBFontAwesomeIconBellSlash:
            return BBFontAwesomeIdentifier.iconBellSlash;
        case BBFontAwesomeIconBellSlashO:
            return BBFontAwesomeIdentifier.iconBellSlashO;
        case BBFontAwesomeIconBicycle:
            return BBFontAwesomeIdentifier.iconBicycle;
        case BBFontAwesomeIconBinoculars:
            return BBFontAwesomeIdentifier.iconBinoculars;
        case BBFontAwesomeIconBirthdayCake:
            return BBFontAwesomeIdentifier.iconBirthdayCake;
        case BBFontAwesomeIconBitbucket:
            return BBFontAwesomeIdentifier.iconBitbucket;
        case BBFontAwesomeIconBitbucketSquare:
            return BBFontAwesomeIdentifier.iconBitbucketSquare;
        case BBFontAwesomeIconBlackTie:
            return BBFontAwesomeIdentifier.iconBlackTie;
        case BBFontAwesomeIconBlind:
            return BBFontAwesomeIdentifier.iconBlind;
        case BBFontAwesomeIconBluetooth:
            return BBFontAwesomeIdentifier.iconBluetooth;
        case BBFontAwesomeIconBluetoothB:
            return BBFontAwesomeIdentifier.iconBluetoothB;
        case BBFontAwesomeIconBold:
            return BBFontAwesomeIdentifier.iconBold;
        case BBFontAwesomeIconBolt:
            return BBFontAwesomeIdentifier.iconBolt;
        case BBFontAwesomeIconBomb:
            return BBFontAwesomeIdentifier.iconBomb;
        case BBFontAwesomeIconBook:
            return BBFontAwesomeIdentifier.iconBook;
        case BBFontAwesomeIconBookmark:
            return BBFontAwesomeIdentifier.iconBookmark;
        case BBFontAwesomeIconBookmarkO:
            return BBFontAwesomeIdentifier.iconBookmarkO;
        case BBFontAwesomeIconBraille:
            return BBFontAwesomeIdentifier.iconBraille;
        case BBFontAwesomeIconBriefcase:
            return BBFontAwesomeIdentifier.iconBriefcase;
        case BBFontAwesomeIconBTC:
            return BBFontAwesomeIdentifier.iconBTC;
        case BBFontAwesomeIconBug:
            return BBFontAwesomeIdentifier.iconBug;
        case BBFontAwesomeIconBuilding:
            return BBFontAwesomeIdentifier.iconBuilding;
        case BBFontAwesomeIconBuildingO:
            return BBFontAwesomeIdentifier.iconBuildingO;
        case BBFontAwesomeIconBullhorn:
            return BBFontAwesomeIdentifier.iconBullhorn;
        case BBFontAwesomeIconBullseye:
            return BBFontAwesomeIdentifier.iconBullseye;
        case BBFontAwesomeIconBus:
            return BBFontAwesomeIdentifier.iconBus;
        case BBFontAwesomeIconBuySellAds:
            return BBFontAwesomeIdentifier.iconBuySellAds;
        case BBFontAwesomeIconCalculator:
            return BBFontAwesomeIdentifier.iconCalculator;
        case BBFontAwesomeIconCalendar:
            return BBFontAwesomeIdentifier.iconCalendar;
        case BBFontAwesomeIconCalendarCheckO:
            return BBFontAwesomeIdentifier.iconCalendarCheckO;
        case BBFontAwesomeIconCalendarO:
            return BBFontAwesomeIdentifier.iconCalendarO;
        case BBFontAwesomeIconCalendarPlusO:
            return BBFontAwesomeIdentifier.iconCalendarPlusO;
        case BBFontAwesomeIconCalendarMinusO:
            return BBFontAwesomeIdentifier.iconCalendarMinusO;
        case BBFontAwesomeIconCalendarTimesO:
            return BBFontAwesomeIdentifier.iconCalendarTimesO;
            
        case BBFontAwesomeIconPlus:
            return BBFontAwesomeIdentifier.iconPlus;
        case BBFontAwesomeIconQuestionCircleO:
            return BBFontAwesomeIdentifier.iconQuestionCircleO;
        case BBFontAwesomeIconStar:
            return BBFontAwesomeIdentifier.iconStar;
        case BBFontAwesomeIconUser:
            return BBFontAwesomeIdentifier.iconUser;
        default:
            return nil;
    }
}
+ (NSString *)_BB_fontAwesomeStringForIcon:(BBFontAwesomeIcon)icon; {
    switch (icon) {
        case BBFontAwesomeIcon500PX:
            return BBFontAwesomeString.icon500PX;
        case BBFontAwesomeIconAddressBook:
            return BBFontAwesomeString.iconAddressBook;
        case BBFontAwesomeIconAddressBookO:
            return BBFontAwesomeString.iconAddressBookO;
        case BBFontAwesomeIconAddressCard:
            return BBFontAwesomeString.iconAddressCard;
        case BBFontAwesomeIconAddressCardO:
            return BBFontAwesomeString.iconAddressCardO;
        case BBFontAwesomeIconAdjust:
            return BBFontAwesomeString.iconAdjust;
        case BBFontAwesomeIconADN:
            return BBFontAwesomeString.iconADN;
        case BBFontAwesomeIconAlignCenter:
            return BBFontAwesomeString.iconAlignCenter;
        case BBFontAwesomeIconAlignJustify:
            return BBFontAwesomeString.iconAlignJustify;
        case BBFontAwesomeIconAlignLeft:
            return BBFontAwesomeString.iconAlignLeft;
        case BBFontAwesomeIconAlignRight:
            return BBFontAwesomeString.iconAlignRight;
        case BBFontAwesomeIconAmazon:
            return BBFontAwesomeString.iconAmazon;
        case BBFontAwesomeIconAmbulance:
            return BBFontAwesomeString.iconAmbulance;
        case BBFontAwesomeIconAmericanSignLanguageInterpreting:
            return BBFontAwesomeString.iconAmericanSignLanguageInterpreting;
        case BBFontAwesomeIconAnchor:
            return BBFontAwesomeString.iconAnchor;
        case BBFontAwesomeIconAndroid:
            return BBFontAwesomeString.iconAndroid;
        case BBFontAwesomeIconAngelList:
            return BBFontAwesomeString.iconAngelList;
        case BBFontAwesomeIconAngleDoubleDown:
            return BBFontAwesomeString.iconAngleDoubleDown;
        case BBFontAwesomeIconAngleDoubleLeft:
            return BBFontAwesomeString.iconAngleDoubleLeft;
        case BBFontAwesomeIconAngleDoubleRight:
            return BBFontAwesomeString.iconAngleDoubleRight;
        case BBFontAwesomeIconAngleDoubleUp:
            return BBFontAwesomeString.iconAngleDoubleUp;
        case BBFontAwesomeIconAngleDown:
            return BBFontAwesomeString.iconAngleDown;
        case BBFontAwesomeIconAngleLeft:
            return BBFontAwesomeString.iconAngleLeft;
        case BBFontAwesomeIconAngleRight:
            return BBFontAwesomeString.iconAngleRight;
        case BBFontAwesomeIconAngleUp:
            return BBFontAwesomeString.iconAngleUp;
        case BBFontAwesomeIconApple:
            return BBFontAwesomeString.iconApple;
        case BBFontAwesomeIconArchive:
            return BBFontAwesomeString.iconArchive;
        case BBFontAwesomeIconAreaChart:
            return BBFontAwesomeString.iconAreaChart;
        case BBFontAwesomeIconArrowCircleDown:
            return BBFontAwesomeString.iconArrowCircleDown;
        case BBFontAwesomeIconArrowCircleLeft:
            return BBFontAwesomeString.iconArrowCircleLeft;
        case BBFontAwesomeIconArrowCircleRight:
            return BBFontAwesomeString.iconArrowCircleRight;
        case BBFontAwesomeIconArrowCircleUp:
            return BBFontAwesomeString.iconArrowCircleUp;
        case BBFontAwesomeIconArrowCircleDownO:
            return BBFontAwesomeString.iconArrowCircleDownO;
        case BBFontAwesomeIconArrowCircleLeftO:
            return BBFontAwesomeString.iconArrowCircleLeftO;
        case BBFontAwesomeIconArrowCircleRightO:
            return BBFontAwesomeString.iconArrowCircleRightO;
        case BBFontAwesomeIconArrowCircleUpO:
            return BBFontAwesomeString.iconArrowCircleUpO;
        case BBFontAwesomeIconArrowDown:
            return BBFontAwesomeString.iconArrowDown;
        case BBFontAwesomeIconArrowLeft:
            return BBFontAwesomeString.iconArrowLeft;
        case BBFontAwesomeIconArrowRight:
            return BBFontAwesomeString.iconArrowRight;
        case BBFontAwesomeIconArrowUp:
            return BBFontAwesomeString.iconArrowUp;
        case BBFontAwesomeIconArrows:
            return BBFontAwesomeString.iconArrows;
        case BBFontAwesomeIconArrowsAlt:
            return BBFontAwesomeString.iconArrowsAlt;
        case BBFontAwesomeIconArrowsHorizontal:
            return BBFontAwesomeString.iconArrowsHorizontal;
        case BBFontAwesomeIconArrowsVertical:
            return BBFontAwesomeString.iconArrowsVertical;
        case BBFontAwesomeIconAssistiveListeningSystems:
            return BBFontAwesomeString.iconAssistiveListeningSystems;
        case BBFontAwesomeIconAsterisk:
            return BBFontAwesomeString.iconAsterisk;
        case BBFontAwesomeIconAt:
            return BBFontAwesomeString.iconAt;
        case BBFontAwesomeIconAudioDescription:
            return BBFontAwesomeString.iconAudioDescription;
        case BBFontAwesomeIconBackward:
            return BBFontAwesomeString.iconBackward;
        case BBFontAwesomeIconBalanceScale:
            return BBFontAwesomeString.iconBalanceScale;
        case BBFontAwesomeIconBan:
            return BBFontAwesomeString.iconBan;
        case BBFontAwesomeIconBandcamp:
            return BBFontAwesomeString.iconBandcamp;
        case BBFontAwesomeIconBarChart:
            return BBFontAwesomeString.iconBarChart;
        case BBFontAwesomeIconBarcode:
            return BBFontAwesomeString.iconBarcode;
        case BBFontAwesomeIconBars:
            return BBFontAwesomeString.iconBars;
        case BBFontAwesomeIconBath:
            return BBFontAwesomeString.iconBath;
        case BBFontAwesomeIconBatteryEmpty:
            return BBFontAwesomeString.iconBatteryEmpty;
        case BBFontAwesomeIconBatteryFull:
            return BBFontAwesomeString.iconBatteryFull;
        case BBFontAwesomeIconBatteryHalf:
            return BBFontAwesomeString.iconBatteryHalf;
        case BBFontAwesomeIconBatteryQuarter:
            return BBFontAwesomeString.iconBatteryQuarter;
        case BBFontAwesomeIconBatteryThreeQuarters:
            return BBFontAwesomeString.iconBatteryThreeQuarters;
        case BBFontAwesomeIconBed:
            return BBFontAwesomeString.iconBed;
        case BBFontAwesomeIconBeer:
            return BBFontAwesomeString.iconBeer;
        case BBFontAwesomeIconBehance:
            return BBFontAwesomeString.iconBehance;
        case BBFontAwesomeIconBehanceSquare:
            return BBFontAwesomeString.iconBehanceSquare;
        case BBFontAwesomeIconBell:
            return BBFontAwesomeString.iconBell;
        case BBFontAwesomeIconBellO:
            return BBFontAwesomeString.iconBellO;
        case BBFontAwesomeIconBellSlash:
            return BBFontAwesomeString.iconBellSlash;
        case BBFontAwesomeIconBellSlashO:
            return BBFontAwesomeString.iconBellSlashO;
        case BBFontAwesomeIconBicycle:
            return BBFontAwesomeString.iconBicycle;
        case BBFontAwesomeIconBinoculars:
            return BBFontAwesomeString.iconBinoculars;
        case BBFontAwesomeIconBirthdayCake:
            return BBFontAwesomeString.iconBirthdayCake;
        case BBFontAwesomeIconBitbucket:
            return BBFontAwesomeString.iconBitbucket;
        case BBFontAwesomeIconBitbucketSquare:
            return BBFontAwesomeString.iconBitbucketSquare;
        case BBFontAwesomeIconBlackTie:
            return BBFontAwesomeString.iconBlackTie;
        case BBFontAwesomeIconBlind:
            return BBFontAwesomeString.iconBlind;
        case BBFontAwesomeIconBluetooth:
            return BBFontAwesomeString.iconBluetooth;
        case BBFontAwesomeIconBluetoothB:
            return BBFontAwesomeString.iconBluetoothB;
        case BBFontAwesomeIconBold:
            return BBFontAwesomeString.iconBold;
        case BBFontAwesomeIconBolt:
            return BBFontAwesomeString.iconBolt;
        case BBFontAwesomeIconBomb:
            return BBFontAwesomeString.iconBomb;
        case BBFontAwesomeIconBook:
            return BBFontAwesomeString.iconBook;
        case BBFontAwesomeIconBookmark:
            return BBFontAwesomeString.iconBookmark;
        case BBFontAwesomeIconBookmarkO:
            return BBFontAwesomeString.iconBookmarkO;
        case BBFontAwesomeIconBraille:
            return BBFontAwesomeString.iconBraille;
        case BBFontAwesomeIconBriefcase:
            return BBFontAwesomeString.iconBriefcase;
        case BBFontAwesomeIconBTC:
            return BBFontAwesomeString.iconBTC;
        case BBFontAwesomeIconBug:
            return BBFontAwesomeString.iconBug;
        case BBFontAwesomeIconBuilding:
            return BBFontAwesomeString.iconBuilding;
        case BBFontAwesomeIconBuildingO:
            return BBFontAwesomeString.iconBuildingO;
        case BBFontAwesomeIconBullhorn:
            return BBFontAwesomeString.iconBullhorn;
        case BBFontAwesomeIconBullseye:
            return BBFontAwesomeString.iconBullseye;
        case BBFontAwesomeIconBus:
            return BBFontAwesomeString.iconBus;
        case BBFontAwesomeIconBuySellAds:
            return BBFontAwesomeString.iconBuySellAds;
        case BBFontAwesomeIconCalculator:
            return BBFontAwesomeString.iconCalculator;
        case BBFontAwesomeIconCalendar:
            return BBFontAwesomeString.iconCalendar;
        case BBFontAwesomeIconCalendarCheckO:
            return BBFontAwesomeString.iconCalendarCheckO;
        case BBFontAwesomeIconCalendarO:
            return BBFontAwesomeString.iconCalendarO;
        case BBFontAwesomeIconCalendarPlusO:
            return BBFontAwesomeString.iconCalendarPlusO;
        case BBFontAwesomeIconCalendarMinusO:
            return BBFontAwesomeString.iconCalendarMinusO;
        case BBFontAwesomeIconCalendarTimesO:
            return BBFontAwesomeString.iconCalendarTimesO;
            
        case BBFontAwesomeIconPlus:
            return BBFontAwesomeString.iconPlus;
        case BBFontAwesomeIconQuestionCircleO:
            return BBFontAwesomeString.iconQuestionCircleO;
        case BBFontAwesomeIconStar:
            return BBFontAwesomeString.iconStar;
        case BBFontAwesomeIconUser:
            return BBFontAwesomeString.iconUser;
        default:
            return nil;
    }
}

@end
