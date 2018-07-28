//
//  Target_ComponentA.m
//  CTMediator
//
//  Created by Ape on 2018/7/28.
//

#import "Target_ComponentA.h"
#import "TAEntreyAVC.h"

@implementation Target_ComponentA
- (UIViewController *)Action_fetchComponentAVC:(NSDictionary *)params {
    
    TAEntreyAVC *viewController = [[TAEntreyAVC alloc] init];
    viewController.entrySource = params[@"entrySouce"];
    return viewController;
}
@end
