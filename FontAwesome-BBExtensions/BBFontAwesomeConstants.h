//
//  BBFontAwesomeConstants.h
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

#ifndef BBFontAwesomeConstants_h
#define BBFontAwesomeConstants_h

#import <Foundation/NSString.h>

/**
 Enum describing the available Font Awesome icons.
 */
typedef NS_ENUM(NSInteger, BBFontAwesomeIcon) {
    BBFontAwesomeIcon500PX = 0,
    BBFontAwesomeIconAddressBook,
    BBFontAwesomeIconAddressBookO,
    BBFontAwesomeIconAddressCard,
    BBFontAwesomeIconAddressCardO,
    BBFontAwesomeIconAdjust,
    BBFontAwesomeIconADN,
    BBFontAwesomeIconAlignCenter,
    BBFontAwesomeIconAlignJustify,
    BBFontAwesomeIconAlignLeft,
    BBFontAwesomeIconAlignRight,
    BBFontAwesomeIconAmazon,
    BBFontAwesomeIconAmbulance,
    BBFontAwesomeIconAmericanSignLanguageInterpreting,
    BBFontAwesomeIconAnchor,
    BBFontAwesomeIconAndroid,
    BBFontAwesomeIconAngelList,
    BBFontAwesomeIconAngleDoubleDown,
    BBFontAwesomeIconAngleDoubleLeft,
    BBFontAwesomeIconAngleDoubleRight,
    BBFontAwesomeIconAngleDoubleUp,
    BBFontAwesomeIconAngleDown,
    BBFontAwesomeIconAngleLeft,
    BBFontAwesomeIconAngleRight,
    BBFontAwesomeIconAngleUp,
    BBFontAwesomeIconApple,
    BBFontAwesomeIconArchive,
    BBFontAwesomeIconAreaChart,
    BBFontAwesomeIconArrowCircleDown,
    BBFontAwesomeIconArrowCircleLeft,
    BBFontAwesomeIconArrowCircleRight,
    BBFontAwesomeIconArrowCircleUp,
    BBFontAwesomeIconArrowCircleDownO,
    BBFontAwesomeIconArrowCircleLeftO,
    BBFontAwesomeIconArrowCircleRightO,
    BBFontAwesomeIconArrowCircleUpO,
    BBFontAwesomeIconArrowDown,
    BBFontAwesomeIconArrowLeft,
    BBFontAwesomeIconArrowRight,
    BBFontAwesomeIconArrowUp,
    BBFontAwesomeIconArrows,
    BBFontAwesomeIconArrowsAlt,
    BBFontAwesomeIconArrowsHorizontal,
    BBFontAwesomeIconArrowsVertical,
    BBFontAwesomeIconAssistiveListeningSystems,
    BBFontAwesomeIconAsterisk,
    BBFontAwesomeIconAt,
    BBFontAwesomeIconAudioDescription,
    BBFontAwesomeIconBackward,
    BBFontAwesomeIconBalanceScale,
    BBFontAwesomeIconBan,
    BBFontAwesomeIconBandcamp,
    BBFontAwesomeIconBarChart,
    BBFontAwesomeIconBarcode,
    BBFontAwesomeIconBars,
    BBFontAwesomeIconBath,
    BBFontAwesomeIconBatteryEmpty,
    BBFontAwesomeIconBatteryFull,
    BBFontAwesomeIconBatteryHalf,
    BBFontAwesomeIconBatteryQuarter,
    BBFontAwesomeIconBatteryThreeQuarters,
    BBFontAwesomeIconBed,
    BBFontAwesomeIconBeer,
    BBFontAwesomeIconBehance,
    BBFontAwesomeIconBehanceSquare,
    BBFontAwesomeIconBell,
    BBFontAwesomeIconBellO,
    BBFontAwesomeIconBellSlash,
    BBFontAwesomeIconBellSlashO,
    BBFontAwesomeIconBicycle,
    BBFontAwesomeIconBinoculars,
    BBFontAwesomeIconBirthdayCake,
    BBFontAwesomeIconBitbucket,
    BBFontAwesomeIconBitbucketSquare,
    BBFontAwesomeIconBlackTie,
    BBFontAwesomeIconBlind,
    BBFontAwesomeIconBluetooth,
    BBFontAwesomeIconBluetoothB,
    BBFontAwesomeIconBold,
    BBFontAwesomeIconBolt,
    BBFontAwesomeIconBomb,
    BBFontAwesomeIconBook,
    BBFontAwesomeIconBookmark,
    BBFontAwesomeIconBookmarkO,
    BBFontAwesomeIconBraille,
    BBFontAwesomeIconBriefcase,
    BBFontAwesomeIconBTC,
    BBFontAwesomeIconBug,
    BBFontAwesomeIconBuilding,
    BBFontAwesomeIconBuildingO,
    BBFontAwesomeIconBullhorn,
    BBFontAwesomeIconBullseye,
    BBFontAwesomeIconBus,
    BBFontAwesomeIconBuySellAds,
    BBFontAwesomeIconCalculator,
    BBFontAwesomeIconCalendar,
    BBFontAwesomeIconCalendarO,
    BBFontAwesomeIconCalendarCheckO,
    BBFontAwesomeIconCalendarMinusO,
    BBFontAwesomeIconCalendarPlusO,
    BBFontAwesomeIconCalendarTimesO,
    
    BBFontAwesomeIconPlus,
    BBFontAwesomeIconQuestionCircleO,
    BBFontAwesomeIconStar,
    BBFontAwesomeIconUser,
    
    BB_FONT_AWESOME_ICON_TOTAL_ICONS
};

/**
 Struct containing string identifiers for the available Font Awesome icons. The identifiers match the CSS class used on the Font Awesome cheat sheet at http://fontawesome.io/cheatsheet/.
 */
extern const struct BBFontAwesomeIdentifier {
    __unsafe_unretained NSString *icon500PX;
    __unsafe_unretained NSString *iconAddressBook;
    __unsafe_unretained NSString *iconAddressBookO;
    __unsafe_unretained NSString *iconAddressCard;
    __unsafe_unretained NSString *iconAddressCardO;
    __unsafe_unretained NSString *iconAdjust;
    __unsafe_unretained NSString *iconADN;
    __unsafe_unretained NSString *iconAlignCenter;
    __unsafe_unretained NSString *iconAlignJustify;
    __unsafe_unretained NSString *iconAlignLeft;
    __unsafe_unretained NSString *iconAlignRight;
    __unsafe_unretained NSString *iconAmazon;
    __unsafe_unretained NSString *iconAmbulance;
    __unsafe_unretained NSString *iconAmericanSignLanguageInterpreting;
    __unsafe_unretained NSString *iconAnchor;
    __unsafe_unretained NSString *iconAndroid;
    __unsafe_unretained NSString *iconAngelList;
    __unsafe_unretained NSString *iconAngleDoubleDown;
    __unsafe_unretained NSString *iconAngleDoubleLeft;
    __unsafe_unretained NSString *iconAngleDoubleRight;
    __unsafe_unretained NSString *iconAngleDoubleUp;
    __unsafe_unretained NSString *iconAngleDown;
    __unsafe_unretained NSString *iconAngleLeft;
    __unsafe_unretained NSString *iconAngleRight;
    __unsafe_unretained NSString *iconAngleUp;
    __unsafe_unretained NSString *iconApple;
    __unsafe_unretained NSString *iconArchive;
    __unsafe_unretained NSString *iconAreaChart;
    __unsafe_unretained NSString *iconArrowCircleDown;
    __unsafe_unretained NSString *iconArrowCircleLeft;
    __unsafe_unretained NSString *iconArrowCircleRight;
    __unsafe_unretained NSString *iconArrowCircleUp;
    __unsafe_unretained NSString *iconArrowCircleDownO;
    __unsafe_unretained NSString *iconArrowCircleLeftO;
    __unsafe_unretained NSString *iconArrowCircleRightO;
    __unsafe_unretained NSString *iconArrowCircleUpO;
    __unsafe_unretained NSString *iconArrowDown;
    __unsafe_unretained NSString *iconArrowLeft;
    __unsafe_unretained NSString *iconArrowRight;
    __unsafe_unretained NSString *iconArrowUp;
    __unsafe_unretained NSString *iconArrows;
    __unsafe_unretained NSString *iconArrowsAlt;
    __unsafe_unretained NSString *iconArrowsHorizontal;
    __unsafe_unretained NSString *iconArrowsVertical;
    __unsafe_unretained NSString *iconAssistiveListeningSystems;
    __unsafe_unretained NSString *iconAsterisk;
    __unsafe_unretained NSString *iconAt;
    __unsafe_unretained NSString *iconAudioDescription;
    __unsafe_unretained NSString *iconBackward;
    __unsafe_unretained NSString *iconBalanceScale;
    __unsafe_unretained NSString *iconBan;
    __unsafe_unretained NSString *iconBandcamp;
    __unsafe_unretained NSString *iconBarChart;
    __unsafe_unretained NSString *iconBarcode;
    __unsafe_unretained NSString *iconBars;
    __unsafe_unretained NSString *iconBath;
    __unsafe_unretained NSString *iconBatteryEmpty;
    __unsafe_unretained NSString *iconBatteryFull;
    __unsafe_unretained NSString *iconBatteryHalf;
    __unsafe_unretained NSString *iconBatteryQuarter;
    __unsafe_unretained NSString *iconBatteryThreeQuarters;
    __unsafe_unretained NSString *iconBed;
    __unsafe_unretained NSString *iconBeer;
    __unsafe_unretained NSString *iconBehance;
    __unsafe_unretained NSString *iconBehanceSquare;
    __unsafe_unretained NSString *iconBell;
    __unsafe_unretained NSString *iconBellO;
    __unsafe_unretained NSString *iconBellSlash;
    __unsafe_unretained NSString *iconBellSlashO;
    __unsafe_unretained NSString *iconBicycle;
    __unsafe_unretained NSString *iconBinoculars;
    __unsafe_unretained NSString *iconBirthdayCake;
    __unsafe_unretained NSString *iconBitbucket;
    __unsafe_unretained NSString *iconBitbucketSquare;
    __unsafe_unretained NSString *iconBlackTie;
    __unsafe_unretained NSString *iconBlind;
    __unsafe_unretained NSString *iconBluetooth;
    __unsafe_unretained NSString *iconBluetoothB;
    __unsafe_unretained NSString *iconBold;
    __unsafe_unretained NSString *iconBolt;
    __unsafe_unretained NSString *iconBomb;
    __unsafe_unretained NSString *iconBook;
    __unsafe_unretained NSString *iconBookmark;
    __unsafe_unretained NSString *iconBookmarkO;
    __unsafe_unretained NSString *iconBraille;
    __unsafe_unretained NSString *iconBriefcase;
    __unsafe_unretained NSString *iconBTC;
    __unsafe_unretained NSString *iconBug;
    __unsafe_unretained NSString *iconBuilding;
    __unsafe_unretained NSString *iconBuildingO;
    __unsafe_unretained NSString *iconBullhorn;
    __unsafe_unretained NSString *iconBullseye;
    __unsafe_unretained NSString *iconBus;
    __unsafe_unretained NSString *iconBuySellAds;
    __unsafe_unretained NSString *iconCalculator;
    __unsafe_unretained NSString *iconCalendar;
    __unsafe_unretained NSString *iconCalendarO;
    __unsafe_unretained NSString *iconCalendarCheckO;
    __unsafe_unretained NSString *iconCalendarMinusO;
    __unsafe_unretained NSString *iconCalendarPlusO;
    __unsafe_unretained NSString *iconCalendarTimesO;
    
    __unsafe_unretained NSString *iconPlus;
    __unsafe_unretained NSString *iconQuestionCircleO;
    __unsafe_unretained NSString *iconStar;
    __unsafe_unretained NSString *iconUser;
} BBFontAwesomeIdentifier;

/**
 Struct containing string text for the available Font Awesome icons. The text match the Unicode text used on the Font Awesome cheat sheet at http://fontawesome.io/cheatsheet/.
 */
extern const struct BBFontAwesomeString {
    __unsafe_unretained NSString *icon500PX;
    __unsafe_unretained NSString *iconAddressBook;
    __unsafe_unretained NSString *iconAddressBookO;
    __unsafe_unretained NSString *iconAddressCard;
    __unsafe_unretained NSString *iconAddressCardO;
    __unsafe_unretained NSString *iconAdjust;
    __unsafe_unretained NSString *iconADN;
    __unsafe_unretained NSString *iconAlignCenter;
    __unsafe_unretained NSString *iconAlignJustify;
    __unsafe_unretained NSString *iconAlignLeft;
    __unsafe_unretained NSString *iconAlignRight;
    __unsafe_unretained NSString *iconAmazon;
    __unsafe_unretained NSString *iconAmbulance;
    __unsafe_unretained NSString *iconAmericanSignLanguageInterpreting;
    __unsafe_unretained NSString *iconAnchor;
    __unsafe_unretained NSString *iconAndroid;
    __unsafe_unretained NSString *iconAngelList;
    __unsafe_unretained NSString *iconAngleDoubleDown;
    __unsafe_unretained NSString *iconAngleDoubleLeft;
    __unsafe_unretained NSString *iconAngleDoubleRight;
    __unsafe_unretained NSString *iconAngleDoubleUp;
    __unsafe_unretained NSString *iconAngleDown;
    __unsafe_unretained NSString *iconAngleLeft;
    __unsafe_unretained NSString *iconAngleRight;
    __unsafe_unretained NSString *iconAngleUp;
    __unsafe_unretained NSString *iconApple;
    __unsafe_unretained NSString *iconArchive;
    __unsafe_unretained NSString *iconAreaChart;
    __unsafe_unretained NSString *iconArrowCircleDown;
    __unsafe_unretained NSString *iconArrowCircleLeft;
    __unsafe_unretained NSString *iconArrowCircleRight;
    __unsafe_unretained NSString *iconArrowCircleUp;
    __unsafe_unretained NSString *iconArrowCircleDownO;
    __unsafe_unretained NSString *iconArrowCircleLeftO;
    __unsafe_unretained NSString *iconArrowCircleRightO;
    __unsafe_unretained NSString *iconArrowCircleUpO;
    __unsafe_unretained NSString *iconArrowDown;
    __unsafe_unretained NSString *iconArrowLeft;
    __unsafe_unretained NSString *iconArrowRight;
    __unsafe_unretained NSString *iconArrowUp;
    __unsafe_unretained NSString *iconArrows;
    __unsafe_unretained NSString *iconArrowsAlt;
    __unsafe_unretained NSString *iconArrowsHorizontal;
    __unsafe_unretained NSString *iconArrowsVertical;
    __unsafe_unretained NSString *iconAssistiveListeningSystems;
    __unsafe_unretained NSString *iconAsterisk;
    __unsafe_unretained NSString *iconAt;
    __unsafe_unretained NSString *iconAudioDescription;
    __unsafe_unretained NSString *iconBackward;
    __unsafe_unretained NSString *iconBalanceScale;
    __unsafe_unretained NSString *iconBan;
    __unsafe_unretained NSString *iconBandcamp;
    __unsafe_unretained NSString *iconBarChart;
    __unsafe_unretained NSString *iconBarcode;
    __unsafe_unretained NSString *iconBars;
    __unsafe_unretained NSString *iconBath;
    __unsafe_unretained NSString *iconBatteryEmpty;
    __unsafe_unretained NSString *iconBatteryFull;
    __unsafe_unretained NSString *iconBatteryHalf;
    __unsafe_unretained NSString *iconBatteryQuarter;
    __unsafe_unretained NSString *iconBatteryThreeQuarters;
    __unsafe_unretained NSString *iconBed;
    __unsafe_unretained NSString *iconBeer;
    __unsafe_unretained NSString *iconBehance;
    __unsafe_unretained NSString *iconBehanceSquare;
    __unsafe_unretained NSString *iconBell;
    __unsafe_unretained NSString *iconBellO;
    __unsafe_unretained NSString *iconBellSlash;
    __unsafe_unretained NSString *iconBellSlashO;
    __unsafe_unretained NSString *iconBicycle;
    __unsafe_unretained NSString *iconBinoculars;
    __unsafe_unretained NSString *iconBirthdayCake;
    __unsafe_unretained NSString *iconBitbucket;
    __unsafe_unretained NSString *iconBitbucketSquare;
    __unsafe_unretained NSString *iconBlackTie;
    __unsafe_unretained NSString *iconBlind;
    __unsafe_unretained NSString *iconBluetooth;
    __unsafe_unretained NSString *iconBluetoothB;
    __unsafe_unretained NSString *iconBold;
    __unsafe_unretained NSString *iconBolt;
    __unsafe_unretained NSString *iconBomb;
    __unsafe_unretained NSString *iconBook;
    __unsafe_unretained NSString *iconBookmark;
    __unsafe_unretained NSString *iconBookmarkO;
    __unsafe_unretained NSString *iconBraille;
    __unsafe_unretained NSString *iconBriefcase;
    __unsafe_unretained NSString *iconBTC;
    __unsafe_unretained NSString *iconBug;
    __unsafe_unretained NSString *iconBuilding;
    __unsafe_unretained NSString *iconBuildingO;
    __unsafe_unretained NSString *iconBullhorn;
    __unsafe_unretained NSString *iconBullseye;
    __unsafe_unretained NSString *iconBus;
    __unsafe_unretained NSString *iconBuySellAds;
    __unsafe_unretained NSString *iconCalculator;
    __unsafe_unretained NSString *iconCalendar;
    __unsafe_unretained NSString *iconCalendarO;
    __unsafe_unretained NSString *iconCalendarCheckO;
    __unsafe_unretained NSString *iconCalendarMinusO;
    __unsafe_unretained NSString *iconCalendarPlusO;
    __unsafe_unretained NSString *iconCalendarTimesO;
    
    __unsafe_unretained NSString *iconPlus;
    __unsafe_unretained NSString *iconQuestionCircleO;
    __unsafe_unretained NSString *iconStar;
    __unsafe_unretained NSString *iconUser;
} BBFontAwesomeString;

#endif /* BBFontAwesomeConstants_h */
