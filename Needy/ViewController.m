//
//  ViewController.m
//  Needy
//
//  Created by Amrut Sabade on 28/12/13.
//  Copyright (c) 2013 Amrut Sabade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize introGuide,introGuidePageNumber;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    NSMutableArray * arrImages=[[NSMutableArray alloc]initWithObjects:@"one.jpg",@"two.jpg",@"three.jpg", nil];
//    for (NSString *temp1 in arrImages) {
//        UIImageView *temp=[[UIImageView alloc]initWithImage:[UIImage imageNamed:temp1]];
//        [introGuide addSubview:temp];
//    }
//    
//    [introGuide setFrame:CGRectMake(0, 10, 320, 480)];
//    [introGuide setContentSize:CGSizeMake(2000, 320)];
//    [introGuide setBackgroundColor:[UIColor redColor]];
    introGuide.delegate=self;
    
     NSArray *imgNames = [[NSArray alloc] initWithObjects: @"one.jpg", @"two.jpg", @"three.jpg", nil];
     
     // Setup the array of UIImageViews
     _imgArray = [[NSMutableArray alloc] init];
     UIImageView *tempImageView;
    
    for (int i=0; i<[imgNames count]; i++) {
        tempImageView = [[UIImageView alloc] init];
        tempImageView.contentMode = UIViewContentModeScaleAspectFit;
        tempImageView.image = [UIImage imageNamed:[imgNames objectAtIndex:i]];
        //button
        if (i==0) {
            UIButton *showTab=[[UIButton alloc]initWithFrame:CGRectMake(100, 400, 100, 75)];
            [showTab addTarget:self action:@selector(goToTabView:) forControlEvents:UIControlEventTouchUpInside];
            [showTab setBackgroundColor:[UIColor greenColor]];
            [tempImageView addSubview:showTab];
            [tempImageView setUserInteractionEnabled:YES];
        }
        else{
            
        }
      
        [_imgArray addObject:tempImageView];
    }
    
    
     for(NSString *name in imgNames) {
     tempImageView = [[UIImageView alloc] init];
     tempImageView.contentMode = UIViewContentModeScaleAspectFit;
     tempImageView.image = [UIImage imageNamed:name];
     //button
         UIButton *showTab=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
         [showTab addTarget:self action:@selector(goToTabView:) forControlEvents:UIControlEventTouchUpInside];
         [showTab setBackgroundColor:[UIColor redColor]];
         [tempImageView addSubview:showTab];
         [tempImageView setUserInteractionEnabled:YES];
         
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

-(IBAction)goToTabView:(id)sender
{
    AppDelegate *app=[[UIApplication sharedApplication]delegate];
    [app addTab];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
# pragma Scrollview Delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    int page = scrollView.contentOffset.x / scrollView.frame.size.width;
    NSLog(@"Scrolling%d",page);
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int page = scrollView.contentOffset.x / scrollView.frame.size.width;
    introGuidePageNumber.currentPage=page;

}
@end
