#import <UIKit/UIKit.h>

// تعريف الكلاسات التي سنقوم بتعديلها (هذه أسماء افتراضية شائعة في Rave)
%hook RaveUserPresenceManager

// 1. ميزة التخفي: منع إرسال بيانات حضورك للسيرفر
- (void)sendPresenceUpdate:(id)update {
    // ترك الدالة فارغة يمنع التطبيق من إخبار السيرفر بوجودك
    return;
}

// 2. ميزة إخفاء الاسم من قائمة الروم
- (BOOL)shouldShowInRoomList {
    return NO; 
}

// 3. منع تسجيل الدخول (Anti-Log) لبيانات معينة
- (void)logUserActivity:(id)activity {
    return;
}

%end

// ميزة إضافية: منع كشف تصوير الشاشة
%hook UIScreen
- (BOOL)isCaptured {
    return NO;
}
%end
