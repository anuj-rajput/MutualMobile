//
//  ListWireFrame.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListProtocols.h"
#import "ListViewController.h"
#import "ListLocalDataManager.h"
#import "ListAPIDataManager.h"
#import "ListInteractor.h"
#import "ListPresenter.h"
#import "DetailWireFrame.h"
#import "RootWireframe.h"
#import <UIKit/UIKit.h>

@interface ListWireFrame : NSObject <ListWireFrameProtocol>

@property (nonatomic, strong) DetailWireFrame *detailWireframe;
@property (nonatomic, strong) ListPresenter *listPresenter;
@property (nonatomic, strong) RootWireframe *rootWireframe;

- (void)presentListInterfaceFromWindow:(UIWindow *)window;
- (void)presentDetailInterface;

@end
