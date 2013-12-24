#import "ScrollViewLinker.h"
#import "UIScrollView+LinkedScrollViews.h"

@implementation ScrollViewLinker
{
    BOOL _isScrolling;
}

-(void)setScrollViews:(NSArray*)scrollViews
{
    if(_scrollViews != scrollViews)
    {
        [self willChangeValueForKey:@"scrollViews"];
        for(id v in _scrollViews)
            [v removeObserver:self forKeyPath:@"contentOffset"];
        _scrollViews = scrollViews;
        for(id v in _scrollViews)
            [v addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
        [self didChangeValueForKey:@"scrollViews"];
    }
}

-(void)observeValueForKeyPath:(NSString*)keyPath ofObject:(id)object change:(NSDictionary*)change context:(void*)context
{
    if(!_isScrolling && [object isKindOfClass:UIScrollView.class] && [keyPath isEqualToString:@"contentOffset"])
    {
        _isScrolling = YES;
        for(UIScrollView *view in self.scrollViews)
            if(view != object)
                view.normalizedContentOffset = [object normalizedContentOffset];
        _isScrolling = NO;
        return;
    }
}

@end
