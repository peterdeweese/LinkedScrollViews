#import <XCTest/XCTest.h>
#import "UIScrollView+ScrollViewLinker.h"

@interface UIScrollView_ScrollViewLinkerTests: XCTestCase
{
    UIScrollView *scrollView;
}
@end

@implementation UIScrollView_ScrollViewLinkerTests

- (void)setUp
{
    [super setUp];
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    scrollView.contentSize = CGSizeMake(300, 300);
}

- (void)testNormalizedContentOffset
{
    XCTAssertTrue(CGPointEqualToPoint(scrollView.normalizedContentOffset, CGPointMake(0, 0)));
    scrollView.contentOffset = CGPointMake(100, 100);
    XCTAssertTrue(CGPointEqualToPoint(scrollView.normalizedContentOffset, CGPointMake(0.5, 0.5)));
    
    scrollView.bounces = YES;
    scrollView.normalizedContentOffset = CGPointMake(-0.1, -0.1);
    XCTAssertTrue(CGPointEqualToPoint(scrollView.normalizedContentOffset, CGPointMake(-0.1, -0.1)), @"view should not allow bounce.");

    scrollView.normalizedContentOffset = CGPointMake(1.1, 1.1);
    XCTAssertTrue(CGPointEqualToPoint(scrollView.normalizedContentOffset, CGPointMake(1.1, 1.1)), @"view should not allow bounce.");
    
    scrollView.bounces = NO;
    scrollView.normalizedContentOffset = CGPointMake(-0.1, -0.1);
    XCTAssertTrue(CGPointEqualToPoint(scrollView.normalizedContentOffset, CGPointMake(0, 0)), @"view should not allow bounce.");

    scrollView.normalizedContentOffset = CGPointMake(1.1, 1.1);
    XCTAssertTrue(CGPointEqualToPoint(scrollView.normalizedContentOffset, CGPointMake(1, 1)), @"view should not allow bounce.");

    
    scrollView.normalizedContentOffset = CGPointMake(0.3, 0.3);
    XCTAssertTrue(CGPointEqualToPoint(scrollView.normalizedContentOffset, CGPointMake(0.3, 0.3)));

    scrollView.normalizedContentOffset = CGPointMake(0.3, 0.6);
    XCTAssertTrue(CGPointEqualToPoint(scrollView.normalizedContentOffset, CGPointMake(0.3, 0.6)));

}

-(void)testNormalizedContentOffsetWithZeroWidth
{
    scrollView.frame = CGRectMake(0, 0, 0, 0);
    XCTAssertTrue(CGPointEqualToPoint(scrollView.normalizedContentOffset, CGPointMake(0, 0)), @"should not return NaN");
}

-(void)testNormalizedContentOffsetX
{
    XCTAssertEqual(scrollView.normalizedContentOffsetX, (CGFloat)0);
    scrollView.contentOffset = CGPointMake(100, 100);
    XCTAssertEqual(scrollView.normalizedContentOffsetX, (CGFloat)0.5);
}

-(void)testNormalizedContentOffsetY
{
    XCTAssertEqual(scrollView.normalizedContentOffsetY, (CGFloat)0);
    scrollView.contentOffset = CGPointMake(100, 100);
    XCTAssertEqual(scrollView.normalizedContentOffsetY, (CGFloat)0.5);
}

@end
