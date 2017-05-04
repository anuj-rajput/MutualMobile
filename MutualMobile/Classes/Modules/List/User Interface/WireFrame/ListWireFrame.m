//
//  ListWireFrame.m
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import "ListWireFrame.h"

static NSString *ListViewControllerIdentifier = @"ListViewController";

@interface ListWireFrame ()

@property (nonatomic, strong) ListViewController *listViewController;

@end

@implementation ListWireFrame

- (void)presentListInterfaceFromWindow:(UIWindow *)window {
    ListViewController *listViewController = [self listViewControllerFromStoryboard];
    self.listPresenter.userInterface = listViewController;
    self.listViewController = listViewController;
    
    [self.rootWireframe displayRootViewController:listViewController inWindow:window];
}

- (void)presentDetailInterface {
    [self.detailWireframe presentDetailInterfaceFromViewController:self.listViewController];
}

- (ListViewController *)listViewControllerFromStoryboard {
    UIStoryboard *storyboard = [self mainStoryboard];
    ListViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:ListViewControllerIdentifier];
    
    return viewController;
}

- (UIStoryboard *)mainStoryboard {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    return storyboard;
}

@end
