#import "LinkedScrollViewDelegate.h"
#import "UIScrollView+LinkedScrollViews.h"

@implementation LinkedScrollViewDelegate

-(void)scrollViewDidScroll:(UIScrollView*)scrollView
{
    for(UIScrollView *v in self.controlledScrollViews)
        v.normalizedContentOffset = scrollView.normalizedContentOffset;
}

@end
