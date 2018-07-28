//
//  CTMediator+ComponentA.m
//  CTMediator
//
//  Created by Ape on 2018/7/28.
//

#import "CTMediator+ComponentA.h"

NSString * const kCTMediatorComponentA = @"ComponentA";
NSString * const kCTMediatorActionFetchComponentAVC= @"fetchComponentAVC";

@implementation CTMediator (ComponentA)

- (UIViewController *)fetchComponentAVCWithSource:(NSString *)source {
    UIViewController *viewController = [self performTarget:kCTMediatorComponentA action:kCTMediatorActionFetchComponentAVC params:@{@"entrySouce":source} shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}

@end
