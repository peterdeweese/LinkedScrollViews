#import "UIScrollView+LinkedScrollViews.h"

@implementation UIScrollView(LinkedScrollViews)

-(CGPoint)normalizedContentOffset
{
    return CGPointMake(self.normalizedContentOffsetX, self.normalizedContentOffsetY);
}

-(void)setNormalizedContentOffset:(CGPoint)normalizedContentOffset
{
    self.normalizedContentOffsetX = normalizedContentOffset.x;
    self.normalizedContentOffsetY = normalizedContentOffset.y;
}

-(CGFloat)normalizedContentOffsetX
{
    return self.contentOffset.x / self.contentOffsetRangeWidth;
}

-(void)setNormalizedContentOffsetX:(CGFloat)normalizedContentOffsetX
{
    if(!self.bounces)
        normalizedContentOffsetX = MAX(MIN(normalizedContentOffsetX, 1.), 0.);
    if(isnan(normalizedContentOffsetX))
        normalizedContentOffsetX = 0;
    CGFloat result = normalizedContentOffsetX * self.contentOffsetRangeWidth;
    
    // Prevent recursion. Checks within a 100th of a point.
    if(fabs(self.contentOffset.x - result) > 0.01)
        self.contentOffset = CGPointMake(result, self.contentOffset.y);
}

-(CGFloat)normalizedContentOffsetY
{
    return self.contentOffset.y / self.contentOffsetRangeHeight;
}

-(void)setNormalizedContentOffsetY:(CGFloat)normalizedContentOffsetY
{
    if(!self.bounces)
        normalizedContentOffsetY = MAX(MIN(normalizedContentOffsetY, 1.), 0.);
    if(isnan(normalizedContentOffsetY))
        normalizedContentOffsetY = 0;
    CGFloat result = normalizedContentOffsetY * self.contentOffsetRangeHeight;

    // Prevent recursion. Checks within a 100th of a point.
    if(fabs(self.contentOffset.y - result) > 0.01)
        self.contentOffset = CGPointMake(self.contentOffset.x, result);
}

-(CGFloat)contentOffsetRangeWidth
{
    return self.contentSize.width - self.frame.size.width;
}

-(CGFloat)contentOffsetRangeHeight
{
    return self.contentSize.height - self.frame.size.height;
}

@end
