//
//  WSFieldEditor.m
//  highlight
//
//  Created by Eimantas Vaiciunas on 11/25/11.
//  Copyright (c) 2011 Walking Smarts. All rights reserved.
//

#import "WSFieldEditor.h"

@implementation WSFieldEditor

- (void)textStorageDidProcessEditing:(NSNotification *)notification {
    NSTextStorage *textStorage = [notification object];
    NSColor *blue = [NSColor brownColor];
    NSRange found, area;
    NSString *string = [textStorage string];
    NSUInteger length = [string length];
    
    // remove the old colors
    area.location = 0;
    area.length = length;
    [textStorage removeAttribute:NSForegroundColorAttributeName range:area];
    
    // add new colors
    while (area.length) {
        found = [string rangeOfString:@"Cocoa" 
                              options:NSCaseInsensitiveSearch 
                                range:area];
        if (found.location == NSNotFound) break;
        [textStorage addAttribute:NSForegroundColorAttributeName
                            value:blue
                            range:found];
        area.location = NSMaxRange(found);
        area.length = length - area.location;
    }
}

@end
