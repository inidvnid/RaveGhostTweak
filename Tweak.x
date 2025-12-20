#import <UIKit/UIKit.h>

%hook RaveConnection
- (void)sendPacket:(id)packet {
    // إذا كان الباكيت يحتوي على معلومات الانضمام، لا ترسله
    if ([packet containsString:@"join_room"]) {
        return;
    }
    %orig;
}
%end

%hook RaveRoom
- (void)updateParticipants {
    // منع تحديث قائمتك لكي لا يراك النظام
    return;
}
%end
