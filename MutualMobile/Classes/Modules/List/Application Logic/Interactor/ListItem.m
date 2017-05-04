//
//  ListItem.m
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import "ListItem.h"

@interface ListItem ()

@property (nonatomic, strong) NSString *photoId;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSURL *url;

@end

@implementation ListItem

+ (instancetype)photoWithId:(NSString *)photoId title:(NSString *)title url:(NSURL *)url {
    ListItem *item = [[ListItem alloc] init];
    
    item.photoId = photoId;
    item.title = title;
    item.url = url;
    
    return item;
}

@end
