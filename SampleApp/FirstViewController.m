#import "FirstViewController.h"
#import "UIScrollView+LinkedScrollViews.h"

@implementation FirstViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    linkedScrollView.contentSize = [linkedScrollView.subviews[0] frame].size;
    for(UIScrollView *v in linkedScrollView.controlledScrollViews)
        v.contentSize = [v.subviews[0] frame].size;
}

@end
