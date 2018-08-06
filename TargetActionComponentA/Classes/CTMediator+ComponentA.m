//
//  CTMediator+ComponentA.m
//  CTMediator
//
//  Created by Ape on 2018/7/28.
//

#import "CTMediator+ComponentA.h"

NSString * const kCTMediatorComponentA = @"ComponentA";
NSString * const kCTMediatorActionFetchComponentAVC= @"fetchComponentAVC";
NSString * const kCTMediatorActionPresentDetailA= @"presentDetailA";

@implementation CTMediator (ComponentA)

- (UIViewController *)fetchComponentAVCWithSource:(NSString *)source {
    UIViewController *viewController = [self performTarget:kCTMediatorComponentA action:kCTMediatorActionFetchComponentAVC params:@{@"entrySouce":source} shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}

- (void)presentDetailAFromSourceVC:(UIViewController *)sourceViewController sourceId:(NSString *)sourceId completionHandler:(void (^)(NSDictionary *))completionHandler
{
    NSMutableDictionary *paramas = [@{@"sourceId":sourceId} mutableCopy];
    paramas[@"block"] = completionHandler;
    UIViewController *viewController = [self performTarget:kCTMediatorComponentA action:kCTMediatorActionPresentDetailA params:paramas shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        [sourceViewController presentViewController:viewController animated:YES completion:nil];
    } else {
        if (completionHandler) {
            completionHandler(@{@"result":@"Faile"});
        }
    }
}

@end
