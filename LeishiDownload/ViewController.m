//
//  ViewController.m
//  LeishiDownload
//
//  Created by Iwinad_CTZ on 11/21/13.
//  Copyright (c) 2013 Iwinad. All rights reserved.
//

#import "ViewController.h"
#import "ASIHTTPRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ASIHTTPRequest *rquest=[ASIHTTPRequest requestWithURL:[NSURL URLWithString:@"http://blog.sina.com.cn/s/blog_6ba7867b01015l8b.html"]];
    [rquest setCompletionBlock:^{
        NSLog(@"req>>>%@",[rquest responseString]);
    }];
    [rquest startAsynchronous];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
