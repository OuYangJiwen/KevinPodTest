//
//  KVAVC.m
//  KVRouter
//
//  Created by mac on 2018/7/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "KVAVC.h"

@interface KVAVC ()
@property (nonatomic,strong) NSString *testContent;
@end

@implementation KVAVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = self.testContent;
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [ btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
//     self.hidesBottomBarWhenPushed = NO;
//}
//
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 100, 30);
    [button setTitle:@"代理方法" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.center = self.view.center;
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(150, 280, 100, 30);
    [button1 setTitle:@"block方法" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(buttonClicked1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
}

- (void)buttonClicked{
    if (self.delegate && [self.delegate respondsToSelector:@selector(getTheTestData:)]) {
        [self.delegate getTheTestData:@"this is a test delegate!"];
    }
}

- (void)buttonClicked1{
    if (self.testBlock) {
        self.testBlock(@"this is a test block!");
    }
}

- (void)action {
//    NSDictionary *params = @{@"testContent":@"Hi, I'm Jack"};
//    RouterOptions *options = [RouterOptions optionsWithDefaultParams:params];
//    [JKRouter open:@"KVBVC" options:options];
//         [JKRouter open:@"KVBVC"];
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
