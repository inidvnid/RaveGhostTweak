%hook RaveRoomParticipant
- (bool)isHidden {
    return YES;
}
%end

%hook RavePlayer
- (void)sendJoinRequest {
    // منع إرسال إشارة الانضمام للخادم
}
%end
