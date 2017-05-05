//
//  ListPresenter.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListProtocols.h"

@interface ListPresenter : NSObject <ListPresenterProtocol, ListInteractorOutputProtocol>

@property (nonatomic, weak) UIViewController <ListViewProtocol> *userInterface;

@property (nonatomic, strong) id <ListInteractorInputProtocol> listInteractor;
@property (nonatomic, strong) ListWireFrame *listWireFrame;

@end
