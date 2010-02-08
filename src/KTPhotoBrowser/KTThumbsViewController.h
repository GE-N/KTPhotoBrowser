//
//  WPSThumbsViewController.h
//  HelloBaby
//
//  Created by Kirby Turner on 2/3/10.
//  Copyright 2010 White Peak Software Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KTPhotoBrowserDataSource.h"
#import "KTThumbView.h"


@interface KTThumbsViewController : UIViewController <KTThumbViewDelegate> {
   id <KTPhotoBrowserDataSource> dataSource_;
   UIScrollView *scrollView_;
}

@property (nonatomic, assign) id <KTPhotoBrowserDataSource> dataSource;

- (void)loadPhotos;

@end