#import <UIKit/UIKit.h>

// تفعيل ميزات التليجرام المميز (Premium)
%hook TGPresentationUser
- (bool)isPremium { return YES; }
%end

%hook TGUser
- (bool)isPremium { return YES; }
%end

// حفظ الصور الموقوتة ومنع اختفائها
%hook TGMessage
- (bool)isSelfDestructMessage { return NO; }
- (double)selfDestructTime { return 0; }
%end

// منع إرسال إشعار تصوير الشاشة (Screenshot)
%hook TGModernConversationViewContext
- (bool)isScreenshotSelfDestructMethodEnabled { return NO; }
%end

// إخفاء تسجيل الشاشة عن التطبيق
%hook UIWindow
- (void)setScreenRecordingInProgress:(bool)arg1 { %orig(NO); }
%end
