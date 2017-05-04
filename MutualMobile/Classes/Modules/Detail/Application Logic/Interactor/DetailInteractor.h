//
//  DetailInteractor.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailProtocols.h"

@interface DetailInteractor : NSObject <DetailInteractorInputProtocol>

@property (nonatomic, weak) id <DetailInteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <DetailAPIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <DetailLocalDataManagerInputProtocol> localDataManager;

@end
