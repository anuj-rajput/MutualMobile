//
//  RootWireframe.m
//  MutualMobile
//
//  Created by Anuj Rajput on 04/05/17.
//  Copyright © 2017 Anuj Rajput. All rights reserved.
//

#import "RootWireframe.h"

@implementation RootWireframe

- (void)displayRootViewController:(UIViewController *)viewController inWindow:(UIWindow *)window {
    UINavigationController *navigationController = (UINavigationController *)[window rootViewController];
    navigationController.viewControllers = @[viewController];
}

@end
