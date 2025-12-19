#import <UIKit/UIKit.h>

%hook RavePlayerController
- (bool)isGhostModeEnabled {
    return YES;
}
%end
