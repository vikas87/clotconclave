//
//  ViewController.m
//  clotconclave
//
//  Created by INMUBPHG2103 on 07/08/13.
//  Copyright (c) 2013 watermelon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nextViewBtn;
@synthesize webView;

- (void)viewDidLoad
{
      [super viewDidLoad];
    NSString *path=[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"clot"];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [super viewDidUnload];
}
- (void)viewWillAppear:(BOOL)animated {
    
    self.navigationController.navigationBar.hidden = YES;
}
- (IBAction)nextView:(id)sender {
    
    firstPage *first=[[firstPage alloc]init];
    [self.navigationController pushViewController:first animated:NO];

}
@end
