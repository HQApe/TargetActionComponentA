//
//  Target_ComponentA.m
//  CTMediator
//
//  Created by Ape on 2018/7/28.
//

#import "Target_ComponentA.h"
#import "TAEntreyAVC.h"
#import "TAentryADetailVC.h"

@implementation Target_ComponentA
- (UIViewController *)Action_fetchComponentAVC:(NSDictionary *)params {
    
    TAEntreyAVC *viewController = [[TAEntreyAVC alloc] init];
    viewController.entrySource = params[@"entrySouce"];
    return viewController;
}

- (UIViewController *)Action_presentDetailA:(NSDictionary *)params {
    TAentryADetailVC *viewController = [[TAentryADetailVC alloc] init];
    viewController.finishBlock = params[@"block"];
    viewController.sourceId = params[@"sourceId"];
    return viewController;
}

@end
