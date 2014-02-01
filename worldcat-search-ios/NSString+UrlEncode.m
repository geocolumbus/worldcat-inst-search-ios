//
//  NSString+UrlEncode.m
//  worldcat-search-ios
//
//  Created by campbelg on 1/31/14.
//  Copyright (c) 2014 OCLC. All rights reserved.
//

#import "NSString+UrlEncode.h"

@implementation NSString (UrlEncode)

-(NSString*) UrlEncode
{
    NSString *encodedString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes( NULL, (CFStringRef)self, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8 ));
    return encodedString;
}

@end
