//
//  DetailWireFrame.m
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import "DetailWireFrame.h"

static NSString *DetailViewControllerIdentifier = @"DetailViewController";

@interface DetailWireFrame ()

@property (nonatomic, strong) DetailViewController *detailViewController;

@end

@implementation DetailWireFrame

- (void)presentDetailInterfaceFromViewController:(UIViewController *)viewController {
    // Present detail view controller on to the navigation stack
    DetailViewController *detailViewController = [self detailsControllerFromStoryboard];
    detailViewController.presenter = self.detailPresenter;
    self.detailPresenter.userInterface = detailViewController;
    self.detailViewController = detailViewController;
    
    [self.listWireframe showDetailViewController:detailViewController];
}

- (void)popDetailInterface {
  // TODO: Pop detail view controller from navigation stack
}


- (DetailViewController *)detailsControllerFromStoryboard {
    UIStoryboard *storyboard = [self mainStoryboard];
    DetailViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:DetailViewControllerIdentifier];
    
    return viewController;
}

#pragma mark -- Storyboard --
- (UIStoryboard *)mainStoryboard {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    return storyboard;
}


@end
