.class Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRadioIndication"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 2858
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallComposerInfoAvailable(ILorg/codeaurora/ims/CallComposerInfo;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "callComposerInfo"    # Lorg/codeaurora/ims/CallComposerInfo;

    .line 3239
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xea

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3240
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    new-instance v2, Lorg/codeaurora/ims/PreAlertingCallInfo;

    invoke-direct {v2, p1, p2}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;)V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3242
    return-void
.end method

.method public onCallStateChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 2875
    .local p1, "driverCallImsList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2876
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fputmIsUnsolCallListPresent(Lorg/codeaurora/ims/ImsSenderRxr;Z)V

    .line 2877
    const/4 v0, 0x0

    .line 2878
    .local v0, "numOfActiveCalls":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2880
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/DriverCallIms;

    .line 2885
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 2886
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Forbidden. Not Authorized for Service"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2888
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I

    move-result v3

    .line 2889
    .local v3, "subId":I
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Throwing ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION intent for subId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2891
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.internal.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2893
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2895
    const-string v5, "service_name"

    const-string v6, "motorola.telephony.extra.IMS_CALLING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2898
    const/high16 v5, 0x20000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2899
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v5, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2901
    .end local v3    # "subId":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v3, v2, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v3, :cond_1

    .line 2902
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v3}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 2903
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v4, "InCall VoicePrivacy is enabled"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2905
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mVoicePrivacyOffRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v3}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 2906
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v4, "InCall VoicePrivacy is disabled"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2909
    :goto_1
    iget-object v3, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v3, v4, :cond_2

    .line 2910
    add-int/lit8 v0, v0, 0x1

    .line 2913
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_2
    goto/16 :goto_0

    .line 2914
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2916
    new-instance v1, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;)V

    .line 2917
    .local v1, "motoExtTM":Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    if-nez v0, :cond_4

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v2

    .line 2918
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getAndResetInTestEmergencyCall(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2919
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v2, :cond_4

    .line 2920
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const-string v3, "onCallStateChanged: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 2922
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    invoke-virtual {v2}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant()V

    .line 2926
    :cond_4
    return-void
.end method

.method public onCiWlanNotification(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 3328
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3329
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmCiWlanNotificationRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3330
    return-void
.end method

.method public onConferenceCallStateCompleted()V
    .locals 3

    .line 3279
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3280
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmConferenceCallStateCompletedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3281
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmConferenceCallStateCompletedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3284
    :cond_0
    return-void
.end method

.method public onEnterEmergencyCallBackMode()V
    .locals 2

    .line 3004
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 3006
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 3007
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant()V

    .line 3009
    :cond_0
    return-void
.end method

.method public onExitEmergencyCallBackMode()V
    .locals 3

    .line 3013
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 3015
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3019
    :cond_0
    return-void
.end method

.method public onGeolocationInfoRequested(Lorg/codeaurora/ims/GeoLocationInfo;)V
    .locals 3
    .param p1, "geoLocationInfo"    # Lorg/codeaurora/ims/GeoLocationInfo;

    .line 3083
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3084
    if-nez p1, :cond_0

    .line 3085
    const-string v0, "onGeolocationInfoRequested: Null location data!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3086
    return-void

    .line 3088
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmGeolocationRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3090
    return-void
.end method

.method public onHandover(Lorg/codeaurora/ims/HoInfo;)V
    .locals 3
    .param p1, "hoInfo"    # Lorg/codeaurora/ims/HoInfo;

    .line 2975
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd0

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2976
    if-nez p1, :cond_0

    .line 2977
    const-string v0, "onHandover: hoInfo is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2978
    return-void

    .line 2980
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmHandoverStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2983
    return-void
.end method

.method public onImsSmsStatusReport(Lorg/codeaurora/ims/sms/StatusReport;)V
    .locals 3
    .param p1, "smsStatusReport"    # Lorg/codeaurora/ims/sms/StatusReport;

    .line 2930
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 2932
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSendSmsStatusReportRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2933
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSendSmsStatusReportRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2936
    :cond_0
    return-void
.end method

.method public onImsSubConfigChanged(Lorg/codeaurora/ims/ImsSubConfigDetails;)V
    .locals 3
    .param p1, "configDetails"    # Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 3107
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xdd

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3109
    if-nez p1, :cond_0

    .line 3110
    const-string v0, "onImsSubConfigChanged: Data is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3111
    return-void

    .line 3114
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmImsSubConfigChangeRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3115
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3116
    return-void
.end method

.method public onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3
    .param p1, "driverCallIms"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 3094
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3095
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getIsDcCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3096
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe3

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    goto :goto_0

    .line 3097
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getIsDcCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3098
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    goto :goto_0

    .line 3101
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf5

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3102
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmAutoRejectRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3103
    return-void
.end method

.method public onIncomingDtmfStart(ILjava/lang/String;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "dtmf"    # Ljava/lang/String;

    .line 3288
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf1

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3289
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 3290
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 3291
    iput-object p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3292
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingDtmfStartRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3293
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingDtmfStartRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v1

    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3296
    :cond_0
    return-void
.end method

.method public onIncomingDtmfStop(ILjava/lang/String;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "dtmf"    # Ljava/lang/String;

    .line 3300
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf2

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3301
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 3302
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 3303
    iput-object p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 3304
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingDtmfStopRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3305
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingDtmfStopRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v1

    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3308
    :cond_0
    return-void
.end method

.method public onIncomingImsSms(Lorg/codeaurora/ims/sms/IncomingSms;)V
    .locals 3
    .param p1, "imsSms"    # Lorg/codeaurora/ims/sms/IncomingSms;

    .line 2940
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe2

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 2942
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingSmsRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2943
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmIncomingSmsRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2945
    :cond_0
    return-void
.end method

.method public onMessageWaiting(Lorg/codeaurora/ims/Mwi;)V
    .locals 3
    .param p1, "mwiIndication"    # Lorg/codeaurora/ims/Mwi;

    .line 3071
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3073
    if-nez p1, :cond_0

    .line 3074
    const-string v0, "onMessageWaiting: Data is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3075
    return-void

    .line 3078
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3079
    return-void
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 4
    .param p1, "wfcRoamingConfigurationSupport"    # Z

    .line 3212
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 3213
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3212
    const/16 v2, 0xe7

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3214
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fputmWfcRoamingConfigurationSupport(Lorg/codeaurora/ims/ImsSenderRxr;Z)V

    .line 3215
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmWfcRoamingModeConfigRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3216
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmWfcRoamingModeConfigRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3217
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3220
    :cond_0
    return-void
.end method

.method public onModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "callModifyInfo"    # Lorg/codeaurora/ims/CallModify;

    .line 3055
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3056
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3057
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3058
    return-void
.end method

.method public onMultiIdentityInfoPending()V
    .locals 3

    .line 3204
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3205
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmMultiIdentityInfoPendingRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3207
    return-void
.end method

.method public onMultiIdentityRegistrationStatusChange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .line 3197
    .local p1, "linesInfo":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe5

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3198
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmMultiIdentityStatusChangeRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3200
    return-void
.end method

.method public onMultiSimVoiceCapabilityChanged(I)V
    .locals 4
    .param p1, "voiceCapability"    # I

    .line 3312
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3314
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmMultiSimVoiceCapabilityChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3315
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmMultiSimVoiceCapabilityChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3316
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3318
    :cond_0
    return-void
.end method

.method public onParticipantStatusInfo(Lorg/codeaurora/ims/ParticipantStatusDetails;)V
    .locals 3
    .param p1, "participantStatusInfo"    # Lorg/codeaurora/ims/ParticipantStatusDetails;

    .line 3121
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xdc

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3122
    if-nez p1, :cond_0

    .line 3123
    const-string v0, "onParticipantStatusInfo: Participant status info is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3124
    return-void

    .line 3126
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmParticipantStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3127
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3128
    return-void
.end method

.method public onPreAlertingCallInfoAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/codeaurora/ims/PreAlertingCallInfo;

    .line 3322
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf4

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3323
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3324
    return-void
.end method

.method public onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    .locals 2
    .param p1, "radioState"    # Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 2997
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2999
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 3000
    return-void
.end method

.method public onRefreshConferenceInfo(Lorg/codeaurora/ims/ConfInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/codeaurora/ims/ConfInfo;

    .line 3031
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd1

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3032
    if-nez p1, :cond_0

    .line 3033
    const-string v0, "onRefreshConferenceInfo: Data is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3034
    return-void

    .line 3036
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmRefreshConfInfoRegistrations(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3039
    return-void
.end method

.method public onRefreshViceInfo(Lorg/codeaurora/ims/ViceUriInfo;)V
    .locals 3
    .param p1, "viceInfo"    # Lorg/codeaurora/ims/ViceUriInfo;

    .line 3043
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3044
    if-nez p1, :cond_0

    .line 3045
    const-string v0, "onRefreshViceInfo: Data is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3046
    return-void

    .line 3048
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshViceInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3049
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3051
    return-void
.end method

.method public onRegistrationBlockStatus(Lorg/codeaurora/ims/RegistrationBlockStatusInfo;)V
    .locals 3
    .param p1, "registrationBlockStatusInfo"    # Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    .line 3133
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xde

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3136
    if-nez p1, :cond_0

    .line 3137
    const-string v0, "onRegistrationBlockStatus: Data is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3138
    return-void

    .line 3141
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmRegistrationBlockStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3143
    return-void
.end method

.method public onRegistrationChanged(Lorg/codeaurora/ims/ImsRegistrationInfo;)V
    .locals 3
    .param p1, "registrationInfo"    # Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 2967
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLog(I)V

    .line 2969
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsNetworkStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2971
    return-void
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 4
    .param p1, "geoLocationDataStatus"    # I

    .line 3246
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xeb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3247
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmGeoLocationDataStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3248
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmGeoLocationDataStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3248
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3251
    :cond_0
    return-void
.end method

.method public onRing()V
    .locals 3

    .line 2949
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2951
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 2952
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2954
    :cond_0
    return-void
.end method

.method public onRingbackTone(Z)V
    .locals 4
    .param p1, "tone"    # Z

    .line 2958
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xcb

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2960
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 2961
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2963
    :cond_0
    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 3147
    if-nez p1, :cond_0

    .line 3148
    const-string v0, "onRttMessageReceived: msg is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3149
    return-void

    .line 3152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRttMessageReceived: msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3153
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xdf

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3154
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmRttMessageRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3155
    return-void
.end method

.method public onServiceDomainChanged(I)V
    .locals 4
    .param p1, "domain"    # I

    .line 3261
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xee

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3262
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSrvDomainChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSrvDomainChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3263
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3266
    :cond_0
    return-void
.end method

.method public onServiceDown()V
    .locals 3

    .line 2868
    const-string v0, "onServiceDown: HAL Service not available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2869
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    sget-object v1, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mnotifyServiceDown(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V

    .line 2870
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mclearRequestsList(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V

    .line 2871
    return-void
.end method

.method public onServiceStatusChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .line 2987
    .local p1, "srvStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 2989
    if-eqz p1, :cond_0

    .line 2990
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSrvStatusRegistrations(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2993
    :cond_0
    return-void
.end method

.method public onServiceUp()V
    .locals 3

    .line 2862
    const-string v0, "onServiceUp: HAL Service available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2863
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    sget-object v1, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mnotifyServiceUp(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V

    .line 2864
    return-void
.end method

.method public onSipDtmfReceived(Ljava/lang/String;)V
    .locals 2
    .param p1, "configCode"    # Ljava/lang/String;

    .line 3255
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xed

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mnotifySipDtmfInfo(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V

    .line 3257
    return-void
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 3270
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3271
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSmsCallbackModeChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3272
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSmsCallbackModeChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3272
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3275
    :cond_0
    return-void
.end method

.method public onSrtpEncryptionInfo(II)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "category"    # I

    .line 3334
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xf7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3335
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 3336
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 3337
    iput p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 3338
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSrtpEncryptionUpdateRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3339
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmSrtpEncryptionUpdateRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v1

    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3342
    :cond_0
    return-void
.end method

.method public onSsacStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V
    .locals 2
    .param p1, "ssacInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    .line 3353
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xdb

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3354
    return-void
.end method

.method public onSuppServiceNotification(Lorg/codeaurora/ims/SuppNotifyInfo;)V
    .locals 3
    .param p1, "suppServiceNotifInfo"    # Lorg/codeaurora/ims/SuppNotifyInfo;

    .line 3062
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3064
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 3065
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3067
    :cond_0
    return-void
.end method

.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 3
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 3175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe0

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3176
    if-nez p1, :cond_0

    .line 3177
    const-string v0, "onSupplementaryServiceIndication : Data is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3178
    return-void

    .line 3181
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_1

    .line 3182
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3184
    :cond_1
    return-void
.end method

.method public onTtyNotification([I)V
    .locals 3
    .param p1, "mode"    # [I

    .line 3023
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3024
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmTtyStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3025
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmTtyStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3027
    :cond_0
    return-void
.end method

.method public onUssdMessageFailed(Lorg/codeaurora/ims/UssdInfo;)V
    .locals 3
    .param p1, "ussdInfo"    # Lorg/codeaurora/ims/UssdInfo;

    .line 3224
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3225
    new-instance v0, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {p1}, Lorg/codeaurora/ims/UssdInfo;->getErrorCode()I

    move-result v1

    .line 3226
    invoke-virtual {p1}, Lorg/codeaurora/ims/UssdInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    .line 3227
    .local v0, "ex":Lorg/codeaurora/ims/ImsRilException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mnotifyUssdInfo(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V

    .line 3228
    return-void
.end method

.method public onUssdReceived(Lorg/codeaurora/ims/UssdInfo;)V
    .locals 2
    .param p1, "ussdInfo"    # Lorg/codeaurora/ims/UssdInfo;

    .line 3232
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xec

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3233
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mnotifyUssdInfo(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V

    .line 3234
    return-void
.end method

.method public onVoWiFiCallQuality([I)V
    .locals 3
    .param p1, "voWiFiCallQuality"    # [I

    .line 3166
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3167
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmVoWiFiCallQualityRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3168
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmVoWiFiCallQualityRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3171
    :cond_0
    return-void
.end method

.method public onVoiceInfoChanged(I)V
    .locals 4
    .param p1, "voiceInfo"    # I

    .line 3159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVoiceInfoChanged: VoiceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3160
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xe4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3161
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmVoiceInfoStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3162
    return-void
.end method

.method public onVopsChanged(Z)V
    .locals 4
    .param p1, "isVopsEnabled"    # Z

    .line 3188
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xda

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmVopsRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3190
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmVopsRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 3192
    :cond_0
    return-void
.end method

.method public onVopsStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V
    .locals 2
    .param p1, "vopsInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    .line 3348
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v1, 0xda

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->unsljLogRet(ILjava/lang/Object;)V

    .line 3349
    return-void
.end method
