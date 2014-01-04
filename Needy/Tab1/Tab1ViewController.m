//
//  Tab1ViewController.m
//  Needy
//
//  Created by Amrut Sabade on 29/12/13.
//  Copyright (c) 2013 Amrut Sabade. All rights reserved.
//

#import "Tab1ViewController.h"

@interface Tab1ViewController ()

@end

@implementation Tab1ViewController
@synthesize introGuide,introGuidePageNumber;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    introGuide.delegate=self;
    
    NSArray *imgNames = [[NSArray alloc] initWithObjects: @"one.jpg", @"two.jpg", @"three.jpg", nil];
    
    // Setup the array of UIImageViews
    _imgArray = [[NSMutableArray alloc] init];
    UIImageView *tempImageView;
    for(NSString *name in imgNames) {
        tempImageView = [[UIImageView alloc] init];
        tempImageView.contentMode = UIViewContentModeScaleAspectFit;
        tempImageView.image = [UIImage imageNamed:name];
        //button
//        UIButton *showTab=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
//        [showTab addTarget:self action:@selector(goToTabView:) forControlEvents:UIControlEventTouchUpInside];
//        [showTab setBackgroundColor:[UIColor redColor]];
//        [tempImageView addSubview:showTab];
//        [tempImageView setUserInteractionEnabled:YES];
        
        [_imgArray addObject:tempImageView];
        //[tempImageView release];
    }
    
    CGSize pageSize = introGuide.frame.size; // scrollView is an IBOutlet for our UIScrollView
    NSUInteger page = 0;
    for(UIView *view in _imgArray) {
        [introGuide addSubview:view];
        // This is the important line
        view.frame = CGRectMake(pageSize.width * page++ + 10, 0, pageSize.width - 20, pageSize.height);
        // We're making use of the scrollView's frame size (pageSize) so we need to;
        // +10 to left offset of image pos (1/2 the gap)
        // -20 for UIImageView's width (to leave 10 gap at left and right)
    }
    
    introGuide.contentSize = CGSizeMake(pageSize.width * [_imgArray count], pageSize.height);
    
    //   [introGuide scrollRectToVisible:CGRectMake(960, 0, 320, 568) animated:YES ];
    
    [introGuide setContentOffset:CGPointMake(640, 0)];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int page = scrollView.contentOffset.x / scrollView.frame.size.width;
    introGuidePageNumber.currentPage=page;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
