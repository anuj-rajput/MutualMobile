//
//  ListPresenter.m
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import "ListPresenter.h"
#import "ListInteractor.h"
#import "ListWireFrame.h"

@implementation ListPresenter

- (void)updateView:(NSString *)searchText {
    // Ask data from interactor and update it here
    [self.listInteractor searchPhotos:searchText];
}

// MARK: ListInteractorOutputProtocol
- (void)listOfPhotos:(NSArray *)photos {
    // Update the view with photos
    if (photos.count == 0) {
        // No photos found, update the UI
    } else {
        // Update the Presenter
        [self.userInterface showPhotoItems:photos];
    }
}

- (void)updateViewWithPhotoItems:(NSArray *)photoItems {
    [self.userInterface showPhotoItems:photoItems];
}

- (void)searchForPhotos:(NSString *)searchText {
    [self.listInteractor searchPhotos:searchText];
}

- (void)photoTapped:(Photo *)photoItem {
    [self.listInteractor detailForPhotoItem:photoItem];
}

@end
