//
//  Photo.m
//  MutualMobile
//
//  Created by Anuj Rajput on 04/05/17.
//  Copyright © 2017 Anuj Rajput. All rights reserved.
//

#import "Photo.h"

@implementation Photo

// MARK: Methods
+ (instancetype)photoItemWithId:(NSString *)photoId title:(NSString *)title url:(NSURL *)url {
    Photo *photo = [[self alloc] init];
    
    photo.photoId = photoId;
    photo.title = title;
    photo.url = url;
    
    return photo;
}

// MARK: JSON Mapping
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"photoId": @"id",
             @"title": @"title",
             @"url": @"url_o"
             };
}

// MARK: Transformations
+ (NSValueTransformer *)urlJSONTransformer {
    return [MTLJSONAdapter NSURLJSONTransformer];
}

@end
