//
//  ViewController.m
//  Foo
//
//  Created by John Clayton on 5/27/15.
//  Copyright (c) 2015 Code Monkey Labs LLC. All rights reserved.
//

#import "ViewController.h"

@import FooKit;

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *barLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [Bar barWithCompletion:^(Bar *bar) {
        self.barLabel.text = bar.baz;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
