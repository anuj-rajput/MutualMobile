//
//  ListProtocols.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ListInteractorOutputProtocol;
@protocol ListInteractorInputProtocol;
@protocol ListViewProtocol;
@protocol ListPresenterProtocol;
@protocol ListLocalDataManagerInputProtocol;
@protocol ListAPIDataManagerInputProtocol;

@class ListWireFrame;

// Defines the public interface that something else can use to drive the user interface
@protocol ListViewProtocol
@required
@property (nonatomic, strong) id <ListPresenterProtocol> presenter;

- (void)showPhotoItems:(NSArray *)photoItems;
- (void)reloadItems;

@end

@protocol ListWireFrameProtocol
@required
/**
 * Add here your methods for communication PRESENTER -> WIREFRAME
 */
@end

@protocol ListPresenterProtocol
@required
- (void)searchForPhotos:(NSString *)searchText;

@end

@protocol ListInteractorOutputProtocol

- (void)listOfPhotos:(NSArray *)photos;

@end

@protocol ListInteractorInputProtocol
@required
@property (nonatomic, weak) id <ListInteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <ListAPIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <ListLocalDataManagerInputProtocol> localDataManager;

- (void)searchPhotos:(NSString *)searchText;

@end


@protocol ListDataManagerInputProtocol
/**
 * Add here your methods for communication INTERACTOR -> DATAMANAGER
 */
@end

@protocol ListAPIDataManagerInputProtocol <ListDataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
 */
@end

@protocol ListLocalDataManagerInputProtocol <ListDataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> LOCLDATAMANAGER
 */
@end