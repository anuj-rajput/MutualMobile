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
#import "RootWireframe.h"
#import "ListWireFrame.h"
#import <UIKit/UIKit.h>

@class Photo;

@interface DetailWireFrame : NSObject <DetailWireFrameProtocol>

@property (nonatomic, strong) RootWireframe *rootWireframe;
@property (nonatomic, strong) ListWireFrame *listWireframe;
@property (nonatomic, strong) DetailPresenter *detailPresenter;

- (void)presentDetailInterfaceFromViewController:(UIViewController *)viewController;

@end
