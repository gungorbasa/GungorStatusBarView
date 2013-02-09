//
//  ViewController.m
//  StatusBarView
//
//  Created by Gungor Basa on 2/9/13.
//  Copyright (c) 2013 Gungor Basa. All rights reserved.
//

#import "ViewController.h"
#import "GungorStatusBarView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender {
    GungorStatusBarView * statusView = [[GungorStatusBarView alloc]initGungorStatusBarWith:[UIImage imageNamed:@"wlog_bordered_icon.png"] Text:@"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."];
    
    [statusView addViewToWindow];
    
    
}

@end
