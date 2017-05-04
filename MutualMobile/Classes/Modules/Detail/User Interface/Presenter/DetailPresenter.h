//
//  DetailPresenter.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailProtocols.h"

@class DetailWireFrame;

@interface DetailPresenter : NSObject <DetailPresenterProtocol, DetailInteractorOutputProtocol>

@property (nonatomic, weak) id <DetailViewProtocol> userInterface;
@property (nonatomic, strong) id <DetailInteractorInputProtocol> detailInteractor;
@property (nonatomic, strong) id <DetailWireFrameProtocol> detailWireFrame;

@end
