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

    .line 3358
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3435
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3436
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendImsReasonInfo rr is NULL for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3438
    return-void

    .line 3440
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Response: errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3442
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3443
    return-void
.end method


# virtual methods
.method public exitSmsCallBackModeResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3753
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3754
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3755
    const-string v1, "exitSmsCallBackModeResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3756
    return-void

    .line 3758
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3759
    return-void
.end method

.method public onAddParticipantResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3651
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3652
    return-void
.end method

.method public onAnswerResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3470
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3471
    return-void
.end method

.method public onCancelModifyCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3607
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3608
    return-void
.end method

.method public onCancelPendingUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3693
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3694
    return-void
.end method

.method public onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3510
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3511
    return-void
.end method

.method public onDeflectCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3656
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3657
    return-void
.end method

.method public onDialResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3365
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3366
    return-void
.end method

.method public onExitEmergencyCallbackModeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3577
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3578
    return-void
.end method

.method public onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3618
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3619
    return-void
.end method

.method public onGetCallWaitingResponse(II[I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "response"    # [I

    .line 3550
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3551
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3552
    const-string v1, "onGetCallWaitingResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3553
    return-void

    .line 3556
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3557
    return-void
.end method

.method public onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clipProvisionStatus"    # Lorg/codeaurora/ims/SuppService;

    .line 3516
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3517
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3518
    const-string v1, "onGetClipResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3519
    return-void

    .line 3522
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3523
    return-void
.end method

.method public onGetClirResponse(II[I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clirInfo"    # [I

    .line 3527
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3528
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3529
    const-string v1, "onGetClirResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3530
    return-void

    .line 3533
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3534
    return-void
.end method

.method public onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lorg/codeaurora/ims/SuppService;

    .line 3566
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3567
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3568
    const-string v1, "onGetColrResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3569
    return-void

    .line 3572
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3573
    return-void
.end method

.method public onGetConfigResponse(IILjava/lang/Object;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 3380
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3381
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3382
    const-string v1, "onGetConfigResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3383
    return-void

    .line 3386
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3387
    return-void
.end method

.method public onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "subConfigInfo"    # Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 3667
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3668
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3669
    const-string v1, "onGetImsSubConfigResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3670
    return-void

    .line 3673
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3674
    return-void
.end method

.method public onGetRegistrationResponse(IILorg/codeaurora/ims/ImsRegistrationInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "registration"    # Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 3481
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3482
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3483
    const-string v1, "onGetRegistrationResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3484
    return-void

    .line 3487
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3488
    return-void
.end method

.method public onGetRtpErrorStatisticsResponse(IIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetErrorCount"    # J

    .line 3641
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3642
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3643
    const-string v1, "onGetRtpErrorStatisticsResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3644
    return-void

    .line 3646
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3647
    return-void
.end method

.method public onGetRtpStatisticsResponse(IIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetCount"    # J

    .line 3630
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3631
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3632
    const-string v1, "onGetRtpStatisticsResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3633
    return-void

    .line 3635
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3636
    return-void
.end method

.method public onHangupResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3457
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3459
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;)V

    .line 3460
    .local v0, "motoExtTM":Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getAndResetInTestEmergencyCall(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3461
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v1, :cond_0

    .line 3462
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    invoke-virtual {v1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant()V

    .line 3466
    :cond_0
    return-void
.end method

.method public onHoldResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3452
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3453
    return-void
.end method

.method public onModifyCallConfirmResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3612
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3613
    return-void
.end method

.method public onModifyCallInitiateResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3602
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3603
    return-void
.end method

.method public onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "timerInfo"    # [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 3539
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3540
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3541
    const-string v1, "onQueryCallForwardStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3542
    return-void

    .line 3545
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3546
    return-void
.end method

.method public onQueryMultiSimVoiceCapabilityResponse(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "voiceCapability"    # I

    .line 3743
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3744
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3745
    const-string v1, "onQueryMultiSimVoiceCapabilityResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3746
    return-void

    .line 3748
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3749
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

    .line 3403
    .local p3, "serviceStatusInfoList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3404
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3405
    const-string v1, "onQueryServiceStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3406
    return-void

    .line 3409
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3410
    return-void
.end method

.method public onQuerySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ssacInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    .line 3813
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3814
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3815
    return-void

    .line 3818
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->ssacInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 3820
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3822
    return-void
.end method

.method public onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "virtualLineInfo"    # Lorg/codeaurora/ims/VirtualLineInfo;

    .line 3709
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3710
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3711
    const-string v1, "onQueryVirtualLineInfoResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3712
    return-void

    .line 3714
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3715
    return-void
.end method

.method public onQueryVoltePrefResponse(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "voltePref"    # I

    .line 3790
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3791
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3792
    return-void

    .line 3794
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->voltePrefFromHal(I)Ljava/lang/Object;

    move-result-object v1

    .line 3795
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3796
    return-void
.end method

.method public onQueryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "vopsInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    .line 3802
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3803
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3804
    return-void

    .line 3806
    :cond_0
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->vopsInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 3808
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3809
    return-void
.end method

.method public onRegisterMultiIdentityLinesResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3698
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3699
    return-void
.end method

.method public onRequestRegistrationChangeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3475
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3476
    return-void
.end method

.method public onResumeResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3447
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3448
    return-void
.end method

.method public onSendDtmfResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3582
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3583
    return-void
.end method

.method public onSendGeolocationInfoResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3661
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3662
    return-void
.end method

.method public onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "response"    # Lorg/codeaurora/ims/sms/SmsResponse;

    .line 3370
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3371
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3372
    const-string v1, "onSendImsSmsResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3373
    return-void

    .line 3375
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3376
    return-void
.end method

.method public onSendRttMessageResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3703
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3704
    return-void
.end method

.method public onSendSipDtmfResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3683
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3684
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3685
    const-string v1, "onSendSipDtmfResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3686
    return-void

    .line 3688
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3689
    return-void
.end method

.method public onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 3678
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->sendImsReasonInfo(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3679
    return-void
.end method

.method public onSendVosActionInfoResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3773
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3774
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3775
    const-string v1, "onSendVosActionInfoResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3776
    return-void

    .line 3778
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3779
    return-void
.end method

.method public onSendVosSupportStatusResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3763
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3764
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3765
    const-string v1, "onSendVosSupportStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3766
    return-void

    .line 3768
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3769
    return-void
.end method

.method public onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardStatusInfo"    # Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 3720
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3721
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3722
    const-string v1, "onSetCallForwardStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3723
    return-void

    .line 3726
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCallForwardStatusResponse:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3727
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3728
    return-void
.end method

.method public onSetClirResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3561
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3562
    return-void
.end method

.method public onSetConfigResponse(IILjava/lang/Object;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 3391
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3392
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3393
    const-string v1, "onSetConfigResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3394
    return-void

    .line 3397
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3398
    return-void
.end method

.method public onSetMediaConfigurationResponse(II)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3732
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3733
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3734
    const-string v1, "onSetMediaConfigurationResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3735
    return-void

    .line 3737
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3738
    return-void
.end method

.method public onSetServiceStatusResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3414
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3415
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3416
    const-string v1, "onSetServiceStatusResponse  rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3417
    return-void

    .line 3421
    :cond_0
    :try_start_0
    iget-object v1, v0, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 3422
    .local v1, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 3427
    .local v2, "orgMsg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 3428
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v3, v0, p2, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3431
    .end local v1    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v2    # "orgMsg":Landroid/os/Message;
    goto :goto_0

    .line 3429
    :catch_0
    move-exception v1

    .line 3430
    .local v1, "ex":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetServiceStatusResponse exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3432
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method public onSetSuppServiceNotificationResponse(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "serviceStatusClass"    # I

    .line 3624
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3625
    return-void
.end method

.method public onSetUiTTYModeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3597
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3598
    return-void
.end method

.method public onStartDtmfResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3587
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3588
    return-void
.end method

.method public onStopDtmfResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3592
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3593
    return-void
.end method

.method public onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppSvcResponse"    # Lorg/codeaurora/ims/SuppSvcResponse;

    .line 3493
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 3494
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 3495
    const-string v1, "onSuppServiceStatusResponse rr is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3496
    return-void

    .line 3499
    :cond_0
    iget v1, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    .line 3500
    new-instance v1, Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 3501
    invoke-virtual {p3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/codeaurora/ims/CallForwardStatusInfo;-><init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V

    .line 3502
    .local v1, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v2, v0, p2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3503
    .end local v1    # "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    goto :goto_0

    .line 3504
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v1, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 3506
    :goto_0
    return-void
.end method

.method public onUpdateVoltePrefResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 3784
    const-string v0, "Received update VoltePref response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3785
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->-$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V

    .line 3786
    return-void
.end method
