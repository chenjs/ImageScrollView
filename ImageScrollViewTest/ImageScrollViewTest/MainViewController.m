//
//  ViewController.m
//  ImageScrollViewTest
//
//  Created by chenjs on 12-11-19.
//  Copyright (c) 2012年 HelloTom. All rights reserved.
//

#import "MainViewController.h"
#import "../../ImageScrollViewController/ImageScrollViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) ImageScrollViewController *imageScrollViewController;

@end

@implementation MainViewController
@synthesize imageScrollViewController = _imageScrollViewController;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageScrollViewController = [[ImageScrollViewController alloc] init];
    self.imageScrollViewController.image = [UIImage imageNamed:@"xiling.jpg"];
    self.imageScrollViewController.view.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    //self.imageScrollViewController.view.frame = CGRectMake(0, 0, 320, 480);
    [self.view addSubview:self.imageScrollViewController.view];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return [self.imageScrollViewController shouldAutorotateToInterfaceOrientation:interfaceOrientation];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
    [self.imageScrollViewController willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    
    [self.imageScrollViewController didRotateFromInterfaceOrientation:fromInterfaceOrientation];
}

@end
