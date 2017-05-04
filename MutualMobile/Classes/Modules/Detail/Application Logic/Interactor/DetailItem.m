//
//  DetailItem.m
//  MutualMobile
//
//  Created by Anuj Rajput on 05/04/2017.
//  Copyright © 2017 . All rights reserved.
//

#import "DetailItem.h"

@interface DetailItem ()

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSURL *url;

@end

@implementation DetailItem

+ (instancetype)photoTitle:(NSString *)title url:(NSURL *)url {
    DetailItem *item = [[DetailItem alloc] init];
    
    item.title = title;
    item.url = url;
    
    return item;
}

@end
