//
//  ListInteractor.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListProtocols.h"

@class ListLocalDataManager;
@class ListAPIDataManager;

@interface ListInteractor : NSObject <ListInteractorInputProtocol>

@property (nonatomic, weak) id <ListInteractorOutputProtocol> presenter;
@property (nonatomic, strong) id <ListAPIDataManagerInputProtocol> APIDataManager;
@property (nonatomic, strong) id <ListLocalDataManagerInputProtocol> localDataManager;

- (instancetype)initWithDataManager:(ListAPIDataManager *)apiDataManager;

@end
