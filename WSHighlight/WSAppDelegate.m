//
//  WSAppDelegate.m
//  highlight
//
//  Created by Eimantas Vaiciunas on 11/25/11.
//  Copyright (c) 2011 Walking Smarts. All rights reserved.
//

#import "WSAppDelegate.h"

#import "WSFieldEditor.h"

@implementation WSAppDelegate

@synthesize window = _window;

- (void)dealloc {
    [_fieldEditor release];
    [super dealloc];
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
}

#pragma mark - Window delegate methods

- (id)windowWillReturnFieldEditor:(NSWindow *)sender toObject:(id)client {
    if (![client isEqual:_myTextField]) return nil;
    
    if (!_fieldEditor) {
        _fieldEditor = [[WSFieldEditor alloc] init];
        [_fieldEditor setFieldEditor:YES];
        [[_fieldEditor textStorage] setDelegate:_fieldEditor];
        DLog(@"%@", _fieldEditor);
    }

    return _fieldEditor;
}

@end
