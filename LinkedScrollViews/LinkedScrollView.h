#import <UIKit/UIKit.h>

@interface LinkedScrollView : UIScrollView

@property(nonatomic, strong) IBOutletCollection(UIScrollView) NSArray *controlledScrollViews;

@end
