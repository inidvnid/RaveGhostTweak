#import <UIKit/UIKit.h>

%hook RavePlayerController
- (bool)isGhostModeEnabled {
    return true;
}
%end
