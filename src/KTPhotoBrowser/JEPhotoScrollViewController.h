//
//  JEPhotoScrollViewController.h
//  Sample
//
//  Created by True Digial and Media Content on 10/19/54 BE.
//  Copyright (c) 2554 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KTPhotoScrollViewController.h"
#import "KTThumbsViewController.h"

@interface JEPhotoScrollViewController : KTPhotoScrollViewController

- (void)scrollToIndex:(NSInteger)index;
- (void)startChromeDisplayTimer;

@end


@interface JEThumbsViewController : KTThumbsViewController {
    __unsafe_unretained JEPhotoScrollViewController *photoScrollViewVCSender_;
}

@property (assign, nonatomic) JEPhotoScrollViewController *photoScrollViewVCSender;

@end