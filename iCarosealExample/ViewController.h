//
//  ViewController.h
//  iCarosealExample
//
//  Created by TheAppGuruz-New-6 on 24/03/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface ViewController : UIViewController
{
    NSMutableArray *images;
}
@property (nonatomic, strong) IBOutlet iCarousel *carousel;

@end
