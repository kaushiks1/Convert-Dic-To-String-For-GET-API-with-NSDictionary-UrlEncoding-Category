//
//  NSDictionary+UrlEncoding.m
//  Convert_Dic_To_String_For_GET_API
//
//  Created by SILICON on 30/07/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "NSDictionary+UrlEncoding.h"

// helper function: get the string form of any object
static NSString *toString(id object) {
    return [NSString stringWithFormat: @"%@", object];
}

// helper function: get the url encoded string form of any object
static NSString *urlEncode(id object) {
    NSString *string = toString(object);
    NSCharacterSet *characterSet = [NSCharacterSet URLHostAllowedCharacterSet];
    return [string stringByAddingPercentEncodingWithAllowedCharacters:characterSet];
  //  return [string stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
}



@implementation NSDictionary (UrlEncoding)

-(NSString*) urlEncodedString {
    NSMutableArray *parts = [NSMutableArray array];
    for (id key in self) {
        id value = [self objectForKey: key];
        NSString *part = [NSString stringWithFormat: @"%@=%@", urlEncode(key), urlEncode(value)];
        [parts addObject: part];
    }
    return [parts componentsJoinedByString: @"&"];
}


@end
