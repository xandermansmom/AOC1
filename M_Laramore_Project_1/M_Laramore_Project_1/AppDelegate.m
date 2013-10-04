//
//  AppDelegate.m
//  M_Laramore_Project_1
//
//  Created by Michele Laramore on 10/1/13.
//  AOC 1 1310
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
   
    //Create a variable using the float data type. Cast it to an int and using NSLog, output both the initial float value as well as the int value.
    
    float myFloat;
    int myInt;
    myFloat = 1.25f;
    myInt = (int)myFloat;
    NSLog(@"myInt=%d, myFloat=%.2f", myInt, myFloat);
    
    //Perform an AND and an OR comparison. Use float, int and BOOL types with the comparisons. BOOL values should be YES or NO (TRUE or FALSE are also acceptable) and written in all caps.
    
    //float
    
    float value = 75.0f;
    if ((value == 80.0f || value == 100.0f))
    {
        NSLog(@"It is way too hot outside");
    }
    else if ((value < 80.0f && value > 60.0f))
        NSLog(@"The temperature is just right!");
    
    //int
    
    int numBatteries = 2;
    if ((numBatteries == 1 || numBatteries == 0))
    {
        NSLog(@"You don't have enough batteries!");
    }
    else if ((numBatteries > 1 && numBatteries < 3))
    NSLog(@"You have just the right number of batteries!");
    
    //BOOL
    
    int aGrade = 100;
    int fGrade = 0;
    bool hasGoodGrade = TRUE;
    
    if ((aGrade > fGrade && hasGoodGrade == TRUE))
    
    {
        NSLog(@"Michele is getting good grades in Objective C");
    }
    else if ((aGrade < fGrade || hasGoodGrade == FALSE))
    {
        NSLog(@"Michele is not getting good grades in Objective C");
    }
    
   //Use an if, else if and else check using any of the data types of your choice.
    
    float litersWaterperDay = 1.5f;
    if (litersWaterperDay < 1.5f)
    {
        NSLog (@"You need to drink more water.");
    }
    else if (litersWaterperDay > 1.5f)
    {
        NSLog (@"You are drinking too much water.");
    }
    else
    {
        NSLog(@"You are drinking the right amount of water");
    }

    //Perform a single for loop printing out values to the console
    
    int i;
    
    for (i = 1; i < 10; i++)
    {
        NSLog(@"%d", i);
    }
    
    
    //Perform a nested loop printing out values to the console
    
    int j;
    
    for (int i = 0; i < 20; i++)
    {
        NSLog( @"%d", i);
        
        for (j = 0; j < 10; j++)
        {
            NSLog ( @"%d", j);
        }
    }
    
    //Perform a while loop that increments an int variable and outputs to the console.
    
    int count = 0;
    while (count < 20)
    {
        NSLog(@"%d", count);
        
        count++;
    }
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
