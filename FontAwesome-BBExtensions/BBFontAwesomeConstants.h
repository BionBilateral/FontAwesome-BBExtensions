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
    
    BBFontAwesomeIconBarChart,
    BBFontAwesomeIconPlus,
    BBFontAwesomeIconQuestionCircleO,
    BBFontAwesomeIconStar,
    BBFontAwesomeIconUser,
    
    BB_FONT_AWESOME_ICON_TOTAL_ICONS
};

/**
 Struct containing string identifiers for the available Font Awesome icons. The identifiers match CSS class used on the Font Awesome cheat sheet at http://fontawesome.io/cheatsheet/.
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
    
    __unsafe_unretained NSString *iconBarChart;
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
    
    __unsafe_unretained NSString *iconBarChart;
    __unsafe_unretained NSString *iconPlus;
    __unsafe_unretained NSString *iconQuestionCircleO;
    __unsafe_unretained NSString *iconStar;
    __unsafe_unretained NSString *iconUser;
} BBFontAwesomeString;

#endif /* BBFontAwesomeConstants_h */
