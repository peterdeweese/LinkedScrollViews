#import "LinkedScrollView.h"
#import "UIScrollView+LinkedScrollViews.h"

@implementation LinkedScrollView

-(id)initWithCoder:(NSCoder*)aDecoder
{
    if(self = [super initWithCoder:aDecoder])
        [self addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:NULL];
    return self;
}

-(void)observeValueForKeyPath:(NSString*)keyPath ofObject:(id)object change:(NSDictionary*)change context:(void*)context
{
    if([object isKindOfClass:UIScrollView.class] && [keyPath isEqualToString:@"contentOffset"])
    {
        for(UIScrollView *view in self.controlledScrollViews)
            view.normalizedContentOffset = self.normalizedContentOffset;
        return;
    }
    [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
}

-(void)dealloc
{
    [self removeObserver:self forKeyPath:@"contentOffset"];
}

@end
