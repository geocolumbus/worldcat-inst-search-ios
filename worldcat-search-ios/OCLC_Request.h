//
//  OCLC_.h
//  worldcat-search-ios
//
//  Created by campbelg on 1/31/14.
//  Copyright (c) 2014 OCLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+UrlEncode.h"

@interface OCLC_Request : NSObject <NSURLConnectionDataDelegate>


- (void) makeRequest;

@end
