.class public Lorg/codeaurora/ims/ImsRadioUtilsV110;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV110.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static buildEcnamInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;)Lorg/codeaurora/ims/EcnamInfo;
    .locals 5
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/EcnamInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;->infoUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;->cardUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codeaurora/ims/EcnamInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static buildPreAlertingInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;)Lorg/codeaurora/ims/PreAlertingCallInfo;
    .locals 7
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/PreAlertingCallInfo;

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callId:I

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildCallComposerInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v3

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    .line 34
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV110;->buildEcnamInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;)Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V

    .line 33
    return-object v0
.end method

.method public static toDriverCallIms(Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 8
    .param p0, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;

    .line 47
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 48
    return-object v0

    .line 51
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildCallComposerInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v1

    :goto_0
    nop

    .line 53
    .local v1, "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_1

    .line 54
    :cond_2
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV110;->buildEcnamInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;)Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v2

    :goto_1
    nop

    .line 56
    .local v2, "ecnamInfo":Lorg/codeaurora/ims/EcnamInfo;
    new-instance v3, Lorg/codeaurora/ims/VerstatInfo;

    const/4 v4, 0x0

    iget v5, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->verificationStatus:I

    invoke-direct {v3, v4, v5}, Lorg/codeaurora/ims/VerstatInfo;-><init>(ZI)V

    .line 59
    .local v3, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    new-instance v4, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v4, v1, v3, v2}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;Lorg/codeaurora/ims/EcnamInfo;)V

    .line 61
    .local v4, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget v5, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->autoRejectionCause:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->getImsReasonForCallFailCause(I)I

    move-result v5

    .line 62
    .local v5, "imsReasonInfoCode":I
    if-nez v5, :cond_3

    .line 63
    const/16 v6, 0x640

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    move v5, v6

    .line 64
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    iget-short v7, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->sipErrorCode:S

    invoke-direct {v6, v5, v7, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v6, v4, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 65
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v0, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 66
    iget-object v0, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callType:I

    invoke-static {v6}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v6

    iput v6, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 67
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iput-object v0, v4, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 69
    return-object v4
.end method
