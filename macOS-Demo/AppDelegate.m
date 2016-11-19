//
//  AppDelegate.m
//  macOS-Demo
//
//  Created by William Towe on 11/19/16.
//  Copyright © 2016 Bion Bilateral, LLC. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
//
//  2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#import "AppDelegate.h"

#import <FontAwesome_BBExtensions/FontAwesome_BBExtensions.h>

#import <Quartz/Quartz.h>

static NSSize const kItemSize = {.width=64, .height=64};

@interface PreviewItem : NSObject <QLPreviewItem>
@property (copy,nonatomic) NSURL *URL;
@property (copy,nonatomic) NSString *title;

- (instancetype)initWithURL:(NSURL *)URL title:(NSString *)title;
@end

@implementation PreviewItem

- (NSURL *)previewItemURL {
    return self.URL;
}
- (NSString *)previewItemTitle {
    return self.title;
}

- (instancetype)initWithURL:(NSURL *)URL title:(NSString *)title; {
    if (!(self = [super init]))
        return nil;
    
    _URL = URL;
    _title = title;
    
    return self;
}

@end

@interface CollectionViewItem : NSCollectionViewItem
@property (assign,nonatomic) BBFontAwesomeIcon icon;
@property (strong,nonatomic) NSImageView *iconImageView;
@end

@implementation CollectionViewItem

- (void)loadView {
    [self setView:[[NSView alloc] initWithFrame:NSZeroRect]];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setIconImageView:[[NSImageView alloc] initWithFrame:NSZeroRect]];
    [self.iconImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:self.iconImageView];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:nil views:@{@"view": self.iconImageView}]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:nil views:@{@"view": self.iconImageView}]];
}

- (void)setIcon:(BBFontAwesomeIcon)icon {
    _icon = icon;
    
    [self.iconImageView setImage:[NSImage BB_fontAwesomeImageWithIcon:self.icon foregroundColor:[NSColor keyboardFocusIndicatorColor] size:kItemSize]];
}

@end

@interface AppDelegate () <NSCollectionViewDataSource,NSCollectionViewDelegate,QLPreviewPanelDataSource>
@property (weak) IBOutlet NSWindow *window;
@property (weak,nonatomic) IBOutlet NSCollectionView *collectionView;

@property (strong,nonatomic) PreviewItem *previewItem;
@end

@implementation AppDelegate

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSCollectionViewFlowLayout *layout = [[NSCollectionViewFlowLayout alloc] init];
    
    [layout setSectionInset:NSEdgeInsetsMake(8, 8, 0, 8)];
    [layout setMinimumLineSpacing:8.0];
    [layout setMinimumInteritemSpacing:8.0];
    [layout setItemSize:kItemSize];
    
    [self.collectionView setCollectionViewLayout:layout];
    [self.collectionView registerClass:[CollectionViewItem class] forItemWithIdentifier:NSStringFromClass([CollectionViewItem class])];
    [self.collectionView setDataSource:self];
    [self.collectionView setDelegate:self];
}

- (NSInteger)collectionView:(NSCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return BB_FONT_AWESOME_ICON_TOTAL_ICONS;
}
- (NSCollectionViewItem *)collectionView:(NSCollectionView *)collectionView itemForRepresentedObjectAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewItem *item = [collectionView makeItemWithIdentifier:NSStringFromClass([CollectionViewItem class]) forIndexPath:indexPath];
    
    [item setIcon:(BBFontAwesomeIcon)[indexPath indexAtPosition:1]];
    
    return item;
}

- (void)collectionView:(NSCollectionView *)collectionView didSelectItemsAtIndexPaths:(NSSet<NSIndexPath *> *)indexPaths {
    NSImage *image = [NSImage BB_fontAwesomeImageWithIcon:(BBFontAwesomeIcon)[indexPaths.anyObject indexAtPosition:1] foregroundColor:[NSColor keyboardFocusIndicatorColor] size:self.window.frame.size];
    NSData *data = [image TIFFRepresentation];
    NSURL *previewURL = [NSURL fileURLWithPath:[[NSTemporaryDirectory() stringByAppendingPathComponent:[[NSUUID UUID] UUIDString]] stringByAppendingPathExtension:@"tiff"]];
    
    [data writeToURL:previewURL options:NSDataWritingAtomic error:NULL];
    
    [self setPreviewItem:[[PreviewItem alloc] initWithURL:previewURL title:[NSString BB_fontAwesomeIdentifierForIcon:(BBFontAwesomeIcon)[indexPaths.anyObject indexAtPosition:1]]]];
    
    [[QLPreviewPanel sharedPreviewPanel] makeKeyAndOrderFront:nil];
}

- (NSInteger)numberOfPreviewItemsInPreviewPanel:(QLPreviewPanel *)panel {
    return 1;
}
- (id<QLPreviewItem>)previewPanel:(QLPreviewPanel *)panel previewItemAtIndex:(NSInteger)index {
    return self.previewItem;
}

- (BOOL)acceptsPreviewPanelControl:(QLPreviewPanel *)panel {
    return YES;
}
- (void)beginPreviewPanelControl:(QLPreviewPanel *)panel {
    [panel setDataSource:self];
}
- (void)endPreviewPanelControl:(QLPreviewPanel *)panel {
    [panel setDataSource:nil];
}

@end
