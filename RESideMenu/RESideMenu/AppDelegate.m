//
//  AppDelegate.m
//  RESideMenu
//
//  Created by 寒风 on 16/2/20.
//  Copyright © 2016年 WH. All rights reserved.
//

#import "AppDelegate.h"
#import "WHTabBarController.h"
#import "WHLeftViewController.h"
#import "WHRightViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    WHTabBarController *tabBarViewController = [[WHTabBarController alloc] init];
    WHLeftViewController *leftViewController = [[WHLeftViewController alloc] init];
    WHRightViewController *rightViewController = [[WHRightViewController alloc] init];
    RESideMenu *sideMenuViewController = [[RESideMenu alloc] initWithContentViewController:tabBarViewController leftMenuViewController:leftViewController rightMenuViewController:rightViewController];
    
    //sideMenuViewController.delegate = self;
    
    sideMenuViewController.menuPreferredStatusBarStyle = UIStatusBarStyleLightContent;
    sideMenuViewController.contentViewShadowRadius = 12;
    sideMenuViewController.contentViewShadowOpacity = 0;
    sideMenuViewController.contentViewShadowEnabled = YES;
    sideMenuViewController.contentViewShadowOffset  = CGSizeMake(0, 1);

    //    sideMenuViewController.menuViewControllerTransformation = CGAffineTransformMake(0.2, 0.2, 0.2, 0.2, 0.2, 0.2);//侧面的动态跳转
    self.window.rootViewController = sideMenuViewController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark - RESideMenuDelegate

//- (void)sideMenu:(RESideMenu *)sideMenu didRecognizePanGesture:(UIPanGestureRecognizer *)recognizer {
//    NSLog(@"%@",recognizer);
//}

- (void)sideMenu:(RESideMenu *)sideMenu willShowMenuViewController:(UIViewController *)menuViewController {
    
}

- (void)sideMenu:(RESideMenu *)sideMenu didShowMenuViewController:(UIViewController *)menuViewController {
    
}

- (void)sideMenu:(RESideMenu *)sideMenu willHideMenuViewController:(UIViewController *)menuViewController {
}

- (void)sideMenu:(RESideMenu *)sideMenu didHideMenuViewController:(UIViewController *)menuViewController {
    
}

/*
 RESideMenuDelegate   Above ALL
 */


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
