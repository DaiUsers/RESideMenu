//
//  WHTabBarController.m
//  FrameAttempt-FirstDay
//
//  Created by 寒风 on 16/2/18.
//  Copyright © 2016年 W. All rights reserved.
//

#import "WHTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface WHTabBarController ()

@end

@implementation WHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.viewControllers = [self createSubViewControllers];
}

- (NSArray *)createSubViewControllers {
    NSArray *titles = @[@"first",@"second",@"third"];
    NSArray *classes = @[@"FirstViewController",
                         @"SecondViewController",
                         @"ThirdViewController"];
    NSMutableArray *tempSubViewControllers = [[NSMutableArray alloc] initWithCapacity:titles.count];
    for (int iPageNum = 0; iPageNum < titles.count; iPageNum ++)
    {
        Class cls = NSClassFromString([classes objectAtIndex:iPageNum]);
        UIViewController *viewController = [[cls alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:[titles objectAtIndex:iPageNum] image:nil selectedImage:nil];
        [tempSubViewControllers addObject:nav];
    }
    return tempSubViewControllers;
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
