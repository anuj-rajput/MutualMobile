//
//  ListAPIDataManager.m
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import "ListAPIDataManager.h"
#import <AFNetworking/AFNetworking.h>
#import "Photo.h"

static NSString *requestUrl = @"https://api.flickr.com/services/rest/";

@implementation ListAPIDataManager

- (void)getPhotosWithSearchText:(NSString *)text completion:(void (^)(NSArray *photoItems))completion {
    NSString *searchText = (text)?text:@"";
    
    // Request parameters
    NSDictionary *parameters = @{
                                 @"method": @"flickr.photos.search",
                                 @"api_key": @"48a8e78ccfc4cda94e4fa1a3610385ac",
                                 @"text": searchText,
                                 @"extras": @"url_o",
                                 @"per_page": @50,
                                 @"page": @1,
                                 @"format": @"json",
                                 @"nojsoncallback": @1
                                 };
    
    // Make request to the API
    [[AFHTTPSessionManager manager]
     GET:requestUrl
     parameters:parameters
     progress:nil
     success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
         if ([responseObject isKindOfClass:NSDictionary.class]) {
             // Parse the selective object (photos.photo array) from the response
             NSArray *photoItems = [Photo parseList:responseObject[@"photos"][@"photo"]];
             completion(photoItems);
         }
     }
     failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
         // TODO: Show an error message on the UI
     }];
}

@end
