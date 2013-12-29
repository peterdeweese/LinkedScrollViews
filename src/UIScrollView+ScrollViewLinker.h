#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIScrollView(ScrollViewLinker)

@property(nonatomic, assign) CGPoint normalizedContentOffset;  //0 to 1
@property(nonatomic, assign) CGFloat normalizedContentOffsetX; //0 is far left. 1 is far right.
@property(nonatomic, assign) CGFloat normalizedContentOffsetY; //0 is the top. 1 is the bottom.

@end
