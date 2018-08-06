//
//  TAentryDetailVC.h
//  Pods-TargetActionComponentA_Example
//
//  Created by Ape on 2018/7/28.
//

#import <UIKit/UIKit.h>

@interface TAentryADetailVC : UIViewController

@property(copy,nonatomic) NSString *sourceId;
@property(copy,nonatomic) void(^finishBlock)(NSDictionary *info);

@end
