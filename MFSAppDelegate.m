#import "MFSAppDelegate.h"
#import "MFSRootViewController.h"

@implementation MFSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	_window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:[[MFSRootViewController alloc] init]];
	if (@available(iOS 11.0, *)) {
		navController.navigationBar.prefersLargeTitles = YES;
	}
	
	_rootViewController = navController;
	_window.rootViewController = _rootViewController;
	[_window makeKeyAndVisible];
	return YES;
}

@end
