//
//  ViewController.m
//  NavigationPop
//
//  Created by kim on 2018/6/22.
//  Copyright © 2018年 kedc. All rights reserved.
//

#import "RootViewController.h"

#import "AViewController.h"
#import "BViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor whiteColor]];

    [self.navigationItem setTitle:@"Root"];

    UIButton *button = [[UIButton alloc] init];
    button.backgroundColor = [UIColor blueColor];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    [button setTitle:@"GO TO A" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    [button setFrame:CGRectMake(0, 0, 300, 50)];
    button.center = self.view.center;

}

- (void)buttonClicked:(UIButton*)sender {
    AViewController *aViewController = [[AViewController alloc] init];
    [self.navigationController pushViewController:aViewController animated:true];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
