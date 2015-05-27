//
//  Bar.m
//  Foo
//
//  Created by John Clayton on 5/27/15.
//  Copyright (c) 2015 Code Monkey Labs LLC. All rights reserved.
//

#import "Bar.h"

@interface Bar ()

@property (nonatomic, strong, readwrite) NSString *baz;

@end

@implementation Bar

+(void)barWithCompletion:(void (^)(Bar *))completion {
    if (!completion) return;

    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:[NSURL URLWithString:@"http://httpbin.org/ip"] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error || !data) completion(nil);

            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];

            Bar *bar = [[Bar alloc] init];
            bar.baz = JSON[@"origin"];

            completion(bar);
        });
    }] resume];
}

@end
