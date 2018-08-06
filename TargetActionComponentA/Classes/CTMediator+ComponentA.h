//
//  CTMediator+ComponentA.h
//  CTMediator
//
//  Created by Ape on 2018/7/28.
//

#import <CTMediator/CTMediator.h>

@interface CTMediator (ComponentA)

- (UIViewController *)fetchComponentAVCWithSource:(NSString *)source;

- (void)presentDetailAFromSourceVC:(UIViewController *)sourceViewController sourceId:(NSString *)sourceId completionHandler:(void(^)(NSDictionary* info))completionHandler;

@end
