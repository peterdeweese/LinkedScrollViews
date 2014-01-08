#import "FirstViewController.h"
#import "UIScrollView+ScrollViewLinker.h"

@implementation FirstViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    for(UIScrollView *v in scrollViewLinker.scrollViews)
        if(v.subviews.count)
            v.contentSize = [v.subviews[0] frame].size;
}

@end
