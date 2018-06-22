//
//  AViewController.m
//  NavigationPop
//
//  Created by kim on 2018/6/22.
//  Copyright © 2018年 kedc. All rights reserved.
//

#import "AViewController.h"

#import "BViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor whiteColor]];

    [self.navigationItem setTitle:@"A"];

    UIButton *button = [[UIButton alloc] init];
    button.backgroundColor = [UIColor blueColor];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    [button setTitle:@"GO TO B" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    [button setFrame:CGRectMake(0, 0, 300, 50)];
    button.center = self.view.center;

}

- (void)buttonClicked:(UIButton*)sender {
    BViewController *bViewController = [[BViewController alloc] init];
    [self.navigationController pushViewController:bViewController animated:true];
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
