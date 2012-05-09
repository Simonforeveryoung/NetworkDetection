//
//  NetworkChecker.m
//  NetworkDetection
//
//  Created by SIMON YOUNG on 5/9/12.
//  Copyright (c) 2012 Jumping Loster. All rights reserved.
//

#import "NetworkChecker.h"
#import "NetworkReachability.h"

@implementation NetworkChecker

#pragma mark - Network Connection Checking

+ (BOOL)HasNetworkConnection {
    
    NetworkReachability *nr = [NetworkReachability reachabilityWithHostName:@"google.com"];
    NetworkStatus internetStatus = [nr currentReachabilityStatus];
    if (internetStatus == NotReachable) {
        return NO;
    } else {
        return YES;
    }
}

@end
