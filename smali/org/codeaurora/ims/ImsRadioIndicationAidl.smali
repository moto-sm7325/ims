.class public Lorg/codeaurora/ims/ImsRadioIndicationAidl;
.super Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;
.source "ImsRadioIndicationAidl.java"


# instance fields
.field private mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

.field private final mLogSuffix:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioIndication;I)V
    .locals 2
    .param p1, "indication"    # Lorg/codeaurora/ims/IImsRadioIndication;
    .param p2, "phoneId"    # I

    .line 65
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 67
    iput p2, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mPhoneId:I

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "bcb53de4a9dfae8a0daf84e64a311c91ba4866ff"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 85
    const/4 v0, 0x3

    return v0
.end method

.method public onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V
    .locals 3
    .param p1, "info"    # Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .line 354
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->callId:I

    .line 355
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v2

    .line 354
    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallComposerInfoAvailable(ILorg/codeaurora/ims/CallComposerInfo;)V

    .line 356
    return-void
.end method

.method public onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V
    .locals 2
    .param p1, "callList"    # [Lvendor/qti/hardware/radio/ims/CallInfo;

    .line 95
    const-string v0, "onCallStateChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 97
    if-nez p1, :cond_0

    .line 98
    const-string v0, "Call list is null."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 99
    return-void

    .line 102
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallImsArray([Lvendor/qti/hardware/radio/ims/CallInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallStateChanged(Ljava/util/List;)V

    .line 104
    return-void
.end method

.method public onConferenceCallStateCompleted()V
    .locals 1

    .line 433
    const-string v0, "onConferenceCallStateCompleted()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onConferenceCallStateCompleted()V

    .line 435
    return-void
.end method

.method public onEmergencyCallBackModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmergencyCallBackModeChanged() ECB mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 167
    const-string v0, "onEmergencyCallBackModeChanged: invalid ECBM"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onEnterEmergencyCallBackMode()V

    .line 164
    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onExitEmergencyCallBackMode()V

    .line 161
    nop

    .line 170
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onGeolocationInfoRequested(DD)V
    .locals 2
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .line 232
    const-string v0, "onGeolocationInfoRequested()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    new-instance v1, Lorg/codeaurora/ims/GeoLocationInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/codeaurora/ims/GeoLocationInfo;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onGeolocationInfoRequested(Lorg/codeaurora/ims/GeoLocationInfo;)V

    .line 234
    return-void
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V
    .locals 2
    .param p1, "handover"    # Lvendor/qti/hardware/radio/ims/HandoverInfo;

    .line 132
    const-string v0, "onHandover()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 133
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;

    move-result-object v0

    .line 134
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onHandover(Lorg/codeaurora/ims/HoInfo;)V

    .line 135
    return-void
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 2
    .param p1, "config"    # Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 238
    const-string v0, "onImsSubConfigChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 239
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v0

    .line 240
    .local v0, "ret":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSubConfigChanged(Lorg/codeaurora/ims/ImsSubConfigDetails;)V

    .line 241
    return-void
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V
    .locals 3
    .param p1, "autoCallRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    .line 380
    const-string v0, "onIncomingCallAutoRejected()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 382
    if-nez p1, :cond_0

    .line 383
    const-string v0, "onIncomingCallAutoRejected: rejectInfo is null. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 384
    return-void

    .line 387
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 388
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingCallAutoRejected :: Call auto rejected from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->logv(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 392
    return-void
.end method

.method public onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V
    .locals 2
    .param p1, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;

    .line 361
    const-string v0, "onIncomingCallComposerCallAutoRejected()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 363
    if-eqz p1, :cond_2

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_1

    .line 369
    const-string v0, "onIncomingCallComposerCallAutoRejected: callComposerInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 370
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    .line 371
    return-void

    .line 374
    :cond_1
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 375
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 376
    return-void

    .line 364
    .end local v0    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_2
    :goto_0
    const-string v0, "onIncomingCallComposerCallAutoRejected: rejectInfo is null. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 3
    .param p1, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 439
    const-string v0, "onIncomingDtmfStart()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingDtmfStart(ILjava/lang/String;)V

    .line 441
    return-void
.end method

.method public onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 3
    .param p1, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 445
    const-string v0, "onIncomingDtmfStop()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingDtmfStop(ILjava/lang/String;)V

    .line 447
    return-void
.end method

.method public onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V
    .locals 2
    .param p1, "imsSms"    # Lvendor/qti/hardware/radio/ims/IncomingSms;

    .line 291
    const-string v0, "onIncomingSms()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 292
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/IncomingSms;->pdu:[B

    if-eqz v0, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/IncomingSms;->format:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)Lorg/codeaurora/ims/sms/IncomingSms;

    move-result-object v0

    .line 297
    .local v0, "newSms":Lorg/codeaurora/ims/sms/IncomingSms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingImsSms(Lorg/codeaurora/ims/sms/IncomingSms;)V

    .line 298
    return-void

    .line 293
    .end local v0    # "newSms":Lorg/codeaurora/ims/sms/IncomingSms;
    :cond_1
    :goto_0
    const-string v0, "pdu or format is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V
    .locals 2
    .param p1, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;

    .line 225
    const-string v0, "onMessageWaiting()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 226
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMessageWaitingIndication(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;

    move-result-object v0

    .line 227
    .local v0, "mwi":Lorg/codeaurora/ims/Mwi;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMessageWaiting(Lorg/codeaurora/ims/Mwi;)V

    .line 228
    return-void
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 1
    .param p1, "wfcRoamingConfigurationSupport"    # Z

    .line 329
    const-string v0, "onModemSupportsWfcRoamingModeConfiguration()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    .line 332
    return-void
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 2
    .param p1, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 207
    const-string v0, "onModifyCall()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 208
    if-nez p1, :cond_0

    .line 209
    const-string v0, "onModifyCall: callModifyInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 210
    return-void

    .line 212
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCallModify(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    .line 213
    .local v0, "ret":Lorg/codeaurora/ims/CallModify;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 214
    return-void
.end method

.method public onMultiIdentityInfoPending()V
    .locals 1

    .line 322
    const-string v0, "onMultiIdentityInfoPending()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityInfoPending()V

    .line 324
    return-void
.end method

.method public onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    .locals 2
    .param p1, "info"    # [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 314
    const-string v0, "onMultiIdentityRegistrationStatusChange()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 315
    nop

    .line 316
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMultiIdentityLineInfoList([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 317
    .local v0, "linesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityRegistrationStatusChange(Ljava/util/List;)V

    .line 318
    return-void
.end method

.method public onMultiSimVoiceCapabilityChanged(I)V
    .locals 2
    .param p1, "voiceCapability"    # I

    .line 451
    const-string v0, "onMultiSimVoiceCapabilityChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMultiSimVoiceCapability(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiSimVoiceCapabilityChanged(I)V

    .line 454
    return-void
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V
    .locals 2
    .param p1, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;

    .line 245
    const-string v0, "onParticipantStatusInfo()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 246
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toParticipantStatus(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;

    move-result-object v0

    .line 247
    .local v0, "ret":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onParticipantStatusInfo(Lorg/codeaurora/ims/ParticipantStatusDetails;)V

    .line 248
    return-void
.end method

.method public onRadioStateChanged(I)V
    .locals 2
    .param p1, "radioState"    # I

    .line 150
    const-string v0, "onRadioStateChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 151
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRadioState(I)Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v0

    .line 152
    .local v0, "outRadioState":Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 153
    return-void
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V
    .locals 2
    .param p1, "conferenceInfo"    # Lvendor/qti/hardware/radio/ims/ConferenceInfo;

    .line 184
    const-string v0, "onRefreshConferenceInfo()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 185
    if-nez p1, :cond_0

    .line 186
    const-string v0, "onRefreshConferenceInfo: Conferenceinfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 187
    return-void

    .line 190
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)Lorg/codeaurora/ims/ConfInfo;

    move-result-object v0

    .line 191
    .local v0, "info":Lorg/codeaurora/ims/ConfInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshConferenceInfo(Lorg/codeaurora/ims/ConfInfo;)V

    .line 192
    return-void
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V
    .locals 2
    .param p1, "viceInfo"    # Lvendor/qti/hardware/radio/ims/ViceInfo;

    .line 196
    const-string v0, "onRefreshViceInfo ()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 197
    if-eqz p1, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/ViceInfo;->viceInfoUri:[B

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toViceUriInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)Lorg/codeaurora/ims/ViceUriInfo;

    move-result-object v0

    .line 202
    .local v0, "info":Lorg/codeaurora/ims/ViceUriInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshViceInfo(Lorg/codeaurora/ims/ViceUriInfo;)V

    .line 203
    return-void

    .line 198
    .end local v0    # "info":Lorg/codeaurora/ims/ViceUriInfo;
    :cond_1
    :goto_0
    const-string v0, "onRefreshViceInfo: Viceinfo or viceinfouri is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V
    .locals 2
    .param p1, "blockStatusInfo"    # Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;

    .line 252
    const-string v0, "onRegistrationBlockStatus()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 253
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    move-result-object v0

    .line 255
    .local v0, "ret":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationBlockStatus(Lorg/codeaurora/ims/RegistrationBlockStatusInfo;)V

    .line 256
    return-void
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 2
    .param p1, "registration"    # Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 125
    const-string v0, "onRegistrationChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 126
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object v0

    .line 127
    .local v0, "regMessage":Lorg/codeaurora/ims/ImsRegistrationInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationChanged(Lorg/codeaurora/ims/ImsRegistrationInfo;)V

    .line 128
    return-void
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 2
    .param p1, "geoLocationDataStatus"    # I

    .line 396
    const-string v0, "onRetrievingGeoLocationDataStatus()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 397
    if-nez p1, :cond_0

    .line 398
    const-string v0, "onRetrievingGeoLocationDataStatus: GeoLocationDataStatus is invalid. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 399
    return-void

    .line 401
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toGeoLocationStatus(I)I

    move-result v0

    .line 402
    .local v0, "ret":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRetrievingGeoLocationDataStatus(I)V

    .line 403
    return-void
.end method

.method public onRing()V
    .locals 1

    .line 108
    const-string v0, "onRing()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRing()V

    .line 110
    return-void
.end method

.method public onRingbackTone(I)V
    .locals 5
    .param p1, "tone"    # I

    .line 114
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 116
    .local v1, "response":[I
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRingbackTone(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRingbackTone() response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 119
    aget v2, v1, v3

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 120
    .local v0, "playtone":Z
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v2, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRingbackTone(Z)V

    .line 121
    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 260
    const-string v0, "onRttMessageReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRttMessageReceived(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public onServiceDomainChanged(I)V
    .locals 2
    .param p1, "domain"    # I

    .line 413
    const-string v0, "onServiceDomainChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 414
    if-nez p1, :cond_0

    .line 415
    const-string v0, "SystemServiceDomain is invalid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 416
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toServiceDomain(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDomainChanged(I)V

    .line 419
    return-void
.end method

.method public onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 3
    .param p1, "srvStatusList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 140
    sget-object v0, Lorg/codeaurora/ims/ImsRadioAidl;->mRepIndLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    const-string v1, "onServiceStatusChanged()"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 142
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Ljava/util/ArrayList;

    move-result-object v1

    .line 143
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v2, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceStatusChanged(Ljava/util/List;)V

    .line 144
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    monitor-exit v0

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSipDtmfReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "configCode"    # Ljava/lang/String;

    .line 407
    const-string v0, "onSipDtmfReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSipDtmfReceived(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 423
    const-string v0, "onSmsCallBackModeChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 424
    if-nez p1, :cond_0

    .line 425
    const-string v0, "SmsCallBackMode is invalid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 426
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSmsCallBackMode(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSmsCallBackModeChanged(I)V

    .line 429
    return-void
.end method

.method public onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V
    .locals 2
    .param p1, "smsStatusReport"    # Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;

    .line 280
    const-string v0, "onSmsSendStatusReport()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 281
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->pdu:[B

    if-nez v0, :cond_0

    .line 282
    const-string v0, "smsStatusReport.pdu is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 283
    return-void

    .line 285
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;

    move-result-object v0

    .line 286
    .local v0, "smsReport":Lorg/codeaurora/ims/sms/StatusReport;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSmsStatusReport(Lorg/codeaurora/ims/sms/StatusReport;)V

    .line 287
    return-void
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V
    .locals 2
    .param p1, "suppServiceNotification"    # Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    .line 218
    const-string v0, "onSuppServiceNotification()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 219
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSuppNotifyInfo(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;

    move-result-object v0

    .line 220
    .local v0, "suppNotifyInfo":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onSuppServiceNotification(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    .line 221
    return-void
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V
    .locals 2
    .param p1, "ss"    # Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;

    .line 273
    const-string v0, "onSupplementaryServiceIndication()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 274
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsSsData(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)Landroid/telephony/ims/ImsSsData;

    move-result-object v0

    .line 275
    .local v0, "ssData":Landroid/telephony/ims/ImsSsData;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 276
    return-void
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V
    .locals 4
    .param p1, "ttyInfo"    # Lvendor/qti/hardware/radio/ims/TtyInfo;

    .line 174
    const-string v0, "onTtyNotification ()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 175
    if-nez p1, :cond_0

    .line 176
    const-string v0, "onTtyNotification: ttyInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 177
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p1, Lvendor/qti/hardware/radio/ims/TtyInfo;->mode:I

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toTtyMode(I)I

    move-result v3

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onTtyNotification([I)V

    .line 180
    return-void
.end method

.method public onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 336
    const-string v0, "onUssdMessageFailed()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 337
    if-nez p1, :cond_0

    .line 338
    const-string v0, "UssMode type is invalid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 339
    return-void

    .line 341
    :cond_0
    const-string v0, ""

    invoke-static {p1, v0, p2}, Lorg/codeaurora/ims/StableAidl;->toUssdInfo(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object v0

    .line 342
    .local v0, "ussdInfo":Lorg/codeaurora/ims/UssdInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdMessageFailed(Lorg/codeaurora/ims/UssdInfo;)V

    .line 343
    return-void
.end method

.method public onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 347
    const-string v0, "onUssdReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 348
    invoke-static {p1, p2, p3}, Lorg/codeaurora/ims/StableAidl;->toUssdInfo(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object v0

    .line 349
    .local v0, "ussdInfo":Lorg/codeaurora/ims/UssdInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdReceived(Lorg/codeaurora/ims/UssdInfo;)V

    .line 350
    return-void
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 2
    .param p1, "voWiFiCallQuality"    # I

    .line 266
    const-string v0, "onVoWiFiCallQuality()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 267
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toVoWiFiQuality(I)[I

    move-result-object v0

    .line 268
    .local v0, "ret":[I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoWiFiCallQuality([I)V

    .line 269
    return-void
.end method

.method public onVoiceInfoChanged(I)V
    .locals 2
    .param p1, "voiceInfo"    # I

    .line 308
    const-string v0, "onVoiceInfoChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toVoiceInfo(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoiceInfoChanged(I)V

    .line 310
    return-void
.end method

.method public onVopsChanged(Z)V
    .locals 1
    .param p1, "isVopsEnabled"    # Z

    .line 302
    const-string v0, "onVopsChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVopsChanged(Z)V

    .line 304
    return-void
.end method
