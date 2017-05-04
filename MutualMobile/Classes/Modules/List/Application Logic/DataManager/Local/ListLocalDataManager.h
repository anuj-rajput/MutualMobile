//
//  ListLocalDataManager.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListProtocols.h"
#import "Photo.h"

@interface ListLocalDataManager : NSObject <ListLocalDataManagerInputProtocol>

- (NSArray *)listOfPhotoItems;

@end
