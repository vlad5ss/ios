#import "AppDelegate.h"
#import "SummArray.h"
#import "Diagonal.h"
#import "Pangrams.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setRootViewController: [UIViewController new]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    //Task1
    SummArray*task1 =[[SummArray alloc] init];
    NSLog(@"%@",[task1 summArray:@[@1, @2, @33, @44]]);
    //Task2
    Diagonal*parent2=[[Diagonal alloc] init];
    NSMutableArray *dataArray = [[NSMutableArray alloc] initWithCapacity: 3];
    
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"11",@"2",@"4",nil] atIndex:0];
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"4",@"6",@"6",nil] atIndex:1];
    [dataArray insertObject:[NSMutableArray arrayWithObjects:@"10",@"8",@"-12",nil] atIndex:2];
    
    NSArray *myStandardArray = [[NSArray alloc]init];
    myStandardArray = [NSArray arrayWithArray:dataArray];
    
    [parent2 diagonalDifference:myStandardArray];
    NSLog(@"%@",[parent2 diagonalDifference:myStandardArray]);
    //Task3
    Pangrams*task3 =[[Pangrams alloc] init];
    NSLog(@"%d",[task3 pangrams:@"go to work"]);
    //Task4
    
    
    
    //Task5
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {}
- (void)applicationDidEnterBackground:(UIApplication *)application {}
- (void)applicationWillEnterForeground:(UIApplication *)application {}
- (void)applicationDidBecomeActive:(UIApplication *)application {}
- (void)applicationWillTerminate:(UIApplication *)application {}
@end
