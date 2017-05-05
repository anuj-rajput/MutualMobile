//
//  ListInteractor.m
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import "ListInteractor.h"
#import "ListLocalDataManager.h"
#import "ListAPIDataManager.h"
#import "Photo.h"

@interface ListInteractor ()

@property (nonatomic, strong) ListLocalDataManager *dataManager;
@property (nonatomic, strong) ListAPIDataManager *apiDataManager;

@end

@implementation ListInteractor

- (instancetype)initWithDataManager:(ListAPIDataManager *)apiDataManager {
    self = [super init];
    if (self) {
        self.apiDataManager = apiDataManager;
    }
    return self;
}

// MARK: ListInteractorInputProtocol
- (void)searchPhotos:(NSString *)searchText {
    [self.apiDataManager getPhotosWithSearchText:searchText completion:^(NSArray *photoItems) {
        [self.presenter listOfPhotos:photoItems];
    }];
}

- (void)detailForPhotoItem:(Photo *)photoItem {
    // TODO: Presenter asked Interactor for Photo Item detail. Set
}

@end
