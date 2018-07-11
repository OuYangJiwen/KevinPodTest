//
//  KVBVC.m
//  KVRouter
//
//  Created by mac on 2018/7/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "KVBVC.h"

@interface KVBVC ()

@end

@implementation KVBVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [ btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
//    self.hidesBottomBarWhenPushed = YES;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    self.hidesBottomBarWhenPushed = YES;
     self.hidesBottomBarWhenPushed = NO;
}

- (void)action {
    
    [JKRouter popWithStep:2];
    
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
