//
//  AppDelegate.m
//  LoginTask
//
//  Created by Macbook on 5.07.21.
//

#import "AppDelegate.h"
#import "LoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    LoginViewController *loginViewController = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    window.rootViewController = loginViewController;
    
    self.window = window;
    [self.window makeKeyAndVisible];
    
    return YES;
}





@end
