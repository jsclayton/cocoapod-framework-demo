//
//  InterfaceController.m
//  Foo WatchKit Extension
//
//  Created by John Clayton on 5/27/15.
//  Copyright (c) 2015 Code Monkey Labs LLC. All rights reserved.
//

#import "InterfaceController.h"

@import FooKit;

@interface InterfaceController()

@property (nonatomic, weak) IBOutlet WKInterfaceLabel *barLabel;

@end

@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    [Bar barWithCompletion:^(Bar *bar) {
        [self.barLabel setText:bar.baz];
    }];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



