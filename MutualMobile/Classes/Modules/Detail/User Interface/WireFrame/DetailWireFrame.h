//
//  DetailWireFrame.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailProtocols.h"
#import "DetailViewController.h"
#import "DetailLocalDataManager.h"
#import "DetailAPIDataManager.h"
#import "DetailInteractor.h"
#import "DetailPresenter.h"
#import "DetailWireFrame.h"
#import <UIKit/UIKit.h>

@interface DetailWireFrame : NSObject <DetailWireFrameProtocol>

- (void)presentDetailInterfaceFromViewController:(UIViewController *)viewController;
- (void)popDetailInterface;

@end
