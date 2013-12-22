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
    self.contentOffset = CGPointMake(self.normalizedContentOffset.x * self.contentOffsetRangeWidth, self.contentOffset.y);
}

-(CGFloat)normalizedContentOffsetY
{
    return self.contentOffset.y / self.contentOffsetRangeHeight;
}

-(void)setNormalizedContentOffsetY:(CGFloat)normalizedContentOffsetY
{
    self.contentOffset = CGPointMake(self.contentOffset.x, self.normalizedContentOffset.y * self.contentOffsetRangeHeight);
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
