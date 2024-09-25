.class public Lorg/codeaurora/ims/ImsRadioUtilsV19;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV19.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static migrateCallDetails(Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;)Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;-><init>()V

    .line 93
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callType:I

    .line 94
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callDomain:I

    .line 95
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extrasLength:I

    .line 97
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, "extra":Ljava/lang/String;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    .line 102
    .local v2, "localAbility":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v2    # "localAbility":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    goto :goto_1

    .line 105
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    .line 106
    .local v2, "peerAbility":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v2    # "peerAbility":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    goto :goto_2

    .line 109
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callSubstate:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->callSubstate:I

    .line 110
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->mediaId:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->mediaId:I

    .line 111
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->causeCode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->causeCode:I

    .line 112
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->rttMode:I

    .line 113
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;->isVosSupported:Z

    .line 116
    return-object v0
.end method

.method private static migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;

    .line 32
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;-><init>()V

    .line 33
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->state:I

    .line 34
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->index:I

    .line 35
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->toa:I

    .line 36
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsMpty:Z

    .line 37
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isMpty:Z

    .line 38
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsMT:Z

    .line 39
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isMT:Z

    .line 40
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->als:I

    .line 41
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsVoice:Z

    .line 42
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isVoice:Z

    .line 43
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsVoicePrivacy:Z

    .line 44
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isVoicePrivacy:Z

    .line 45
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->number:Ljava/lang/String;

    .line 46
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->numberPresentation:I

    .line 47
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->name:Ljava/lang/String;

    .line 48
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->namePresentation:I

    .line 50
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasCallDetails:Z

    .line 51
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV19;->migrateCallDetails(Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;)Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_9/CallDetails;

    .line 53
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasFailCause:Z

    .line 54
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    .line 56
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 57
    .local v2, "errorinfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v2    # "errorinfo":Ljava/lang/Byte;
    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 61
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    .line 62
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 63
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 66
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsEncrypted:Z

    .line 67
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isEncrypted:Z

    .line 68
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsCalledPartyRinging:Z

    .line 69
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isCalledPartyRinging:Z

    .line 70
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->historyInfo:Ljava/lang/String;

    .line 71
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->hasIsVideoConfSupported:Z

    .line 72
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isVideoConfSupported:Z

    .line 74
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 75
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 76
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->tirMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->tirMode:I

    .line 79
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isPreparatory:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->isPreparatory:Z

    .line 80
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    .line 81
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    .line 84
    return-object v0
.end method

.method public static migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;",
            ">;"
        }
    .end annotation

    .line 122
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;>;"
    if-nez p0, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;

    .line 127
    .local v2, "from":Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV19;->migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;

    move-result-object v3

    .line 128
    .local v3, "to":Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v2    # "from":Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;
    .end local v3    # "to":Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;
    goto :goto_0

    .line 130
    :cond_1
    return-object v0
.end method
