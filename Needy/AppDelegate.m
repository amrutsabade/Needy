//
//  AppDelegate.m
//  Needy
//
//  Created by Amrut Sabade on 28/12/13.
//  Copyright (c) 2013 Amrut Sabade. All rights reserved.
//

#import "AppDelegate.h"
#import "Tab1ViewController.h"
#import "Tab2ViewController.h"
#import "Tab3ViewController.h"
#import "Tab4ViewController.h"
#import "Tab5ViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}
-(void)addTab
{
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    
    
   
    
    Tab1ViewController *tab1 =
    [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:[NSBundle mainBundle]]
     instantiateViewControllerWithIdentifier:@"Tab1ViewController"];
    UINavigationController *tab1_nc = [[UINavigationController alloc] initWithRootViewController:tab1];
    tab1_nc.tabBarItem.title = @"tab1";
    tab1_nc.tabBarItem.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Default" ofType:@"png"]];

    Tab2ViewController *tab2 =  [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:[NSBundle mainBundle]]
                                instantiateViewControllerWithIdentifier:@"Tab2ViewController"];
    UINavigationController *tab2_nc = [[UINavigationController alloc] initWithRootViewController:tab2];
    tab2_nc.tabBarItem.title = @"tab2";
    tab2_nc.tabBarItem.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Optiomn" ofType:@"png"]];
   
    
    
    Tab3ViewController *tab3 =  [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:[NSBundle mainBundle]]
                                 instantiateViewControllerWithIdentifier:@"Tab3ViewController"];
    UINavigationController *tab3_nc1 = [[UINavigationController alloc] initWithRootViewController:tab3];
    tab3_nc1.tabBarItem.title = @"tab3";
    tab3_nc1.tabBarItem.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Optiomn" ofType:@"png"]];
    
    Tab4ViewController *tab4 =  [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:[NSBundle mainBundle]]
                                 instantiateViewControllerWithIdentifier:@"Tab4ViewController"];
    UINavigationController *tab4_nc = [[UINavigationController alloc] initWithRootViewController:tab4];
    tab4_nc.tabBarItem.title = @"tab4";
    tab4_nc.tabBarItem.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Optiomn" ofType:@"png"]];
    
    Tab5ViewController *tab5 =  [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:[NSBundle mainBundle]]
                                 instantiateViewControllerWithIdentifier:@"Tab5ViewController"];
    UINavigationController *tab5_nc = [[UINavigationController alloc] initWithRootViewController:tab5];
    tab5_nc.tabBarItem.title = @"tab5";
    tab5_nc.tabBarItem.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Optiomn" ofType:@"png"]];

    
    NSMutableArray *tabItems = [[NSMutableArray alloc]initWithObjects:tab5_nc,tab4_nc,tab3_nc1,tab2_nc,tab1_nc ,nil];
    // Add Views to Controller
    tabBarController.viewControllers = tabItems;
    self.window.rootViewController=tabBarController;
  [(UITabBarController*)self.window.rootViewController setSelectedIndex:4];
    

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
