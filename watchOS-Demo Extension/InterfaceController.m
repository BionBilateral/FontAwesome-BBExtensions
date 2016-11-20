//
//  InterfaceController.m
//  watchOS-Demo Extension
//
//  Created by William Towe on 11/19/16.
//  Copyright © 2016 Bion Bilateral, LLC. All rights reserved.
//

#import "InterfaceController.h"
#import "TableRowController.h"

#import <FontAwesome_BBExtensions/FontAwesome_BBExtensions.h>

@interface InterfaceController()
@property (weak,nonatomic) IBOutlet WKInterfaceTable *interfaceTable;
@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    [self.interfaceTable setNumberOfRows:BB_FONT_AWESOME_ICON_TOTAL_ICONS withRowType:NSStringFromClass([TableRowController class])];
    
    for (NSInteger i=0; i<self.interfaceTable.numberOfRows; i++) {
        TableRowController *rowController = [self.interfaceTable rowControllerAtIndex:i];
        
        [rowController setIcon:i];
    }
}

@end



