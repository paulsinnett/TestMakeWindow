//
//  AppDelegate.m
//  TestMakeWindow
//
//  Created by Paul Sinnett on 27/08/2015.
//  Copyright (c) 2015 Paul Sinnett. All rights reserved.
//

#import "AppDelegate.h"



@interface AppDelegate ()



@end



@implementation AppDelegate
@synthesize myControl1;
@synthesize myControl2;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction) testFunction:(id) sender {
    
    if ([sender tag] == 1 ){
        NSStoryboard *storyBoard = [NSStoryboard storyboardWithName:@"Main" bundle:nil]; // get a reference to the storyboard
        myControl1 = [storyBoard instantiateControllerWithIdentifier:@"Control1"]; // instantiate your window controller
        [myControl1 showWindow:self]; // show the window
    } else if ([sender tag] == 2) {
        NSStoryboard *storyBoard = [NSStoryboard storyboardWithName:@"Main" bundle:nil]; // get a reference to the storyboard
        myControl2 = [storyBoard instantiateControllerWithIdentifier:@"Control 2"]; // instantiate your window controller
        [myControl2 showWindow:self]; // show the window
        
    }
    

    NSLog(@"Value of sender = %ld", (long)[sender tag]);
}

@end
