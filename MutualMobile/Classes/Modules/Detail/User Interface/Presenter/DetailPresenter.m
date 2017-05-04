//
//  DetailPresenter.m
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import "DetailPresenter.h"
#import "DetailWireframe.h"

@class Photo;

@implementation DetailPresenter

- (void)showPhotoItem:(Photo *)photoItem {
    [self.userInterface setPhotoItem:photoItem];
}

@end
