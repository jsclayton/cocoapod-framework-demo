//
//  Bar.h
//  Foo
//
//  Created by John Clayton on 5/27/15.
//  Copyright (c) 2015 Code Monkey Labs LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface Bar : MTLModel

@property (nonatomic, strong, readonly) NSString *baz;

+ (void)barWithCompletion:(void (^)(Bar *bar))completion;

@end
