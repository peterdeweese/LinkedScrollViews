#import <UIKit/UIKit.h>
#import "UIScrollView+ScrollViewLinker.h"

@interface ScrollViewLinker : NSObject

@property(nonatomic, strong) IBOutletCollection(UIScrollView) NSArray *scrollViews;

@end
