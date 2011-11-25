//
//  WSAppDelegate.h
//  highlight
//
//  Created by Eimantas Vaiciunas on 11/25/11.
//  Copyright (c) 2011 Walking Smarts. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class WSFieldEditor;

@interface WSAppDelegate : NSObject <NSApplicationDelegate, NSWindowDelegate> {
    IBOutlet NSTextField *_myTextField;
    WSFieldEditor *_fieldEditor;
}

@property (assign) IBOutlet NSWindow *window;

@end
