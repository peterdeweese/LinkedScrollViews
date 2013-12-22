#import <XCTest/XCTest.h>
#import "UIScrollView+LinkedScrollViews.h"

@interface UIScrollView_LinkedScrollViewsTests : XCTestCase
{
    UIScrollView *scrollView;
}
@end

@implementation UIScrollView_LinkedScrollViewsTests

- (void)setUp
{
    [super setUp];
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    scrollView.contentSize = CGSizeMake(300, 300);
}

- (void)testNormalizedContentOffset
{
    XCTAssertEqual(scrollView.normalizedContentOffset, CGPointMake(0, 0));
    scrollView.contentOffset = CGPointMake(100, 100);
    XCTAssertEqual(scrollView.normalizedContentOffset, CGPointMake(0.5, 0.5));
}

- (void)testNormalizedContentOffsetX
{
    XCTAssertEqual(scrollView.normalizedContentOffsetX, (CGFloat)0);
    scrollView.contentOffset = CGPointMake(100, 100);
    XCTAssertEqual(scrollView.normalizedContentOffsetX, (CGFloat)0.5);
}

- (void)testNormalizedContentOffsetY
{
    XCTAssertEqual(scrollView.normalizedContentOffsetY, (CGFloat)0);
    scrollView.contentOffset = CGPointMake(100, 100);
    XCTAssertEqual(scrollView.normalizedContentOffsetY, (CGFloat)0.5);
}

@end
