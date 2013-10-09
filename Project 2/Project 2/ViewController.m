//
//  ViewController.m
//  Project 2
//
//  Created by Michele Laramore on 10/7/13.
//  Copyright (c) 2013 Michele Laramore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Change the background color of the view to any color you wish.
    self.view.backgroundColor = [UIColor purpleColor];
    
    
    //Create a UILabel and place it at the top of the view. This is used as the title of the book. Center the text for this label.
    
    book =[[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 770.0f, 20.0f)];
        if (book != nil)
        {
           book.text = @"The DaVinci Code.";
           book.textColor = [UIColor blueColor];
           book.textAlignment = NSTextAlignmentCenter;
           book.backgroundColor = [UIColor colorWithRed:0.855 green:0.616 blue:1 alpha:1];
    }
    [self.view addSubview: book];
    
    //Create another label that contains the text "Author:" with the text right justified.
    
        author =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 25.0f,  100.0f, 20.0f)];
        author.text = @"Author:";
        author.textColor = [UIColor redColor];
        author.textAlignment = NSTextAlignmentRight;
        author.backgroundColor = [UIColor colorWithRed:0.91 green:0.718 blue:0.902 alpha:1];
    
    [self.view addSubview: author];
    
    
   // Create a UILabel to the right of the author title label and have it contain the name of the author of the book you chose. This text will be left justified.
    
    authorName =[[UILabel alloc] initWithFrame: CGRectMake (101.0f, 25.0f,  669.0f, 20.0f)];
    authorName.text = @"Dan Brown";
    authorName.textColor = [UIColor colorWithRed:0.349 green:0.486 blue:1 alpha:1];
    authorName.textAlignment = NSTextAlignmentLeft;
    authorName.backgroundColor = [UIColor colorWithRed:0.694 green:0.839 blue:1 alpha:1];
    
    [self.view addSubview: authorName];
    
    //Create a UILabel on the next line called "Published:". This text is right justified.
    
    published =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 50.0f,  100.0f, 20.0f)];
    published.text = @"Published:";
    published.textColor = [UIColor colorWithRed:1 green:0.839 blue:0.839 alpha:1];
    published.textAlignment = NSTextAlignmentRight;
    published.backgroundColor = [UIColor colorWithRed:1 green:0.49 blue:0.518 alpha:1] ;
    
    [self.view addSubview: published];
    
    //Create a label next to the Published label and add the text of when the book was published. This text is left justified.
    
    yearPublished =[[UILabel alloc] initWithFrame: CGRectMake (101.0f, 50.0f,  669.0f, 20.0f)];
    yearPublished.text = @"April 2003";
    yearPublished.textColor = [UIColor colorWithRed:1 green:0.945 blue:0.639 alpha:1];
    yearPublished.textAlignment = NSTextAlignmentLeft;
    yearPublished.backgroundColor = [UIColor colorWithRed:0.91 green:0.647 blue:0.525 alpha:1] ;
    
    [self.view addSubview: yearPublished];
    
    //Create a UILabel with the text "Summary". This text is left justified.
    
    summary =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 75.0f,  100.0f, 20.0f)];
    summary.text = @"Summary:";
    summary.textColor = [UIColor colorWithRed:1 green:0.988 blue:0.914 alpha:1];
    summary.textAlignment = NSTextAlignmentLeft;
    summary.backgroundColor =[UIColor colorWithRed:0.533 green:0.91 blue:0.592 alpha:1];
    [self.view addSubview: summary];
    
    //Create a label with the text "List of items" and add it to the parent view. Make sure the text is left justified.
    list =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 305.0f,  110.0f, 20.0f)];
    list.text = @"List of Items:";
    list.textColor = [UIColor colorWithRed:1 green:0.945 blue:0.639 alpha:1];
    list.textAlignment = NSTextAlignmentLeft;
    list.backgroundColor = [UIColor colorWithRed:0.91 green:0.647 blue:0.525 alpha:1] ;
    
    [self.view addSubview: list];
    
    
    //Create another UILabel that contains a small summary of the book's plot. This text is centered and should span multiple lines.
    
    plot =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 100.0f,  770.0f, 200.0f)];
    plot.text = @"A monk from the order Opus Dei murders the curator of the Louvre after getting details about the location of the Holy Grail from him. The curator, Jacques Saunière, leaves behind a clue before his death drawing a pentagram and a circle with his own blood and placing his body in the center of the circle remniscent of DaVinci's Vetruvian Man.  A symbologist is called to the scene to interpret the crime scene. The curator's own grandaughter, a cryptologist, gets involved in the investigation of her grandfather's murder.";
    plot.textColor = [UIColor colorWithRed:1 green:0.859 blue:0.937 alpha:1];
    plot.textAlignment = NSTextAlignmentCenter;
    plot.backgroundColor =[UIColor colorWithRed:0.91 green:0.102 blue:0.627 alpha:1];
    plot.numberOfLines = 6;
    
    [self.view addSubview: plot];
    
    //Create an NSArray of 5 items talked about in the book. These items will be NSStrings. Add the items to the array.
   
    NSArray *myArray = [[NSArray alloc] initWithObjects: @"Priory of Scion", @"The Last Supper", @"Mona Lisa", @"Vitruvian Man", @"Fibonacci Sequence", nil];
   
    
    //Create a variable of type NSMutableString and allocate it. 
    
    NSMutableArray *mutableItemArray = [[NSMutableArray alloc]initWithCapacity:10];
    [mutableItemArray addObject:(myArray)];
    
   //Loop through the NSArray you created and append each of these items to your NSMutableString separated by commas. The last item should be preceded by an "and" (For example: dinosaurs, jeeps, storm, giant turkeys, and eating people).
                                     
    for (int i = 0; i <[mutableItemArray count]; i++)     
    {
        NSLog (@"%@", [mutableItemArray objectAtIndex:i ]);
    }
      
    //Create another label beneath and set the text to the NSMutableString text. Increase the number of lines if necessary. Make sure the text in this label is centered
    
    
    listItems =[[UILabel alloc] initWithFrame: CGRectMake (0.0f, 330.0f,  770.0f, 20.0f)];
    listItems.text = [NSString stringWithFormat: @"%@",[mutableItemArray componentsJoinedByString:@", "]];
    listItems.textColor = [UIColor colorWithRed:0.349 green:0.282 blue:0.329 alpha:1];
    listItems.textAlignment = NSTextAlignmentCenter;
    listItems.backgroundColor = [UIColor colorWithRed:0.91 green:0.275 blue:0.357 alpha:1];
    
    [self.view addSubview: listItems];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
