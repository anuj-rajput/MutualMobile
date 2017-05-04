//
//  ListItem.h
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListItem : NSObject

@property (nonatomic, readonly, strong) NSString *photoId;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSURL *url;

+ (instancetype)photoWithId:(NSString *)photoId title:(NSString *)title url:(NSURL *)url;

@end
