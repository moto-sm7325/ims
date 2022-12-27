.class public Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVideoCallProviderImpl.java"

# interfaces
.implements Lorg/codeaurora/ims/QImsSessionBase$Listener;


# static fields
.field private static final DBG:Z = true

.field private static final DELAY_BEFORE_SENDING_MS:I = 0xea60

.field public static final EVENT_POLL_DATAUSAGE:I = 0x2

.field private static final EVENT_SEND_SESSION_MODIFY_CALL_CONFIRM_DONE:I = 0x1

.field private static final EVENT_SEND_SESSION_MODIFY_REQUEST_DONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsVideoCallProviderImpl"

.field private static mStartDatausagePolling:Z


# instance fields
.field private lastDataUsage:[J

.field private mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mCamera:Lcom/qualcomm/ims/vt/CameraController;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mIsOpen:Z

.field private mMedia:Lcom/qualcomm/ims/vt/MediaController;

.field mRequestProfile:Landroid/telecom/VideoProfile;

.field mResponseProfile:Landroid/telecom/VideoProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "imsCallMod"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 61
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsVideocallProviderImpl instance created callSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " imsCallMod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 65
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 66
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 67
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 69
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;-><init>(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 37
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 37
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyConfirmDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 37
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleDataUsagePoll(Landroid/os/Message;)V

    return-void
.end method

.method private anyNegative([J)Z
    .locals 5
    .param p1, "data"    # [J

    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 325
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private handleDataUsagePoll(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDataUsagePoll msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onRequestCallDataUsage()V

    .line 255
    sget-boolean v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, "tMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 259
    .end local v0    # "tMsg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private handleSessionModifyConfirmDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSessionModifyConfirmDone msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 201
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 202
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    const/4 v1, 0x2

    .line 203
    .local v1, "status":I
    const/4 v2, 0x0

    .line 205
    .local v2, "responseProfile":Landroid/telecom/VideoProfile;
    if-eqz v0, :cond_1

    .line 206
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 207
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 208
    const-string v3, "Session modify confirm success"

    invoke-direct {p0, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x1

    .line 210
    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 212
    :cond_0
    const-string v3, "Session modify confirm error"

    invoke-direct {p0, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 213
    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v1

    .line 214
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 215
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v3

    const/4 v4, 0x4

    .line 214
    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v2

    goto :goto_0

    .line 219
    :cond_1
    const-string v3, "handleSessionModifyConfirmDone: null message object"

    invoke-direct {p0, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 221
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v1, v3, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 222
    return-void
.end method

.method private handleSessionModifyDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSessionModifyDone msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 229
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 230
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    const/4 v1, 0x2

    .line 231
    .local v1, "status":I
    if-eqz v0, :cond_1

    .line 232
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 234
    const-string v2, "Session modify success"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x1

    .line 236
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 238
    :cond_0
    const-string v2, "Session modify error"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 239
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v1

    .line 240
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 241
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    const/4 v3, 0x4

    .line 240
    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 245
    :cond_1
    const-string v2, "handleSessionModifyDone:null message object"

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 247
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v1, v2, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 248
    return-void
.end method

.method private isSessionValid()Z
    .locals 3

    .line 476
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 477
    .local v0, "isValid":Z
    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    if-nez v1, :cond_0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session is closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 480
    :cond_0
    return v0
.end method

.method private isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z
    .locals 2
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVideoPauseRequested requestProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 484
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCall_ImsVideoCallProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method private logString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 488
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCall_ImsVideoCallProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void
.end method


# virtual methods
.method getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method isOpen()Z
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isOpen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    return v0
.end method

.method public onActive(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActive session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v0

    .line 447
    .local v0, "videoState":I
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    .line 449
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 453
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 455
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    .line 457
    :goto_0
    return-void
.end method

.method public onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 10
    .param p1, "dataUsage"    # Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallDataUsageChanged: dataUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 305
    .local v0, "delta":[J
    invoke-virtual {p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteTxDataUsage()J

    move-result-wide v1

    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    sub-long/2addr v1, v5

    aput-wide v1, v0, v4

    .line 307
    invoke-virtual {p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteRxDataUsage()J

    move-result-wide v1

    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v5, 0x1

    aget-wide v6, v3, v5

    sub-long/2addr v1, v6

    aput-wide v1, v0, v5

    .line 309
    invoke-virtual {p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanTxDataUsage()J

    move-result-wide v1

    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v6, 0x2

    aget-wide v7, v3, v6

    sub-long/2addr v1, v7

    aput-wide v1, v0, v6

    .line 311
    invoke-virtual {p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanRxDataUsage()J

    move-result-wide v1

    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v7, 0x3

    aget-wide v8, v3, v7

    sub-long/2addr v1, v8

    aput-wide v1, v0, v7

    .line 313
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->anyNegative([J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    new-instance v2, Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    invoke-direct {v2, v0}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;-><init>([J)V

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    .line 315
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteTxDataUsage()J

    move-result-wide v2

    aput-wide v2, v1, v4

    .line 316
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteRxDataUsage()J

    move-result-wide v2

    aput-wide v2, v1, v5

    .line 317
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanTxDataUsage()J

    move-result-wide v2

    aput-wide v2, v1, v6

    .line 318
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanRxDataUsage()J

    move-result-wide v2

    aput-wide v2, v1, v7

    goto :goto_0

    .line 320
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative delta:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 435
    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "newCallType"    # I

    .line 439
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 407
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 408
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 409
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 410
    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    .line 411
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnected session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 402
    return-void
.end method

.method public onHold(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHold session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    .line 463
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 3

    .line 370
    const-string v0, "onRequestCallDataUsage"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    .line 374
    .local v0, "mediaId":I
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasMediaIdValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1, v0}, Lcom/qualcomm/ims/vt/MediaController;->requestCallDataUsage(I)V

    goto :goto_0

    .line 377
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestCallDataUsage: Invalid MediaId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 288
    const-string v0, "onRequestCameraCapabilities"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraController;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    .line 292
    .local v0, "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto :goto_0

    .line 295
    :cond_1
    const-string v1, "Error onRequestCameraCapabilities camera capabilities is null"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 297
    :goto_0
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSessionModifyRequest, videoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 179
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 180
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->isVideoPauseRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v2

    .line 192
    .local v2, "callType":I
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {v3, v0, v2, v1}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    .line 194
    .end local v0    # "newMsg":Landroid/os/Message;
    .end local v2    # "callType":I
    :goto_0
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSendSessionModifyResponse, responseProfile state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v0

    .line 277
    .local v0, "callType":I
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 280
    .local v1, "newMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lorg/codeaurora/ims/ImsCallModification;->acceptConnectionTypeChange(ILjava/util/Map;Landroid/os/Message;)V

    .line 281
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCamera, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/ims/vt/CameraController;->open(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 126
    :goto_0
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDeviceOrientation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setDeviceOrientation(I)V

    .line 159
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDisplaySurface, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setDisplaySurface(Landroid/view/Surface;)V

    .line 148
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPauseImage, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 389
    if-nez p1, :cond_2

    .line 390
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Ljava/lang/String;)V

    .line 396
    :cond_2
    :goto_0
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPreviewSurface, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/qualcomm/ims/vt/CameraController;->setPreviewSurface(Landroid/view/Surface;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 137
    return-void
.end method

.method public onSetZoom(F)V
    .locals 2
    .param p1, "value"    # F

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetZoom, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->setZoom(F)V

    .line 170
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnsolCallModify session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 420
    iget-object v0, p2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 421
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v0

    .line 422
    .local v0, "newVideoState":I
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 423
    .local v1, "vcp":Landroid/telecom/VideoProfile;
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 424
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    iget v2, p2, Lorg/codeaurora/ims/CallModify;->error:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsErrorToUiError(I)I

    move-result v2

    .line 427
    .local v2, "uiError":I
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 428
    .end local v2    # "uiError":I
    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 431
    :goto_0
    return-void
.end method

.method public onUpdateOrientationMode(I)V
    .locals 2
    .param p1, "orientationMode"    # I

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateOrientationMode orientation mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateOrientationMode(I)V

    .line 357
    return-void
.end method

.method public onUpdatePeerDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePeerDimensions width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changePeerDimensions(II)V

    .line 336
    return-void
.end method

.method public onUpdateRecordingSurface(Landroid/view/Surface;II)V
    .locals 2
    .param p1, "recordingSurface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateRecordingSurface recording surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecordingSurface(Landroid/view/Surface;II)V

    .line 363
    return-void
.end method

.method public onUpdateVideoQuality(I)V
    .locals 2
    .param p1, "videoQuality"    # I

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateVideoQuality video quality is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeVideoQuality(I)V

    .line 351
    return-void
.end method

.method public sendCameraStatus(Z)V
    .locals 1
    .param p1, "hasFailed"    # Z

    .line 339
    const-string v0, "sendCameraFailure"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 340
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 341
    :cond_0
    const/4 v0, 0x6

    :goto_0
    nop

    .line 343
    .local v0, "status":I
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleCallSessionEvent(I)V

    .line 344
    return-void
.end method

.method public setSharedDisplayParams(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSharedDisplayParams: width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/ims/vt/MediaController;->setSharedDisplayParams(II)V

    .line 99
    return-void
.end method

.method public stopScreenShare()V
    .locals 1

    .line 102
    const-string v0, "stopScreenShare"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/MediaController;->stopScreenShare()V

    .line 104
    return-void
.end method
