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

    .line 67
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 69
    iput p2, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mPhoneId:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "1c9870a51c575f38c440c1938fe44e84c19ccf4d"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 87
    const/16 v0, 0x9

    return v0
.end method

.method public onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V
    .locals 3
    .param p1, "info"    # Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .line 356
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->callId:I

    .line 357
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v2

    .line 356
    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallComposerInfoAvailable(ILorg/codeaurora/ims/CallComposerInfo;)V

    .line 358
    return-void
.end method

.method public onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V
    .locals 2
    .param p1, "callList"    # [Lvendor/qti/hardware/radio/ims/CallInfo;

    .line 97
    const-string v0, "onCallStateChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 99
    if-nez p1, :cond_0

    .line 100
    const-string v0, "Call list is null."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 101
    return-void

    .line 104
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallImsArray([Lvendor/qti/hardware/radio/ims/CallInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallStateChanged(Ljava/util/List;)V

    .line 106
    return-void
.end method

.method public onCiWlanNotification(I)V
    .locals 2
    .param p1, "type"    # I

    .line 493
    const-string v0, "onCiWlanNotification()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCiWlanNotification(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onCiWlanNotification(Z)V

    .line 495
    return-void
.end method

.method public onConferenceCallStateCompleted()V
    .locals 1

    .line 435
    const-string v0, "onConferenceCallStateCompleted()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onConferenceCallStateCompleted()V

    .line 437
    return-void
.end method

.method public onEmergencyCallBackModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmergencyCallBackModeChanged() ECB mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 160
    packed-switch p1, :pswitch_data_0

    .line 169
    const-string v0, "onEmergencyCallBackModeChanged: invalid ECBM"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onEnterEmergencyCallBackMode()V

    .line 166
    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onExitEmergencyCallBackMode()V

    .line 163
    nop

    .line 172
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

    .line 234
    const-string v0, "onGeolocationInfoRequested()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    new-instance v1, Lorg/codeaurora/ims/GeoLocationInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/codeaurora/ims/GeoLocationInfo;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onGeolocationInfoRequested(Lorg/codeaurora/ims/GeoLocationInfo;)V

    .line 236
    return-void
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V
    .locals 2
    .param p1, "handover"    # Lvendor/qti/hardware/radio/ims/HandoverInfo;

    .line 134
    const-string v0, "onHandover()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;

    move-result-object v0

    .line 136
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onHandover(Lorg/codeaurora/ims/HoInfo;)V

    .line 137
    return-void
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 2
    .param p1, "config"    # Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 240
    const-string v0, "onImsSubConfigChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 241
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v0

    .line 242
    .local v0, "ret":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSubConfigChanged(Lorg/codeaurora/ims/ImsSubConfigDetails;)V

    .line 243
    return-void
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V
    .locals 3
    .param p1, "autoCallRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    .line 382
    const-string v0, "onIncomingCallAutoRejected()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 384
    if-nez p1, :cond_0

    .line 385
    const-string v0, "onIncomingCallAutoRejected: rejectInfo is null. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 386
    return-void

    .line 389
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 390
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingCallAutoRejected :: Call auto rejected from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->logv(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 394
    return-void
.end method

.method public onIncomingCallAutoRejected2(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)V
    .locals 2
    .param p1, "autoCallRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;

    .line 472
    const-string v0, "onIncomingCallAutoRejected2()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 474
    if-eqz p1, :cond_2

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->isDcCall:Z

    if-nez v0, :cond_1

    .line 482
    const-string v0, "onIncomingCallAutoRejected2: callComposerInfo and ecnamInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 483
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    .line 484
    return-void

    .line 487
    :cond_1
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 488
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 489
    return-void

    .line 475
    .end local v0    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_2
    :goto_0
    const-string v0, "onIncomingCallAutoRejected2: rejectInfo is null. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V
    .locals 2
    .param p1, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;

    .line 363
    const-string v0, "onIncomingCallComposerCallAutoRejected()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 365
    if-eqz p1, :cond_2

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_1

    .line 371
    const-string v0, "onIncomingCallComposerCallAutoRejected: callComposerInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 372
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    .line 373
    return-void

    .line 376
    :cond_1
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 377
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 378
    return-void

    .line 366
    .end local v0    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_2
    :goto_0
    const-string v0, "onIncomingCallComposerCallAutoRejected: rejectInfo is null. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 3
    .param p1, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 441
    const-string v0, "onIncomingDtmfStart()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingDtmfStart(ILjava/lang/String;)V

    .line 443
    return-void
.end method

.method public onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 3
    .param p1, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 447
    const-string v0, "onIncomingDtmfStop()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingDtmfStop(ILjava/lang/String;)V

    .line 449
    return-void
.end method

.method public onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V
    .locals 2
    .param p1, "imsSms"    # Lvendor/qti/hardware/radio/ims/IncomingSms;

    .line 293
    const-string v0, "onIncomingSms()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 294
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/IncomingSms;->pdu:[B

    if-eqz v0, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/IncomingSms;->format:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)Lorg/codeaurora/ims/sms/IncomingSms;

    move-result-object v0

    .line 299
    .local v0, "newSms":Lorg/codeaurora/ims/sms/IncomingSms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingImsSms(Lorg/codeaurora/ims/sms/IncomingSms;)V

    .line 300
    return-void

    .line 295
    .end local v0    # "newSms":Lorg/codeaurora/ims/sms/IncomingSms;
    :cond_1
    :goto_0
    const-string v0, "pdu or format is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V
    .locals 2
    .param p1, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;

    .line 227
    const-string v0, "onMessageWaiting()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 228
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMessageWaitingIndication(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;

    move-result-object v0

    .line 229
    .local v0, "mwi":Lorg/codeaurora/ims/Mwi;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMessageWaiting(Lorg/codeaurora/ims/Mwi;)V

    .line 230
    return-void
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 1
    .param p1, "wfcRoamingConfigurationSupport"    # Z

    .line 331
    const-string v0, "onModemSupportsWfcRoamingModeConfiguration()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    .line 334
    return-void
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 2
    .param p1, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 209
    const-string v0, "onModifyCall()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 210
    if-nez p1, :cond_0

    .line 211
    const-string v0, "onModifyCall: callModifyInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 212
    return-void

    .line 214
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCallModify(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    .line 215
    .local v0, "ret":Lorg/codeaurora/ims/CallModify;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 216
    return-void
.end method

.method public onMultiIdentityInfoPending()V
    .locals 1

    .line 324
    const-string v0, "onMultiIdentityInfoPending()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityInfoPending()V

    .line 326
    return-void
.end method

.method public onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    .locals 2
    .param p1, "info"    # [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 316
    const-string v0, "onMultiIdentityRegistrationStatusChange()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 317
    nop

    .line 318
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMultiIdentityLineInfoList([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 319
    .local v0, "linesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityRegistrationStatusChange(Ljava/util/List;)V

    .line 320
    return-void
.end method

.method public onMultiSimVoiceCapabilityChanged(I)V
    .locals 2
    .param p1, "voiceCapability"    # I

    .line 453
    const-string v0, "onMultiSimVoiceCapabilityChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMultiSimVoiceCapability(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiSimVoiceCapabilityChanged(I)V

    .line 456
    return-void
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V
    .locals 2
    .param p1, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;

    .line 247
    const-string v0, "onParticipantStatusInfo()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 248
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toParticipantStatus(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;

    move-result-object v0

    .line 249
    .local v0, "ret":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onParticipantStatusInfo(Lorg/codeaurora/ims/ParticipantStatusDetails;)V

    .line 250
    return-void
.end method

.method public onPreAlertingCallInfoAvailable(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)V
    .locals 2
    .param p1, "info"    # Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;

    .line 460
    const-string v0, "onPreAlertingCallInfoAvailable()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 462
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->isDcCall:Z

    if-nez v0, :cond_0

    .line 463
    const-string v0, "onPreAlertingCallInfoAvailable: callComposerInfo and ecnamInfo is null and isDcCall is false "

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 465
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toPreAlertingInfo(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)Lorg/codeaurora/ims/PreAlertingCallInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onPreAlertingCallInfoAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V

    .line 468
    return-void
.end method

.method public onRadioStateChanged(I)V
    .locals 2
    .param p1, "radioState"    # I

    .line 152
    const-string v0, "onRadioStateChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 153
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRadioState(I)Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v0

    .line 154
    .local v0, "outRadioState":Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 155
    return-void
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V
    .locals 2
    .param p1, "conferenceInfo"    # Lvendor/qti/hardware/radio/ims/ConferenceInfo;

    .line 186
    const-string v0, "onRefreshConferenceInfo()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 187
    if-nez p1, :cond_0

    .line 188
    const-string v0, "onRefreshConferenceInfo: Conferenceinfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 189
    return-void

    .line 192
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)Lorg/codeaurora/ims/ConfInfo;

    move-result-object v0

    .line 193
    .local v0, "info":Lorg/codeaurora/ims/ConfInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshConferenceInfo(Lorg/codeaurora/ims/ConfInfo;)V

    .line 194
    return-void
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V
    .locals 2
    .param p1, "viceInfo"    # Lvendor/qti/hardware/radio/ims/ViceInfo;

    .line 198
    const-string v0, "onRefreshViceInfo ()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 199
    if-eqz p1, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/ViceInfo;->viceInfoUri:[B

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toViceUriInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)Lorg/codeaurora/ims/ViceUriInfo;

    move-result-object v0

    .line 204
    .local v0, "info":Lorg/codeaurora/ims/ViceUriInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshViceInfo(Lorg/codeaurora/ims/ViceUriInfo;)V

    .line 205
    return-void

    .line 200
    .end local v0    # "info":Lorg/codeaurora/ims/ViceUriInfo;
    :cond_1
    :goto_0
    const-string v0, "onRefreshViceInfo: Viceinfo or viceinfouri is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V
    .locals 2
    .param p1, "blockStatusInfo"    # Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;

    .line 254
    const-string v0, "onRegistrationBlockStatus()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 255
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    move-result-object v0

    .line 257
    .local v0, "ret":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationBlockStatus(Lorg/codeaurora/ims/RegistrationBlockStatusInfo;)V

    .line 258
    return-void
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 2
    .param p1, "registration"    # Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 127
    const-string v0, "onRegistrationChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object v0

    .line 129
    .local v0, "regMessage":Lorg/codeaurora/ims/ImsRegistrationInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationChanged(Lorg/codeaurora/ims/ImsRegistrationInfo;)V

    .line 130
    return-void
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 2
    .param p1, "geoLocationDataStatus"    # I

    .line 398
    const-string v0, "onRetrievingGeoLocationDataStatus()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 399
    if-nez p1, :cond_0

    .line 400
    const-string v0, "onRetrievingGeoLocationDataStatus: GeoLocationDataStatus is invalid. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 401
    return-void

    .line 403
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toGeoLocationStatus(I)I

    move-result v0

    .line 404
    .local v0, "ret":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRetrievingGeoLocationDataStatus(I)V

    .line 405
    return-void
.end method

.method public onRing()V
    .locals 1

    .line 110
    const-string v0, "onRing()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRing()V

    .line 112
    return-void
.end method

.method public onRingbackTone(I)V
    .locals 5
    .param p1, "tone"    # I

    .line 116
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 118
    .local v1, "response":[I
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRingbackTone(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRingbackTone() response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 121
    aget v2, v1, v3

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 122
    .local v0, "playtone":Z
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v2, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRingbackTone(Z)V

    .line 123
    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 262
    const-string v0, "onRttMessageReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRttMessageReceived(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public onServiceDomainChanged(I)V
    .locals 2
    .param p1, "domain"    # I

    .line 415
    const-string v0, "onServiceDomainChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 416
    if-nez p1, :cond_0

    .line 417
    const-string v0, "SystemServiceDomain is invalid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 418
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toServiceDomain(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDomainChanged(I)V

    .line 421
    return-void
.end method

.method public onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 3
    .param p1, "srvStatusList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 142
    sget-object v0, Lorg/codeaurora/ims/ImsRadioAidl;->mRepIndLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    const-string v1, "onServiceStatusChanged()"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v2, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceStatusChanged(Ljava/util/List;)V

    .line 146
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    monitor-exit v0

    .line 148
    return-void

    .line 146
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

    .line 409
    const-string v0, "onSipDtmfReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSipDtmfReceived(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 425
    const-string v0, "onSmsCallBackModeChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 426
    if-nez p1, :cond_0

    .line 427
    const-string v0, "SmsCallBackMode is invalid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 428
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSmsCallBackMode(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSmsCallBackModeChanged(I)V

    .line 431
    return-void
.end method

.method public onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V
    .locals 2
    .param p1, "smsStatusReport"    # Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;

    .line 282
    const-string v0, "onSmsSendStatusReport()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 283
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->pdu:[B

    if-nez v0, :cond_0

    .line 284
    const-string v0, "smsStatusReport.pdu is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 285
    return-void

    .line 287
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;

    move-result-object v0

    .line 288
    .local v0, "smsReport":Lorg/codeaurora/ims/sms/StatusReport;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSmsStatusReport(Lorg/codeaurora/ims/sms/StatusReport;)V

    .line 289
    return-void
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V
    .locals 2
    .param p1, "suppServiceNotification"    # Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    .line 220
    const-string v0, "onSuppServiceNotification()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 221
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSuppNotifyInfo(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;

    move-result-object v0

    .line 222
    .local v0, "suppNotifyInfo":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onSuppServiceNotification(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    .line 223
    return-void
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V
    .locals 2
    .param p1, "ss"    # Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;

    .line 275
    const-string v0, "onSupplementaryServiceIndication()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 276
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsSsData(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)Landroid/telephony/ims/ImsSsData;

    move-result-object v0

    .line 277
    .local v0, "ssData":Landroid/telephony/ims/ImsSsData;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 278
    return-void
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V
    .locals 4
    .param p1, "ttyInfo"    # Lvendor/qti/hardware/radio/ims/TtyInfo;

    .line 176
    const-string v0, "onTtyNotification ()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 177
    if-nez p1, :cond_0

    .line 178
    const-string v0, "onTtyNotification: ttyInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 179
    return-void

    .line 181
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

    .line 182
    return-void
.end method

.method public onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 338
    const-string v0, "onUssdMessageFailed()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 339
    if-nez p1, :cond_0

    .line 340
    const-string v0, "UssMode type is invalid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 341
    return-void

    .line 343
    :cond_0
    const-string v0, ""

    invoke-static {p1, v0, p2}, Lorg/codeaurora/ims/StableAidl;->toUssdInfo(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object v0

    .line 344
    .local v0, "ussdInfo":Lorg/codeaurora/ims/UssdInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdMessageFailed(Lorg/codeaurora/ims/UssdInfo;)V

    .line 345
    return-void
.end method

.method public onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 349
    const-string v0, "onUssdReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 350
    invoke-static {p1, p2, p3}, Lorg/codeaurora/ims/StableAidl;->toUssdInfo(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object v0

    .line 351
    .local v0, "ussdInfo":Lorg/codeaurora/ims/UssdInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdReceived(Lorg/codeaurora/ims/UssdInfo;)V

    .line 352
    return-void
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 2
    .param p1, "voWiFiCallQuality"    # I

    .line 268
    const-string v0, "onVoWiFiCallQuality()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 269
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toVoWiFiQuality(I)[I

    move-result-object v0

    .line 270
    .local v0, "ret":[I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoWiFiCallQuality([I)V

    .line 271
    return-void
.end method

.method public onVoiceInfoChanged(I)V
    .locals 2
    .param p1, "voiceInfo"    # I

    .line 310
    const-string v0, "onVoiceInfoChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toVoiceInfo(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoiceInfoChanged(I)V

    .line 312
    return-void
.end method

.method public onVopsChanged(Z)V
    .locals 1
    .param p1, "isVopsEnabled"    # Z

    .line 304
    const-string v0, "onVopsChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVopsChanged(Z)V

    .line 306
    return-void
.end method
