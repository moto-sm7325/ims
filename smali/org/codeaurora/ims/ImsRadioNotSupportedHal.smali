.class public Lorg/codeaurora/ims/ImsRadioNotSupportedHal;
.super Ljava/lang/Object;
.source "ImsRadioNotSupportedHal.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadio;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fail()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Radio is not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "deliverStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 85
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "statusReportStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 91
    return-void
.end method

.method public addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 43
    return-void
.end method

.method public answer(IIII)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callType"    # I
    .param p3, "ipPresentation"    # I
    .param p4, "rttMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 67
    return-void
.end method

.method public cancelModifyCall(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 141
    return-void
.end method

.method public cancelPendingUssd(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 61
    return-void
.end method

.method public conference(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 162
    return-void
.end method

.method public deflectCall(IILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "index"    # I
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 73
    return-void
.end method

.method public dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "eInfo"    # Lorg/codeaurora/ims/EmergencyCallInfo;
    .param p4, "clirMode"    # I
    .param p5, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p6, "isEncrypted"    # Z
    .param p7, "ccInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p8, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 51
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 252
    return-void
.end method

.method public explicitCallTransfer(IIILjava/lang/String;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "srcCallId"    # I
    .param p3, "type"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "destCallId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 168
    return-void
.end method

.method public getCallWaiting(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 217
    return-void
.end method

.method public getClip(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 242
    return-void
.end method

.method public getClir(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 207
    return-void
.end method

.method public getColr(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 264
    return-void
.end method

.method public getConfig(IIZILjava/lang/String;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 181
    return-void
.end method

.method public getImsRegistrationState(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 124
    return-void
.end method

.method public getImsSubConfig(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 284
    return-void
.end method

.method public getRtpErrorStatistics(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 279
    return-void
.end method

.method public getRtpStatistics(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 274
    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "connectionId"    # I
    .param p3, "userUri"    # Ljava/lang/String;
    .param p4, "confUri"    # Ljava/lang/String;
    .param p5, "mpty"    # Z
    .param p6, "failCause"    # I
    .param p7, "errorInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 108
    return-void
.end method

.method public hold(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 152
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public isFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 147
    return-void
.end method

.method public modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 136
    return-void
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;Z)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "expectMore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 237
    return-void
.end method

.method public queryMultiSimVoiceCapability(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 316
    return-void
.end method

.method public queryServiceStatus(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 113
    return-void
.end method

.method public querySsacStatus(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 331
    return-void
.end method

.method public queryVirtualLineInfo(ILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 294
    return-void
.end method

.method public queryVoltePref(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 342
    return-void
.end method

.method public queryVopsStatus(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 326
    return-void
.end method

.method public registerMultiIdentityLines(ILjava/util/Collection;)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    .local p2, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 300
    return-void
.end method

.method public requestRegistrationChange(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "imsRegState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 130
    return-void
.end method

.method public resume(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 157
    return-void
.end method

.method public sendDtmf(IIC)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 186
    return-void
.end method

.method public sendGeolocationInfo(IDDLandroid/location/Address;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "lat"    # D
    .param p4, "lon"    # D
    .param p6, "address"    # Landroid/location/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 102
    return-void
.end method

.method public sendRttMessage(ILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 289
    return-void
.end method

.method public sendSipDtmf(ILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "requestCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 305
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 79
    return-void
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 56
    return-void
.end method

.method public setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "cfReason"    # I
    .param p8, "serviceClass"    # I
    .param p9, "number"    # Ljava/lang/String;
    .param p10, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 231
    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 223
    return-void
.end method

.method public setClir(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 212
    return-void
.end method

.method public setColr(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "presentationValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 269
    return-void
.end method

.method public setConfig(IIZILjava/lang/String;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 175
    return-void
.end method

.method public setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "screenSize"    # Landroid/graphics/Point;
    .param p3, "avcSize"    # Landroid/graphics/Point;
    .param p4, "hevcSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 311
    return-void
.end method

.method public setServiceStatus(ILjava/util/List;I)V
    .locals 0
    .param p1, "token"    # I
    .param p3, "restrictCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    .local p2, "capabilityStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 119
    return-void
.end method

.method public setSuppServiceNotification(IZ)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 202
    return-void
.end method

.method public setUiTtyMode(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "uiTtyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 247
    return-void
.end method

.method public startDtmf(IIC)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 191
    return-void
.end method

.method public stopDtmf(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 196
    return-void
.end method

.method public suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "operationType"    # I
    .param p3, "facility"    # I
    .param p4, "inCbNumList"    # [Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "serviceClass"    # I
    .param p7, "expectMore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 259
    return-void
.end method

.method public toAvailability(Z)Ljava/lang/String;
    .locals 1
    .param p1, "v"    # Z

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateVoltePref(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "preference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 337
    return-void
.end method
