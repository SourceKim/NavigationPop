//
//  CViewController.m
//  NavigationPop
//
//  Created by kim on 2018/6/22.
//  Copyright © 2018年 kedc. All rights reserved.
//

#import "CViewController.h"

#import "AViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor whiteColor]];

    [self.navigationItem setTitle:@"C"];

    UIButton *button = [[UIButton alloc] init];
    button.backgroundColor = [UIColor blueColor];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    [button setTitle:@"POP TO A" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    [button setFrame:CGRectMake(0, 0, 300, 50)];
    button.center = self.view.center;

}

- (void)buttonClicked:(UIButton*)sender {

    // Pop to A 有两种方法：
    // 1. 传递 A 的指针至此 （很蠢）
    // 2. 从 stack 中删除 B，就可以直接 Pop 回去 C

    // 这里用方法 2 来实现
    NSMutableArray *VCArray = [NSMutableArray arrayWithArray:[self.navigationController viewControllers]];
    NSLog(@"VCs in stack: %@", VCArray);
    [VCArray removeObjectAtIndex:[VCArray count] - 2]; // Remove B from stack
    NSLog(@"Now VCs in stack: %@", VCArray);
    [self.navigationController setViewControllers:VCArray]; // Reset VCs for navigation
    [self.navigationController popViewControllerAnimated:true]; // Now do pop

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
