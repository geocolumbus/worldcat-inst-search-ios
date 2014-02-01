//
//  OCLC_.m
//  worldcat-search-ios
//
//  Created by campbelg on 1/31/14.
//  Copyright (c) 2014 OCLC. All rights reserved.
//

#import "OCLC_Request.h"

@implementation OCLC_Request

- (void) makeRequest {
    NSLog(@"OCLC_Request: makeRequest");
    NSString *baseUrl = @"http://www.worldcat.org/webservices/registry/search/Institutions";
    NSString *recordSchema = @"info:rfa/rfaRegistry/schemaInfos/adminData";
    NSString *query = @"local.city = \"columbus\" and local.libTypeUser exact \"3\" and local.state exact \"US-OH\"";
    
    NSMutableString *urlString = [NSMutableString stringWithFormat:@"%@?recordSchema=%@&query=%@",baseUrl,[recordSchema UrlEncode],[query UrlEncode]];
        
    NSLog(@"%@",urlString);
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection connectionWithRequest:request delegate:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"%@",response);
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSString *result = [[NSString alloc] initWithBytes:[data bytes] length:[data length] encoding:NSASCIIStringEncoding];
    NSLog(@"%@",result);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"%@",error);
}

@end