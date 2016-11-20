//
//  TableRowController.m
//  FontAwesome-BBExtensions
//
//  Created by William Towe on 11/20/16.
//  Copyright © 2016 Bion Bilateral, LLC. All rights reserved.
//

#import "TableRowController.h"

#import <FontAwesome_BBExtensions/FontAwesome_BBExtensions.h>

#import <WatchKit/WatchKit.h>

@interface TableRowController ()
@property (weak,nonatomic) IBOutlet WKInterfaceImage *interfaceImage;
@end

@implementation TableRowController

- (void)setIcon:(BBFontAwesomeIcon)icon {
    _icon = icon;
    
    [self.interfaceImage setImage:[UIImage BB_fontAwesomeImageWithIcon:_icon foregroundColor:[UIColor colorWithRed:0 green:122.0/255.0 blue:1.0 alpha:1.0] size:CGSizeMake(32, 32)]];
}

@end
