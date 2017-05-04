//
//  Photo.h
//  MutualMobile
//
//  Created by Anuj Rajput on 04/05/17.
//  Copyright © 2017 Anuj Rajput. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseModel.h"

@interface Photo : BaseModel

@property (nonatomic, strong) NSString *photoId;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSURL *url;

+ (instancetype)photoItemWithId:(NSString *)photoId title:(NSString *)title url:(NSURL *)url;

@end
