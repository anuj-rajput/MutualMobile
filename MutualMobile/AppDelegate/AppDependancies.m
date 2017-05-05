//
//  AppDependancies.m
//  MutualMobile
//
//  Created by Anuj Rajput on 04/05/17.
//  Copyright © 2017 Anuj Rajput. All rights reserved.
//

#import "AppDependancies.h"
#import "RootWireframe.h"

#import "ListLocalDataManager.h"
#import "ListAPIDataManager.h"
#import "ListInteractor.h"
#import "ListPresenter.h"
#import "ListWireFrame.h"

#import "DetailLocalDataManager.h"
#import "DetailAPIDataManager.h"
#import "DetailInteractor.h"
#import "DetailPresenter.h"
#import "DetailWireFrame.h"

@interface AppDependancies ()

@property (nonatomic, strong) ListWireFrame *listWireframe;

@end

@implementation AppDependancies

- (instancetype)init {
    self = [super init];
    if (self) {
        [self configDependancies];
    }
    return self;
}

- (void)configDependancies {
    // Root
    RootWireframe *rootWireframe = [[RootWireframe alloc] init];
    
    // List Module
    ListWireFrame *listWireframe = [[ListWireFrame alloc] init];
    ListPresenter *listPresenter = [[ListPresenter alloc] init];
    ListLocalDataManager *listLocalDataManager = [[ListLocalDataManager alloc] init];
    ListAPIDataManager *listAPIDataManager = [[ListAPIDataManager alloc] init];
    ListInteractor *listInteractor = [[ListInteractor alloc] initWithDataManager:listAPIDataManager];
    
    // Detail Module
    DetailWireFrame *detailWireframe = [[DetailWireFrame alloc] init];
    DetailPresenter *detailPresenter = [[DetailPresenter alloc] init];
    DetailLocalDataManager *detailLocalDataManager = [[DetailLocalDataManager alloc] init];
    DetailAPIDataManager *detailAPIDataManager = [[DetailAPIDataManager alloc] init];
    DetailInteractor *detailInteractor = [[DetailInteractor alloc] init];
    
    // List Module
    listInteractor.presenter = listPresenter;
    listInteractor.localDataManager = listLocalDataManager;
    listInteractor.APIDataManager = listAPIDataManager;
    
    listPresenter.listInteractor = listInteractor;
    listPresenter.listWireFrame = listWireframe;
    
    listWireframe.detailWireframe = detailWireframe;
    listWireframe.listPresenter = listPresenter;
    listWireframe.rootWireframe = rootWireframe;
    self.listWireframe = listWireframe;
    
    // Detail Module
    detailInteractor.presenter = detailPresenter;
    detailInteractor.localDataManager = detailLocalDataManager;
    detailInteractor.APIDataManager = detailAPIDataManager;
    
    detailPresenter.detailInteractor = detailInteractor;
    detailPresenter.detailWireFrame = detailWireframe;
    
    detailWireframe.rootWireframe = rootWireframe;
    detailWireframe.listWireframe = listWireframe;
    detailWireframe.detailPresenter = detailPresenter;
}

- (void)installRooViewControllerIntoWindow:(id)window {
    // Present the List View from here
    [self.listWireframe presentListInterfaceFromWindow:window];
}

@end
