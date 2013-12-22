#import "FirstViewController.h"
#import "UIScrollView+LinkedScrollViews.h"

@implementation FirstViewController

-(id)init
{
    if(self = [super init])
    {
        UIScrollView *view = UIScrollView.new;
        view.normalizedContentOffsetX = 10.;
    }
    return self;
}

@end
