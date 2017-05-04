//
//  DetailProtocols.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol DetailInteractorOutputProtocol;
@protocol DetailInteractorInputProtocol;
@protocol DetailViewProtocol;
@protocol DetailPresenterProtocol;
@protocol DetailLocalDataManagerInputProtocol;
@protocol DetailAPIDataManagerInputProtocol;

@class DetailWireFrame;

// Defines the public interface that something else can use to drive the user interface
@protocol DetailViewProtocol
@required
@property (nonatomic, strong) id <DetailPresenterProtocol> presenter;
/**
 * Add here your methods for communication PRESENTER -> VIEWCONTROLLER
 */
@end

@protocol DetailWireFrameProtocol
@required
/**
 * Add here your methods for communication PRESENTER -> WIREFRAME
 */
@end

@protocol DetailPresenterProtocol
@required
/**
 * Add here your methods for communication VIEWCONTROLLER -> PRESENTER
 */
@end

@protocol DetailInteractorOutputProtocol
/**
 * Add here your methods for communication INTERACTOR -> PRESENTER
 */
@end

@protocol DetailInteractorInputProtocol
@required
@property (nonatomic, weak) id <DetailInteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <DetailAPIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <DetailLocalDataManagerInputProtocol> localDataManager;
/**
 * Add here your methods for communication PRESENTER -> INTERACTOR
 */
@end


@protocol DetailDataManagerInputProtocol
/**
 * Add here your methods for communication INTERACTOR -> DATAMANAGER
 */
@end

@protocol DetailAPIDataManagerInputProtocol <DetailDataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
 */
@end

@protocol DetailLocalDataManagerInputProtocol <DetailDataManagerInputProtocol>
/**
 * Add here your methods for communication INTERACTOR -> LOCLDATAMANAGER
 */
@end
