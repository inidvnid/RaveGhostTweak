#import <Foundation/Foundation.h>

// منع إرسال إشعار الدخول للغرفة
%hook RaveRoomManager
- (void)sendJoinEventWithUser:(id)arg1 {
    // لا تفعل شيئاً - نمنع إرسال البيانات
}
%end

// منع ظهورك في قائمة المشاركين
%hook RaveParticipant
- (BOOL)isVisible {
    return NO;
}
%end

// تفعيل وضع التخفي إذا كان متاحاً في النظام
%hook RaveUser
- (BOOL)isGhostMode {
    return YES;
}
%end
