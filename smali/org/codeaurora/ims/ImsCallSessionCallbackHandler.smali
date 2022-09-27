.class public Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;
.super Ljava/lang/Object;
.source "ImsCallSessionCallbackHandler.java"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field public mListener:Landroid/telephony/ims/ImsCallSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "Constructor: start handler thread for callbacks."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V
    .locals 2
    .param p1, "copyFrom"    # Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "Copy Constructor: Pass the thread and callback handler refs."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p1, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 572
    const-string v0, "cleanup"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 576
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 578
    :cond_0
    return-void
.end method

.method private postDelayedRunnable(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayed posting to handler, delayMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 595
    :cond_0
    const-string v0, "Handler is null. Can\'t post delayed runnable!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    :goto_0
    return-void
.end method

.method private postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 581
    const-string v0, "posting to handler"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 585
    :cond_0
    const-string v0, "Handler is null. Can\'t post runnable!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    :goto_0
    return-void
.end method


# virtual methods
.method public callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 428
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda18;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsConferenceState;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 438
    return-void
.end method

.method public callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 158
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda6;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;IILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 174
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda7;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;IILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public callSessionHandoverStarted(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 140
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda8;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;IILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 220
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda10;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 233
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda19;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method public callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 246
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda11;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 77
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda12;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 64
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda13;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 90
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda20;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered()V
    .locals 1

    .line 395
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 410
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda21;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public callSessionMayHandover(II)V
    .locals 1
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I

    .line 190
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda5;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;II)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "activeCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 326
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda29;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method public callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 345
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda22;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public callSessionMergeStarted(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "newSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 306
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda30;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method public callSessionMultipartyStateChanged(Z)V
    .locals 1
    .param p1, "isMultiParty"    # Z

    .line 446
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda31;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Z)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 103
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda25;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 272
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda23;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 285
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda14;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method public callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 259
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda15;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method public callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 499
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda26;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method

.method public callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 473
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda28;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method public callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 486
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda16;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 496
    return-void
.end method

.method public callSessionRttModifyResponseReceived(I)V
    .locals 1
    .param p1, "status"    # I

    .line 460
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda3;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;I)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method public callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 1
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 378
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda27;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 117
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$1;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 127
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v1, :cond_0

    .line 129
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListener is null, delay 300ms callSessionTerminated :: reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const-wide/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    .line 135
    :goto_0
    return-void
.end method

.method public callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 536
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda24;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 546
    return-void
.end method

.method public callSessionTransferred()V
    .locals 1

    .line 552
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda1;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 562
    return-void
.end method

.method public callSessionTtyModeReceived(I)V
    .locals 1
    .param p1, "ttyMode"    # I

    .line 204
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda4;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;I)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 361
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda17;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method public callSessionUssdMessageReceived(ILjava/lang/String;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 518
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda9;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 565
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda2;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public synthetic lambda$callSessionConferenceStateUpdated$22$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 429
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionConferenceStateUpdated :: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceStateUpdated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionHandover$5$ImsCallSessionCallbackHandler(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 159
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHandover :: srcAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSessionListener;->onHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandover :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionHandoverFailed$6$ImsCallSessionCallbackHandler(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHandoverFailed :: srcAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSessionListener;->onHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandoverFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionHandoverStarted$4$ImsCallSessionCallbackHandler(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 141
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHandoverStarted :: srcAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHandoverStarted(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandoverStarted :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionHeld$9$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 221
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHeld :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHeld :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionHoldFailed$10$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 234
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHoldFailed :: reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionHoldReceived$11$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 247
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHoldReceived :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionInitiated$1$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 78
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInitiated :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionInitiating$0$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 65
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInitiating :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiating :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionInitiatingFailed$2$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInitiatingFailed :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiatingFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionInviteParticipantsRequestDelivered$20$ImsCallSessionCallbackHandler()V
    .locals 3

    .line 396
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "callSessionInviteParticipantsRequestDelivered"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestDelivered :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionInviteParticipantsRequestFailed$21$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 411
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInviteParticipantsRequestFailed reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionMayHandover$7$ImsCallSessionCallbackHandler(II)V
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I

    .line 191
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMayHandover :: srcAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSessionListener;->onMayHandover(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMayHandover :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionMergeComplete$16$ImsCallSessionCallbackHandler(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "activeCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 327
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMergeComplete :: activeCallSession ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeComplete :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionMergeFailed$17$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 346
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMergeFailed :: reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionMergeStarted$15$ImsCallSessionCallbackHandler(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "newSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 307
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMergeStarted :: newSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeStarted(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeStarted :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionMultipartyStateChanged$23$ImsCallSessionCallbackHandler(Z)V
    .locals 3
    .param p1, "isMultiParty"    # Z

    .line 447
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMultipartyStateChanged :: isMultiParty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMultipartyStateChanged :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionProgressing$3$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 104
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionProgressing :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionResumeFailed$13$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 273
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionResumeFailed :: reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionResumeReceived$14$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 286
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionResumeReceived :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionResumed$12$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 260
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionResumed :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionRttAudioIndicatorChanged$27$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 500
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttAudioIndicatorChanged :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttAudioIndicatorChanged :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionRttMessageReceived$25$ImsCallSessionCallbackHandler(Ljava/lang/String;)V
    .locals 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttMessageReceived :: rttMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttMessageReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionRttModifyRequestReceived$26$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 487
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttModifyRequestReceived :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttModifyRequestReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionRttModifyResponseReceived$24$ImsCallSessionCallbackHandler(I)V
    .locals 3
    .param p1, "status"    # I

    .line 461
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttModifyResponseReceived :: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttModifyResponseReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionSuppServiceReceived$19$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 3
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 379
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionSuppServiceReceived :: suppServiceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionTransferFailed$29$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 537
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionTransferFailed :: reasonInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTransferFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionTransferred$30$ImsCallSessionCallbackHandler()V
    .locals 3

    .line 553
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "callSessionTransferred. "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferred()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTransferred :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionTtyModeReceived$8$ImsCallSessionCallbackHandler(I)V
    .locals 3
    .param p1, "ttyMode"    # I

    .line 205
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionTtyModeReceived :: ttyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTtyModeReceived(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTtyModeReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionUpdated$18$ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 362
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionUpdated :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$callSessionUssdMessageReceived$28$ImsCallSessionCallbackHandler(ILjava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 519
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionUssdMessageReceived :: mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$dispose$31$ImsCallSessionCallbackHandler()V
    .locals 1

    .line 566
    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->cleanup()V

    .line 568
    return-void
.end method
