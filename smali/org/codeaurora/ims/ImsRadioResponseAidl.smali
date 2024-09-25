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

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add Participant response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 313
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 312
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onAddParticipantResponse(II)V

    .line 314
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

    .line 348
    const-string v0, "Cancel modify call response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 350
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 349
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onCancelModifyCallResponse(II)V

    .line 351
    return-void
.end method

.method public cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 405
    const-string v0, "Cancel pending USSD response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 406
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 407
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 408
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 407
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 409
    return-void
.end method

.method public conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 171
    const-string v0, "conference response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 172
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 173
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 174
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 173
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 175
    return-void
.end method

.method public deflectCallResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 318
    const-string v0, "Deflect call response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 320
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 319
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onDeflectCallResponse(II)V

    .line 321
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

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit Emergency Callback response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 213
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 212
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onExitEmergencyCallbackModeResponse(II)V

    .line 214
    return-void
.end method

.method public exitSmsCallBackModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 435
    const-string v0, "exit SCBM"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 437
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 436
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->exitSmsCallBackModeResponse(II)V

    .line 438
    return-void
.end method

.method public explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 277
    const-string v0, "Explicit call transfer response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 278
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 279
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 280
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 279
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 281
    return-void
.end method

.method public getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callWaitingInfo"    # Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 268
    const-string v0, "Get call waiting response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 269
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallWaitingArray(Lvendor/qti/hardware/radio/ims/CallWaitingInfo;)[I

    move-result-object v0

    .line 270
    .local v0, "response":[I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 271
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 270
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetCallWaitingResponse(II[I)V

    .line 272
    return-void
.end method

.method public getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clipProvisionStatus"    # Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;

    .line 180
    const-string v0, "Get clip response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 181
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppService(Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;)Lorg/codeaurora/ims/SuppService;

    move-result-object v0

    .line 182
    .local v0, "clipProvStatus":Lorg/codeaurora/ims/SuppService;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 183
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 182
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V

    .line 184
    return-void
.end method

.method public getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clirInfo"    # Lvendor/qti/hardware/radio/ims/ClirInfo;
    .param p4, "hasClirInfo"    # Z

    .line 189
    const-string v0, "Get clir response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 190
    if-eqz p4, :cond_0

    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toClirArray(Lvendor/qti/hardware/radio/ims/ClirInfo;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 191
    .local v0, "response":[I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 192
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 191
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClirResponse(II[I)V

    .line 193
    return-void
.end method

.method public getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 203
    const-string v0, "getColr response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 204
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppService(Lvendor/qti/hardware/radio/ims/ColrInfo;)Lorg/codeaurora/ims/SuppService;

    move-result-object v0

    .line 205
    .local v0, "colrValue":Lorg/codeaurora/ims/SuppService;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 206
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 205
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V

    .line 207
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

    .line 333
    const-string v0, "Subconfig response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 334
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v0

    .line 335
    .local v0, "subConfigDetails":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 336
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 335
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V

    .line 337
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "9c0f7584c4bcbd1c1e99c5be090131bc33bf7a42"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 60
    const/16 v0, 0xc

    return v0
.end method

.method public getRtpErrorStatisticsResponse(IIJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetErrorCount"    # J

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get Rtp Error Statistics response received packetErrorCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 306
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 305
    invoke-interface {v0, p1, v1, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    .line 307
    return-void
.end method

.method public getRtpStatisticsResponse(IIJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetCount"    # J

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get Rtp Statistics response received packetCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 297
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 296
    invoke-interface {v0, p1, v1, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    .line 298
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

    .line 250
    const-string v0, "Modify call confirm response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 252
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 251
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallConfirmResponse(II)V

    .line 253
    return-void
.end method

.method public modifyCallInitiateResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 243
    const-string v0, "Modify call initiate response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 245
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 244
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallInitiateResponse(II)V

    .line 246
    return-void
.end method

.method public queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardInfoList"    # [Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 258
    const-string v0, "Query call forward status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 259
    nop

    .line 260
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardTimerInfo([Lvendor/qti/hardware/radio/ims/CallForwardInfo;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    move-result-object v0

    .line 261
    .local v0, "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 262
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 261
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V

    .line 263
    return-void
.end method

.method public queryMultiSimVoiceCapabilityResponse(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "voiceCapability"    # I

    .line 427
    const-string v0, "query multi sim voice capability."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 429
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 430
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toMultiSimVoiceCapability(I)I

    move-result v2

    .line 428
    invoke-interface {v0, p1, v1, v2}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryMultiSimVoiceCapabilityResponse(III)V

    .line 431
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

    .line 377
    new-instance v0, Lorg/codeaurora/ims/VirtualLineInfo;

    new-instance v1, Ljava/util/ArrayList;

    .line 378
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p2, v1}, Lorg/codeaurora/ims/VirtualLineInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 379
    .local v0, "virtualInfo":Lorg/codeaurora/ims/VirtualLineInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryVirtualLineInfoResponse :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V

    .line 381
    return-void
.end method

.method public registerMultiIdentityLinesResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiIdentityLines Response received. errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 371
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 370
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onRegisterMultiIdentityLinesResponse(II)V

    .line 372
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

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Dtmf response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendDtmfResponse(II)V

    .line 220
    return-void
.end method

.method public sendGeolocationInfoResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 325
    const-string v0, "Send geolocation response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 327
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 326
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendGeolocationInfoResponse(II)V

    .line 328
    return-void
.end method

.method public sendRttMessageResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Rtt Message response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 343
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 342
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendRttMessageResponse(II)V

    .line 344
    return-void
.end method

.method public sendSipDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 413
    const-string v0, "Send sip dtmf response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendSipDtmfResponse(II)V

    .line 415
    return-void
.end method

.method public sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "smsResponse"    # Lvendor/qti/hardware/radio/ims/SmsSendResponse;

    .line 355
    const-string v0, "Ims sms response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 356
    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->smsStatus:I

    if-eqz v0, :cond_1

    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->reason:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->msgRef:I

    iget v1, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->smsStatus:I

    iget v2, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->reason:I

    iget v3, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->networkErrorCode:I

    iget v4, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->radioTech:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/codeaurora/ims/StableAidl;->toSmsResponse(IIIII)Lorg/codeaurora/ims/sms/SmsResponse;

    move-result-object v0

    .line 364
    .local v0, "response":Lorg/codeaurora/ims/sms/SmsResponse;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V

    .line 365
    return-void

    .line 358
    .end local v0    # "response":Lorg/codeaurora/ims/sms/SmsResponse;
    :cond_1
    :goto_0
    const-string v0, "Status or reason invalid."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 396
    const-string v0, "Send USSD response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 397
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 398
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 399
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 398
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 400
    return-void
.end method

.method public sendVosActionInfoResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 449
    const-string v0, "Send VOS action info response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 451
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 450
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendVosActionInfoResponse(II)V

    .line 452
    return-void
.end method

.method public sendVosSupportStatusResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 442
    const-string v0, "Send VOS support status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 444
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 443
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendVosSupportStatusResponse(II)V

    .line 445
    return-void
.end method

.method public setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardStatus"    # Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;

    .line 386
    const-string v0, "Set call forward status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 387
    nop

    .line 388
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallForwardStatusInfo(Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;

    move-result-object v0

    .line 389
    .local v0, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 390
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 389
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V

    .line 391
    return-void
.end method

.method public setClirResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set clir response received  error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetClirResponse(II)V

    .line 199
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

    .line 419
    const-string v0, "Set media configuration response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 421
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 420
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetMediaConfigurationResponse(II)V

    .line 422
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

    .line 286
    const-string v0, "Set supp service notification response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 288
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 287
    invoke-interface {v0, p1, v1, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetSuppServiceNotificationResponse(III)V

    .line 289
    return-void
.end method

.method public setUiTTYModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Ui TTY mode response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 238
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 237
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetUiTTYModeResponse(II)V

    .line 239
    return-void
.end method

.method public startDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Dtmf response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onStartDtmfResponse(II)V

    .line 226
    return-void
.end method

.method public stopDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop Dtmf response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onStopDtmfResponse(II)V

    .line 232
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

    move-result-object v0

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " provisionStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " facilityType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failureCause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isPasswordRequired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->isPasswordRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 164
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppSvcResponse(Lvendor/qti/hardware/radio/ims/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;

    move-result-object v0

    .line 165
    .local v0, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 166
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 165
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V

    .line 167
    return-void
.end method
