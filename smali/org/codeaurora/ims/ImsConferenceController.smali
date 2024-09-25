.class public Lorg/codeaurora/ims/ImsConferenceController;
.super Ljava/lang/Object;
.source "ImsConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;,
        Lorg/codeaurora/ims/ImsConferenceController$Listener;,
        Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;,
        Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;
    }
.end annotation


# static fields
.field private static final EVENT_CONFERENCE:I = 0x1

.field private static final EVENT_CONFERENCE_CALL_STATE_COMPLETED:I = 0x3

.field private static final EVENT_HANGUP_NETWORK_HELD_PARTICIPANT:I = 0x5

.field private static final EVENT_REFRESH_CONF_INFO:I = 0x2

.field private static final EVENT_RESUME_NETWORK_HELD_PARTICIPANT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConferenceController"


# instance fields
.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

.field private mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

.field private mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mIsConferenceCallStateCompleted:Z

.field private mIsConferenceResponseReceived:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsConferenceController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;


# direct methods
.method static bridge synthetic -$$Nest$mhandleConferenceCompleted(Lorg/codeaurora/ims/ImsConferenceController;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConferenceResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHangupResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->handleHangupResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResumeResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->handleResumeResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogi(Lorg/codeaurora/ims/ImsConferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 4
    .param p1, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceClassTracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    .line 53
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    .line 55
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    .line 166
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 167
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mContext:Landroid/content/Context;

    .line 168
    iput-object p3, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 169
    new-instance v1, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;-><init>(Lorg/codeaurora/ims/ImsConferenceController;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    .line 170
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->registerListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)V

    .line 171
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForConferenceCallStateCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 174
    return-void
.end method

.method private getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-nez v0, :cond_0

    .line 462
    const-string v0, "getCallSession: ImsServiceClassTracker is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method private getCallSessionDriverCallState(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 2
    .param p1, "activeCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 448
    if-nez p1, :cond_0

    .line 449
    const-string v0, "getCallSessionDriverCallState: activeCallSession is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 450
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 456
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 457
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    :goto_0
    return-object v1
.end method

.method private getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 2
    .param p1, "state"    # I

    .line 421
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallSessionWithMptyBitSet session = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object v0

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method private handleConferenceCompleted()V
    .locals 1

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    .line 558
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    if-nez v0, :cond_0

    .line 560
    return-void

    .line 563
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResult()V

    .line 564
    return-void
.end method

.method private handleConferenceResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    .line 538
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    .line 542
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 543
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResult()V

    .line 544
    return-void

    .line 547
    :cond_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    if-nez v0, :cond_3

    .line 549
    return-void

    .line 552
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResult()V

    .line 553
    return-void
.end method

.method private handleHangupResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 530
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hangup error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceFailure()V

    .line 534
    return-void
.end method

.method private handleResumeResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 512
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionDriverCallState(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    .line 518
    const-string v0, "handleResumeResponse: Hangup call due to explicit resume operation failed"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logd(Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f5

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    .line 521
    const/4 v8, 0x5

    invoke-virtual {v0, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 519
    invoke-virtual/range {v1 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 522
    return-void

    .line 525
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceFailure()V

    .line 526
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 576
    const-string v0, "ImsConferenceController"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 588
    const-string v0, "ImsConferenceController"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 572
    const-string v0, "ImsConferenceController"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 580
    const-string v0, "ImsConferenceController"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 584
    const-string v0, "ImsConferenceController"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method private notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V
    .locals 2
    .param p1, "conferenceState"    # Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
    .param p2, "isSuccess"    # Z

    .line 157
    const-string v0, "notifyConferenceStateChanged"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 159
    .local v1, "listener":Lorg/codeaurora/ims/ImsConferenceController$Listener;
    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/ImsConferenceController$Listener;->onConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 160
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsConferenceController$Listener;
    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method private processConferenceFailure()V
    .locals 2

    .line 249
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 250
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 251
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 252
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->cleanupConferenceAttempt()V

    .line 253
    return-void
.end method

.method private processConferenceResult()V
    .locals 4

    .line 256
    const-string v0, "Conference response received. Processing final result."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 264
    .local v0, "activeCs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 268
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-boolean v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V

    .line 273
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object v0, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 275
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-boolean v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v2, :cond_1

    .line 276
    const-string v2, "Setting mIsConferenceHostSession to true"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 277
    iput-boolean v1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 287
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 288
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object v3, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 294
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-boolean v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v2, :cond_3

    .line 295
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 303
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 304
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 305
    const-string v2, "processConferenceResult: close conf host session"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->close()V

    goto :goto_0

    .line 309
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 313
    :cond_4
    :goto_0
    sget-object v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 314
    sget-object v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-direct {p0, v2, v1}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 317
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->cleanupConferenceAttempt()V

    .line 318
    return-void
.end method


# virtual methods
.method cleanupConferenceAttempt()V
    .locals 2

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 212
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    .line 214
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    .line 215
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    .line 216
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 217
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 218
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 177
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->unregisterListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)Z

    .line 178
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRefreshConfInfo(Landroid/os/Handler;)V

    .line 179
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForConferenceCallStateCompleted(Landroid/os/Handler;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    .line 181
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mContext:Landroid/content/Context;

    .line 182
    return-void
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;

    .line 431
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 432
    const-string v0, "getCallSessionByState: ImsServiceClassTracker is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 433
    return-object v1

    .line 436
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 438
    .local v0, "csList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    const-string v2, "getCallSessionByState: there are no call sessions"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 440
    return-object v1

    .line 443
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object v1
.end method

.method public getConferenceState()Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 568
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleConferenceResult()V
    .locals 3

    .line 222
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionDriverCallState(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    .line 236
    const-string v0, "handleConferenceResult: Resume network HELD call"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logd(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 238
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v2

    .line 237
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->resume(Landroid/os/Message;I)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceFailure()V

    .line 242
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceResult()V

    .line 246
    return-void
.end method

.method public handleRefreshConfInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 377
    const-string v0, "handleRefreshConfInfo"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 379
    if-nez p1, :cond_0

    .line 380
    const-string v0, "handleRefreshConfInfo: AsyncResult is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 381
    return-void

    .line 384
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRefreshConfInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 386
    return-void

    .line 389
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 390
    const-string v0, "handleRefreshConfInfo: ConfInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 391
    return-void

    .line 394
    :cond_2
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ConfInfo;

    .line 395
    .local v0, "confRefreshInfo":Lorg/codeaurora/ims/ConfInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ConfInfo;->getConfInfoUri()[B

    move-result-object v1

    .line 396
    .local v1, "confInfoBytes":[B
    invoke-virtual {v0}, Lorg/codeaurora/ims/ConfInfo;->getConfCallState()I

    move-result v2

    .line 397
    .local v2, "confCallState":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v4

    .line 398
    .local v3, "state":I
    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v5

    .line 400
    .local v5, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_5

    array-length v6, v1

    if-lt v6, v4, :cond_5

    if-nez v5, :cond_4

    goto :goto_1

    .line 406
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRefreshConfInfo: confCallState = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", callSession = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v5, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyConfInfo([B)V

    .line 416
    return-void

    .line 401
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRefreshConfInfo: confInfoBytes: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " CallSession: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public isInProgress()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    sget-object v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mayBeUpdateMultipartyState(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 2
    .param p1, "cs"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "isMultiParty"    # Z

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mayBeUpdateMultipartyState : CallSession isMpty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMultiParty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 147
    const-string v0, "mayBeUpdateMultipartyState : no change in mpty"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 148
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 152
    .local v1, "listener":Lorg/codeaurora/ims/ImsConferenceController$Listener;
    invoke-interface {v1, p2}, Lorg/codeaurora/ims/ImsConferenceController$Listener;->onConferenceParticipantStateChanged(Z)V

    .line 153
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsConferenceController$Listener;
    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method

.method public processNewMptyCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p1, "cs"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V

    .line 199
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 200
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_1
    :goto_0
    const-string v0, "processNewMptyCall: callSession is phantom conference call"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logd(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 92
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    const-string v0, "registerListener :: duplicate Listener!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logw(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 4
    .param p1, "hostSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conference request being requested by session = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string v0, "sendConferenceRequest: in middle of merge process, ignore."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 325
    return-void

    .line 328
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;-><init>(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult-IA;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    .line 329
    iput-object p1, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 335
    iget-object v0, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 339
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 340
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_1

    .line 341
    const-string v1, "sendConferenceRequest: there is no ACTIVE call session"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceFailure()V

    .line 343
    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object v0, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 348
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 349
    if-nez v0, :cond_2

    .line 350
    const-string v1, "sendConferenceRequest: there is no HOLD call session"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceFailure()V

    .line 352
    return-void

    .line 354
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object v0, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 357
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-boolean v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-boolean v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    if-eqz v1, :cond_4

    .line 359
    :cond_3
    const-string v1, "sendConferenceRequest: Setting should have transient session to false "

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-boolean v2, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    .line 363
    :cond_4
    sget-object v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 366
    sget-object v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 369
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->conference(Landroid/os/Message;)V

    .line 370
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 111
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
