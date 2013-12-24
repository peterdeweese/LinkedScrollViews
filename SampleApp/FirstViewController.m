#import "FirstViewController.h"
#import "UIScrollView+LinkedScrollViews.h"

@implementation FirstViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    for(UIScrollView *v in scrollViewLinker.scrollViews)
        v.contentSize = [v.subviews[0] frame].size;
}

@end
