//
//  BaseModel.h
//  MutualMobile
//
//  Created by Anuj Rajput on 04/05/17.
//  Copyright © 2017 Anuj Rajput. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface BaseModel : MTLModel <MTLJSONSerializing>

+ (NSValueTransformer *)listJSONTransformer:(Class)modelClass;
+ (NSValueTransformer *)dictionaryListJSONTransformer;
+ (instancetype)parseDictionary:(NSDictionary *)jsonObject;
+ (NSArray *)parseList:(id)jsonObjects;

@end
