//
//  ViewController.m
//  appTest
//
//  Created by Michele Laramore on 10/12/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//In the ViewController object define a function that takes no parameters but returns a single int value.

+(int)printDebugInfo:(NSString*) debugString numLines:(NSInteger)numLines
{
    NSLog (@"%@", debugString);
    
    return 3;
}


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

@end
