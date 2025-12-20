#import <UIKit/UIKit.h>

// منع إرسال إشعار عند تصوير الشاشة
%hook TGModernConversationController
- (void)screenShotTaken {
    // لا تفعل شيئاً (يتم تعطيل الإشعار)
}
%end

// السماح بتصوير الصور الموقوتة (Self-destructing photos)
%hook TGSecretCheckerView
- (void)setScreenshotDetected:(bool)arg1 {
    %orig(NO);
}
%end
