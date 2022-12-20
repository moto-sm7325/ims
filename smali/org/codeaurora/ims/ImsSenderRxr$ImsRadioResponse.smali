.class Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRadioResponse"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 3179
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3257
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendImsReasonInfo rr is NULL for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3259
    return-void

    .line 3261
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Response: errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3263
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3264
    return-void
.end method


# virtual methods
.method public onAddParticipantResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3472
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3473
    return-void
.end method

.method public onAnswerResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3291
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3292
    return-void
.end method

.method public onCancelModifyCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3428
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3429
    return-void
.end method

.method public onCancelPendingUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3514
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3515
    return-void
.end method

.method public onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3331
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3332
    return-void
.end method

.method public onDeflectCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3477
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3478
    return-void
.end method

.method public onDialResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3186
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3187
    return-void
.end method

.method public onExitEmergencyCallbackModeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3398
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3399
    return-void
.end method

.method public onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3439
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3440
    return-void
.end method

.method public onGetCallWaitingResponse(II[I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "response"    # [I

    .line 3371
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3372
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3373
    const-string v1, "onGetCallWaitingResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3374
    return-void

    .line 3377
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3378
    return-void
.end method

.method public onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clipProvisionStatus"    # Lorg/codeaurora/ims/SuppService;

    .line 3337
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3338
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3339
    const-string v1, "onGetClipResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3340
    return-void

    .line 3343
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3344
    return-void
.end method

.method public onGetClirResponse(II[I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clirInfo"    # [I

    .line 3348
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3349
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3350
    const-string v1, "onGetClirResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3351
    return-void

    .line 3354
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3355
    return-void
.end method

.method public onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lorg/codeaurora/ims/SuppService;

    .line 3387
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3388
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3389
    const-string v1, "onGetColrResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3390
    return-void

    .line 3393
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3394
    return-void
.end method

.method public onGetConfigResponse(IILjava/lang/Object;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 3201
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3202
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3203
    const-string v1, "onGetConfigResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3204
    return-void

    .line 3207
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3208
    return-void
.end method

.method public onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "subConfigInfo"    # Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 3488
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3489
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3490
    const-string v1, "onGetImsSubConfigResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3491
    return-void

    .line 3494
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3495
    return-void
.end method

.method public onGetRegistrationResponse(IILorg/codeaurora/ims/ImsRegistrationInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "registration"    # Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 3302
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3303
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3304
    const-string v1, "onGetRegistrationResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3305
    return-void

    .line 3308
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3309
    return-void
.end method

.method public onGetRtpErrorStatisticsResponse(IIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetErrorCount"    # J

    .line 3462
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3463
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3464
    const-string v1, "onGetRtpErrorStatisticsResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3465
    return-void

    .line 3467
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3468
    return-void
.end method

.method public onGetRtpStatisticsResponse(IIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetCount"    # J

    .line 3451
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3452
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3453
    const-string v1, "onGetRtpStatisticsResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3454
    return-void

    .line 3456
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3457
    return-void
.end method

.method public onHangupResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3278
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3280
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;)V

    .line 3281
    .local v0, "motoExtTM":Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$000(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getAndResetInTestEmergencyCall(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3282
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v1, :cond_0

    .line 3283
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    invoke-virtual {v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant()V

    .line 3287
    :cond_0
    return-void
.end method

.method public onHoldResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3273
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3274
    return-void
.end method

.method public onModifyCallConfirmResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3433
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3434
    return-void
.end method

.method public onModifyCallInitiateResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3423
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3424
    return-void
.end method

.method public onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "timerInfo"    # [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 3360
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3361
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3362
    const-string v1, "onQueryCallForwardStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3363
    return-void

    .line 3366
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3367
    return-void
.end method

.method public onQueryMultiSimVoiceCapabilityResponse(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "voiceCapability"    # I

    .line 3608
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3609
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3610
    const-string v1, "onQueryMultiSimVoiceCapabilityResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3611
    return-void

    .line 3613
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3614
    return-void
.end method

.method public onQueryServiceStatusResponse(IILjava/util/List;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation

    .line 3224
    .local p3, "serviceStatusInfoList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3225
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3226
    const-string v1, "onQueryServiceStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3227
    return-void

    .line 3230
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3231
    return-void
.end method

.method public onQuerySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ssacInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    .line 3583
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3584
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3585
    return-void

    .line 3588
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->ssacInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 3590
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3592
    return-void
.end method

.method public onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "virtualLineInfo"    # Lorg/codeaurora/ims/VirtualLineInfo;

    .line 3530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3531
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3532
    const-string v1, "onQueryVirtualLineInfoResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3533
    return-void

    .line 3535
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3536
    return-void
.end method

.method public onQueryVoltePrefResponse(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "voltePref"    # I

    .line 3560
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3561
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3562
    return-void

    .line 3564
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->voltePrefFromHal(I)Ljava/lang/Object;

    move-result-object v1

    .line 3565
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3566
    return-void
.end method

.method public onQueryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "vopsInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    .line 3572
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3573
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3574
    return-void

    .line 3576
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->vopsInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 3578
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3579
    return-void
.end method

.method public onRegisterMultiIdentityLinesResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3519
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3520
    return-void
.end method

.method public onRequestRegistrationChangeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3296
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3297
    return-void
.end method

.method public onResumeResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3268
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3269
    return-void
.end method

.method public onSendDtmfResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3403
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3404
    return-void
.end method

.method public onSendGeolocationInfoResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3482
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3483
    return-void
.end method

.method public onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "response"    # Lorg/codeaurora/ims/sms/SmsResponse;

    .line 3191
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3192
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3193
    const-string v1, "onSendImsSmsResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3194
    return-void

    .line 3196
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3197
    return-void
.end method

.method public onSendRttMessageResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3524
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3525
    return-void
.end method

.method public onSendSipDtmfResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3504
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3505
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3506
    const-string v1, "onSendSipDtmfResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3507
    return-void

    .line 3509
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3510
    return-void
.end method

.method public onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3499
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3500
    return-void
.end method

.method public onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardStatusInfo"    # Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 3541
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3542
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3543
    const-string v1, "onSetCallForwardStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3544
    return-void

    .line 3547
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardStatusResponse:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3548
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3549
    return-void
.end method

.method public onSetClirResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3382
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3383
    return-void
.end method

.method public onSetConfigResponse(IILjava/lang/Object;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 3212
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3213
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3214
    const-string v1, "onSetConfigResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3215
    return-void

    .line 3218
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3219
    return-void
.end method

.method public onSetMediaConfigurationResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3597
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3598
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3599
    const-string v1, "onSetMediaConfigurationResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3600
    return-void

    .line 3602
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3603
    return-void
.end method

.method public onSetServiceStatusResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3235
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3236
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3237
    const-string v1, "onSetServiceStatusResponse  rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3238
    return-void

    .line 3242
    :cond_0
    :try_start_0
    iget-object v1, v0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 3243
    .local v1, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 3248
    .local v2, "orgMsg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 3249
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v3, v0, p2, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3252
    .end local v1    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v2    # "orgMsg":Landroid/os/Message;
    goto :goto_0

    .line 3250
    :catch_0
    move-exception v1

    .line 3251
    .local v1, "ex":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetServiceStatusResponse exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3253
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public onSetSuppServiceNotificationResponse(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "serviceStatusClass"    # I

    .line 3445
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3446
    return-void
.end method

.method public onSetUiTTYModeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3418
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3419
    return-void
.end method

.method public onStartDtmfResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3408
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3409
    return-void
.end method

.method public onStopDtmfResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3413
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3414
    return-void
.end method

.method public onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppSvcResponse"    # Lorg/codeaurora/ims/SuppSvcResponse;

    .line 3314
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3400(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3315
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3316
    const-string v1, "onSuppServiceStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3317
    return-void

    .line 3320
    :cond_0
    iget v1, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 3321
    new-instance v1, Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 3322
    invoke-virtual {p3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/codeaurora/ims/CallForwardStatusInfo;-><init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V

    .line 3323
    .local v1, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3324
    .end local v1    # "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    goto :goto_0

    .line 3325
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3500(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3327
    :goto_0
    return-void
.end method

.method public onUpdateVoltePrefResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3554
    const-string v0, "Received update VoltePref response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3555
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->access$3300(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3556
    return-void
.end method
