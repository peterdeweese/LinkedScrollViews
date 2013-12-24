#import <UIKit/UIKit.h>

@interface LinkedScrollViewDelegate : NSObject<UIScrollViewDelegate>

@property(nonatomic, weak) IBOutletCollection(UIScrollView) NSArray *controlledScrollViews;

-(void)scrollViewDidScroll:(UIScrollView*)scrollView; //Updates the contentOffset of all the controlledScrollViews.

@end
