#import "AppDelegate.h"
#import "KidnapperNote.h"


@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  [self.window setRootViewController: [UIViewController new]];
  self.window.backgroundColor = [UIColor whiteColor];
  [self.window makeKeyAndVisible];
    
    KidnapperNote*task4=[[KidnapperNote alloc] init];
    NSLog(@"%d",[task4 checkMagazine:@"asdasdasda" note:@"sdsa"]);
    
    
    
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {}
- (void)applicationDidEnterBackground:(UIApplication *)application {}
- (void)applicationWillEnterForeground:(UIApplication *)application {}
- (void)applicationDidBecomeActive:(UIApplication *)application {}
- (void)applicationWillTerminate:(UIApplication *)application {}
@end
