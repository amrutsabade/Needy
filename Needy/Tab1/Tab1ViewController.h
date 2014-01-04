//
//  Tab1ViewController.h
//  Needy
//
//  Created by Amrut Sabade on 29/12/13.
//  Copyright (c) 2013 Amrut Sabade. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tab1ViewController : UIViewController<UIScrollViewDelegate>
{
UIScrollView *introGuide;
}
@property(nonatomic,retain)IBOutlet UIScrollView *introGuide;
@property(nonatomic,retain)IBOutlet UIPageControl *introGuidePageNumber;
@property(nonatomic,retain)NSMutableArray *imgArray;
@end
