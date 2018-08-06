//
//  TAentryDetailVC.m
//  Pods-TargetActionComponentA_Example
//
//  Created by Ape on 2018/7/28.
//

#import "TAentryADetailVC.h"

@interface TAentryADetailVC ()

@end

@implementation TAentryADetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *finish = [UIButton buttonWithType:UIButtonTypeCustom];
    finish.bounds = CGRectMake(0, 0, 50, 50);
    finish.center = self.view.center;
    [self.view addSubview:finish];
    
    [finish setTitle:@"完成" forState:UIControlStateNormal];
    [finish setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [finish addTarget:self action:@selector(finish) forControlEvents:UIControlEventTouchUpInside];
}

- (void)finish {
    
    NSDictionary *result =@{
                            @"result":@{
                                    @"status":@"Succeed",
                                    @"message":@"Clicked Finish",
                                    @"sourceId":self.sourceId
                                    }
                            };
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
        if (self.finishBlock) {
            self.finishBlock(result);
        }
        return;
    }
    [self dismissViewControllerAnimated:YES completion:^{
        if (self.finishBlock) {
            self.finishBlock(result);
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
