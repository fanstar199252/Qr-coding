//
//  TempViewController.m
//  二维码
//
//  Created by lanou on 16/4/14.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "TempViewController.h"
#import "SHBQRView.h"
@interface TempViewController ()<SHBQRViewDelegate>

@end

@implementation TempViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    SHBQRView *view = [[SHBQRView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    view.delegate = self;
    [self.view addSubview:view];
    

    // Do any additional setup after loading the view.
}



- (void)qrView:(SHBQRView *)view ScanResult:(NSString *)result{
    UIAlertController *ac = [UIAlertController alertControllerWithTitle:nil message:[NSString stringWithFormat:@"扫描结果%@",result]preferredStyle:UIAlertControllerStyleAlert];
    [ac addAction:[UIAlertAction actionWithTitle:@"sure" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [view startScan];
    }]];
    [self presentViewController:ac animated:YES completion:nil];
                             
    
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
