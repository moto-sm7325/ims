.class public Lorg/codeaurora/ims/ImsRadioResponseAidl;
.super Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;
.source "ImsRadioResponseAidl.java"


# instance fields
.field private mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

.field private final mLogSuffix:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;I)V
    .locals 2
    .param p1, "respCallback"    # Lorg/codeaurora/ims/IImsRadioResponse;
    .param p2, "phoneId"    # I

    .line 48
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 50
    iput p2, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mPhoneId:I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mLogSuffix:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public addParticipantResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add Participant response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 312
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 311
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onAddParticipantResponse(II)V

    .line 313
    return-void
.end method

.method public answerResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 76
    const-string v0, "Answer response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onAnswerResponse(II)V

    .line 78
    return-void
.end method

.method public cancelModifyCallResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 347
    const-string v0, "Cancel modify call response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 349
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 348
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onCancelModifyCallResponse(II)V

    .line 350
    return-void
.end method

.method public cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 404
    const-string v0, "Cancel pending USSD response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 405
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 406
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 407
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 406
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 408
    return-void
.end method

.method public conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 170
    const-string v0, "conference response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 171
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 172
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 173
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 172
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 174
    return-void
.end method

.method public deflectCallResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 317
    const-string v0, "Deflect call response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 319
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 318
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onDeflectCallResponse(II)V

    .line 320
    return-void
.end method

.method public dialResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 70
    const-string v0, "Dial response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onDialResponse(II)V

    .line 72
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit Emergency Callback response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 212
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 211
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onExitEmergencyCallbackModeResponse(II)V

    .line 213
    return-void
.end method

.method public explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 276
    const-string v0, "Explicit call transfer response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 277
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 278
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 279
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 278
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 280
    return-void
.end method

.method public getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callWaitingInfo"    # Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 267
    const-string v0, "Get call waiting response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 268
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallWaitingArray(Lvendor/qti/hardware/radio/ims/CallWaitingInfo;)[I

    move-result-object v0

    .line 269
    .local v0, "response":[I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 270
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 269
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetCallWaitingResponse(II[I)V

    .line 271
    return-void
.end method

.method public getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clipProvisionStatus"    # Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;

    .line 179
    const-string v0, "Get clip response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 180
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppService(Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;)Lorg/codeaurora/ims/SuppService;

    move-result-object v0

    .line 181
    .local v0, "clipProvStatus":Lorg/codeaurora/ims/SuppService;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 182
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 181
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V

    .line 183
    return-void
.end method

.method public getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clirInfo"    # Lvendor/qti/hardware/radio/ims/ClirInfo;
    .param p4, "hasClirInfo"    # Z

    .line 188
    const-string v0, "Get clir response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 189
    if-eqz p4, :cond_0

    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toClirArray(Lvendor/qti/hardware/radio/ims/ClirInfo;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 190
    .local v0, "response":[I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 191
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 190
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClirResponse(II[I)V

    .line 192
    return-void
.end method

.method public getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 202
    const-string v0, "getColr response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 203
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppService(Lvendor/qti/hardware/radio/ims/ColrInfo;)Lorg/codeaurora/ims/SuppService;

    move-result-object v0

    .line 204
    .local v0, "colrValue":Lorg/codeaurora/ims/SuppService;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 205
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 204
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V

    .line 206
    return-void
.end method

.method public getConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 139
    const-string v0, "Get config response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 140
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 142
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 141
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetConfigResponse(IILjava/lang/Object;)V

    .line 143
    return-void
.end method

.method public getImsRegistrationStateResponse(IILvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "registration"    # Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 148
    const-string v0, "getImsRegistrationStateResponse received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 149
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object v0

    .line 150
    .local v0, "regMessage":Lorg/codeaurora/ims/ImsRegistrationInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 151
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 150
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRegistrationResponse(IILorg/codeaurora/ims/ImsRegistrationInfo;)V

    .line 152
    return-void
.end method

.method public getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 332
    const-string v0, "Subconfig response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 333
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v0

    .line 334
    .local v0, "subConfigDetails":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 335
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 334
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V

    .line 336
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "bcb53de4a9dfae8a0daf84e64a311c91ba4866ff"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 60
    const/4 v0, 0x3

    return v0
.end method

.method public getRtpErrorStatisticsResponse(IIJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetErrorCount"    # J

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get Rtp Error Statistics response received packetErrorCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 305
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 304
    invoke-interface {v0, p1, v1, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    .line 306
    return-void
.end method

.method public getRtpStatisticsResponse(IIJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetCount"    # J

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get Rtp Statistics response received packetCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 296
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 295
    invoke-interface {v0, p1, v1, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    .line 297
    return-void
.end method

.method public hangupResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 82
    const-string v0, "Hangup response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onHangupResponse(II)V

    .line 84
    return-void
.end method

.method public holdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "sipError"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 115
    const-string v0, "Hold response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 116
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 117
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 118
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 117
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onHoldResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 119
    return-void
.end method

.method public modifyCallConfirmResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 249
    const-string v0, "Modify call confirm response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 251
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 250
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallConfirmResponse(II)V

    .line 252
    return-void
.end method

.method public modifyCallInitiateResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 242
    const-string v0, "Modify call initiate response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 244
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 243
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallInitiateResponse(II)V

    .line 245
    return-void
.end method

.method public queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardInfoList"    # [Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 257
    const-string v0, "Query call forward status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 258
    nop

    .line 259
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardTimerInfo([Lvendor/qti/hardware/radio/ims/CallForwardInfo;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    move-result-object v0

    .line 260
    .local v0, "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 261
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 260
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V

    .line 262
    return-void
.end method

.method public queryMultiSimVoiceCapabilityResponse(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "voiceCapability"    # I

    .line 426
    const-string v0, "query multi sim voice capability."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 428
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 429
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toMultiSimVoiceCapability(I)I

    move-result v2

    .line 427
    invoke-interface {v0, p1, v1, v2}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryMultiSimVoiceCapabilityResponse(III)V

    .line 430
    return-void
.end method

.method public queryServiceStatusResponse(II[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "srvStatusList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 97
    sget-object v0, Lorg/codeaurora/ims/ImsRadioAidl;->mRepIndLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    const-string v1, "QueryServiceStatusResponse received"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 99
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Ljava/util/ArrayList;

    move-result-object v1

    .line 100
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 101
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v3

    .line 100
    invoke-interface {v2, p1, v3, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryServiceStatusResponse(IILjava/util/List;)V

    .line 102
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    monitor-exit v0

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryVirtualLineInfoResponse(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "virtualLineInfo"    # [Ljava/lang/String;

    .line 376
    new-instance v0, Lorg/codeaurora/ims/VirtualLineInfo;

    new-instance v1, Ljava/util/ArrayList;

    .line 377
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p2, v1}, Lorg/codeaurora/ims/VirtualLineInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 378
    .local v0, "virtualInfo":Lorg/codeaurora/ims/VirtualLineInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryVirtualLineInfoResponse :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V

    .line 380
    return-void
.end method

.method public registerMultiIdentityLinesResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiIdentityLines Response received. errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 370
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 369
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onRegisterMultiIdentityLinesResponse(II)V

    .line 371
    return-void
.end method

.method public requestRegistrationChangeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 88
    const-string v0, "Registration change response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 90
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 89
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onRequestRegistrationChangeResponse(II)V

    .line 91
    return-void
.end method

.method public resumeResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "sipError"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 123
    const-string v0, "Resume response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 124
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 125
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 126
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 125
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onResumeResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 127
    return-void
.end method

.method public sendDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Dtmf response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendDtmfResponse(II)V

    .line 219
    return-void
.end method

.method public sendGeolocationInfoResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 324
    const-string v0, "Send geolocation response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 326
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 325
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendGeolocationInfoResponse(II)V

    .line 327
    return-void
.end method

.method public sendRttMessageResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Rtt Message response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 342
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 341
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendRttMessageResponse(II)V

    .line 343
    return-void
.end method

.method public sendSipDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 412
    const-string v0, "Send sip dtmf response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendSipDtmfResponse(II)V

    .line 414
    return-void
.end method

.method public sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "smsResponse"    # Lvendor/qti/hardware/radio/ims/SmsSendResponse;

    .line 354
    const-string v0, "Ims sms response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 355
    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->smsStatus:I

    if-eqz v0, :cond_1

    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->reason:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->msgRef:I

    iget v1, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->smsStatus:I

    iget v2, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->reason:I

    iget v3, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->networkErrorCode:I

    invoke-static {v0, v1, v2, v3}, Lorg/codeaurora/ims/StableAidl;->toSmsResponse(IIII)Lorg/codeaurora/ims/sms/SmsResponse;

    move-result-object v0

    .line 363
    .local v0, "response":Lorg/codeaurora/ims/sms/SmsResponse;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V

    .line 364
    return-void

    .line 357
    .end local v0    # "response":Lorg/codeaurora/ims/sms/SmsResponse;
    :cond_1
    :goto_0
    const-string v0, "Status or reason invalid."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 395
    const-string v0, "Send USSD response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 396
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 397
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 398
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 397
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 399
    return-void
.end method

.method public setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardStatus"    # Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;

    .line 385
    const-string v0, "Set call forward status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 386
    nop

    .line 387
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallForwardStatusInfo(Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;

    move-result-object v0

    .line 388
    .local v0, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 389
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 388
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V

    .line 390
    return-void
.end method

.method public setClirResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set clir response received  error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetClirResponse(II)V

    .line 198
    return-void
.end method

.method public setConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 131
    const-string v0, "Set config response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 132
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 134
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 133
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetConfigResponse(IILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method public setMediaConfigurationResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 418
    const-string v0, "Set media configuration response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 420
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 419
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetMediaConfigurationResponse(II)V

    .line 421
    return-void
.end method

.method public setServiceStatusResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 108
    const-string v0, "SetServiceStatus response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 110
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 109
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetServiceStatusResponse(II)V

    .line 111
    return-void
.end method

.method public setSuppServiceNotificationResponse(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "serviceStatus"    # I

    .line 285
    const-string v0, "Set supp service notification response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 287
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 286
    invoke-interface {v0, p1, v1, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetSuppServiceNotificationResponse(III)V

    .line 288
    return-void
.end method

.method public setUiTTYModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Ui TTY mode response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 237
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 236
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetUiTTYModeResponse(II)V

    .line 238
    return-void
.end method

.method public startDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Dtmf response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onStartDtmfResponse(II)V

    .line 225
    return-void
.end method

.method public stopDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop Dtmf response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onStopDtmfResponse(II)V

    .line 231
    return-void
.end method

.method public suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/SuppServiceStatus;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/SuppServiceStatus;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supp Service status response received status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " provisionStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " facilityType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failureCause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 163
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppSvcResponse(Lvendor/qti/hardware/radio/ims/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;

    move-result-object v0

    .line 164
    .local v0, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 165
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 164
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V

    .line 166
    return-void
.end method
