//
//  ViewController.m
//  iCarosealExample
//
//  Created by TheAppGuruz-New-6 on 24/03/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import "ViewController.h"

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


- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    [carousel setType:iCarouselTypeCoverFlow];
    images=[[NSMutableArray alloc]initWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",nil];
    return [images count];
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view
{
    view =  [[UIView alloc] init];
    view.contentMode = UIViewContentModeScaleAspectFit;
    CGRect rec = view.frame;
    if(UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone)
    {
        rec.size.width = 250;
        rec.size.height = 250;
    }
    view.frame = rec;
    UIImageView *iv;
    if(UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone)
    {
        iv=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    }
    NSString *temp=[images objectAtIndex:index];
    iv.image=[UIImage imageNamed:temp];
    iv.contentMode = UIViewContentModeScaleAspectFit;
    [view addSubview:iv];
    return view;
}

- (void)carousel:(iCarousel *)carousel didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"Image is selected.");
}

- (CGFloat)carousel:(iCarousel *)carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value
{
    switch (option)
    {
        case iCarouselOptionWrap:
        {
            return YES;
        }
        default:
        {
            return value;
        }
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
