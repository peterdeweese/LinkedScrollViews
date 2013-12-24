#import <UIKit/UIKit.h>

@interface ScrollViewLinker : NSObject

@property(nonatomic, strong) IBOutletCollection(UIScrollView) NSArray *scrollViews;

@end
