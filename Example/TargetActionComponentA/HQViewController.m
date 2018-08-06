//
//  HQViewController.m
//  TargetActionComponentA
//
//  Created by HQApe on 07/28/2018.
//  Copyright (c) 2018 HQApe. All rights reserved.
//

#import "HQViewController.h"
#import <CTMediator/CTMediator.h>
#import <TargetActionComponentA/CTMediator+ComponentA.h>
@interface HQViewController ()

@end

@implementation HQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    
    [[CTMediator sharedInstance] presentDetailAFromSourceVC:self sourceId:@"76563214" completionHandler:^(NSDictionary *info) {
        NSLog(@"%@", info);
    }];
//    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
