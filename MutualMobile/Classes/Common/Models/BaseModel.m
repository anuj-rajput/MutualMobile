//
//  BaseModel.m
//  MutualMobile
//
//  Created by Anuj Rajput on 04/05/17.
//  Copyright © 2017 Anuj Rajput. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{};
}

+ (instancetype)parseDictionary:(NSDictionary *)jsonObject {
    if (jsonObject == nil || jsonObject.count == 0 ) {
        return nil;
    }
    NSError *error;
    return [MTLJSONAdapter modelOfClass:self.class
                     fromJSONDictionary:jsonObject
                                  error:&error];
}

+ (NSArray *)parseArray:(NSArray *)jsonObjects {
    if (jsonObjects == nil || jsonObjects.count == 0) {
        return nil;
    }
    NSError *error;
    return [MTLJSONAdapter modelsOfClass:self.class
                           fromJSONArray:jsonObjects
                                   error:&error];
}

+ (NSArray *)parseDictionaryAsArray:(NSDictionary *)jsonObjects {
    if (jsonObjects == nil || jsonObjects.count == 0) {
        return nil;
    }
    NSMutableArray *objects = [NSMutableArray arrayWithCapacity:jsonObjects.count];
    NSArray *temp = jsonObjects.allValues;
    for (NSDictionary *dict in temp) {
        [objects addObject:[self parseDictionary:dict]];
    }
    
    return objects;
}

+ (NSArray *)parseList:(id)jsonObjects {
    if ([jsonObjects isKindOfClass:NSArray.class]) {
        return [self parseArray:jsonObjects];
    }
    else if ([jsonObjects isKindOfClass:NSDictionary.class]) {
        return [self parseDictionaryAsArray:jsonObjects];
    }
    else {
        //This should not happen, but in case the API returns an incorrect response
        //This will cause it to fail gracefully
        return nil;
    }
}

+ (NSValueTransformer *)dictionaryListJSONTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id (id responseObject, BOOL *success, NSError *__autoreleasing *error) {
        if (responseObject == nil) return nil;
        if ([responseObject isKindOfClass:NSDictionary.class]) {
            return ((NSDictionary *)responseObject).allValues;
        }
        else if ([responseObject isKindOfClass:NSArray.class]) {
            return responseObject;
        }
        else {
            return nil;
        }
    }];
}

+ (NSValueTransformer *)listJSONTransformer:(Class)modelClass {
    
    return [MTLValueTransformer transformerUsingForwardBlock:^id (id responseObject, BOOL *success, NSError *__autoreleasing *error) {
        if (responseObject == nil) return nil;
        NSError *parseError;
        if ([responseObject isKindOfClass:NSDictionary.class]) {
            NSDictionary *response = (NSDictionary *)responseObject;
            if (response.count == 0) return nil;
            NSMutableArray *objects = [NSMutableArray arrayWithCapacity:response.count];
            for (NSDictionary *dict in response.allValues) {
                [objects addObject:[MTLJSONAdapter modelOfClass:modelClass
                                             fromJSONDictionary:dict
                                                          error:&parseError]];
            }
            return objects;
        }
        else if ([responseObject isKindOfClass:NSArray.class]) {
            return [MTLJSONAdapter modelsOfClass:modelClass
                                   fromJSONArray:responseObject
                                           error:&parseError];
        }
        else {
            return nil;
        }
    }];
}

@end
