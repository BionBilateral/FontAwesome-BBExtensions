//
//  ViewController.m
//  Demo
//
//  Created by William Towe on 11/13/16.
//  Copyright © 2016 Bion Bilateral, LLC. All rights reserved.
//

#import "ViewController.h"
#import <FontAwesome_BBExtensions/FontAwesome_BBExtensions.h>

@interface ViewController ()
@property (strong,nonatomic) UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setImageView:[[UIImageView alloc] initWithFrame:CGRectZero]];
    [self.imageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.imageView setContentMode:UIViewContentModeCenter];
    [self.view addSubview:self.imageView];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:nil views:@{@"view": self.imageView}]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:nil views:@{@"view": self.imageView}]];
    
    [self.imageView setImage:[UIImage BB_fontAwesomeImageWithIcon:BBFontAwesomeIconAddressBook size:CGSizeMake(128, 128)]];
}

@end
