//
//  ViewController.h
//  Needy
//
//  Created by Amrut Sabade on 28/12/13.
//  Copyright (c) 2013 Amrut Sabade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface ViewController : UIViewController<UIScrollViewDelegate>
{
    UIScrollView *introGuide;
}
@property(nonatomic,retain)IBOutlet UIScrollView *introGuide;
@property(nonatomic,retain)IBOutlet UIPageControl *introGuidePageNumber;
@property(nonatomic,retain)NSMutableArray *imgArray;

@end
