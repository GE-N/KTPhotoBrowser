//
//  JEPhotoScrollViewController.m
//  Sample
//
//  Created by True Digial and Media Content on 10/19/54 BE.
//  Copyright (c) 2554 __MyCompanyName__. All rights reserved.
//

#import "JEPhotoScrollViewController.h"

#import "KTThumbsViewController.h"

@implementation JEPhotoScrollViewController

- (void)loadView
{
    [super loadView];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"View all"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self action:@selector(thumbsView:)];
}

- (void)thumbsView:(id)sender
{    
    JEThumbsViewController *thumbsVC = [[JEThumbsViewController alloc] init];
    thumbsVC.dataSource = dataSource_;
    thumbsVC.photoScrollViewVCSender = self;

    startWithIndex_ = currentIndex_;
    
    UINavigationController *thumbsNav = [[UINavigationController alloc] initWithRootViewController:thumbsVC];
    [thumbsNav.navigationBar setBarStyle:UIBarStyleBlackTranslucent];
    
    [self.navigationController presentModalViewController:thumbsNav animated:YES];
}

@end


@implementation JEThumbsViewController

@synthesize photoScrollViewVCSender = photoScrollViewVCSender_;

- (void)loadView
{
    [super loadView];
    
    self.title = @"Photos";
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain
                                                                  target:self action:@selector(thumbsBack:)];
    self.navigationItem.leftBarButtonItem = backButton;
}

- (void)thumbsBack:(id)sender
{
    [self.navigationController dismissModalViewControllerAnimated:YES];
}

- (void)_setSelectedPhotoAtIndex:(NSNumber *)idx
{
    [self.photoScrollViewVCSender scrollToIndex:[idx intValue]];
}

- (void)didSelectThumbAtIndex:(NSUInteger)index 
{   
    [self performSelector:@selector(_setSelectedPhotoAtIndex:) withObject:[NSNumber numberWithUnsignedInteger:index] 
                                       afterDelay:0.314];
    [self thumbsBack:nil];
}


@end