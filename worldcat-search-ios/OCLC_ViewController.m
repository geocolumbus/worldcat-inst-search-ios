//
//  OCLC_ViewController.m
//  worldcat-search-ios
//
//  Created by campbelg on 1/31/14.
//  Copyright (c) 2014 OCLC. All rights reserved.
//

#import "OCLC_ViewController.h"
#import "OCLC_Request.h"

@interface OCLC_ViewController ()

@end

@implementation OCLC_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"OCLC_ViewController: viewDidLoad");
    
    OCLC_Request *myRequest = [OCLC_Request new];
    [myRequest makeRequest];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    NSLog(@"OCLC_ViewController: didReceiveMemoryWarning");
}

@end
