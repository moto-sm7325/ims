.class public Lcom/qualcomm/ims/vt/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
.implements Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;
.implements Lorg/codeaurora/ims/ICallListListener;
.implements Lorg/codeaurora/ims/QImsSessionBase$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sInstance:Lcom/qualcomm/ims/vt/MediaController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPauseImageMode:Z

.field private mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

.field private mMediaEventListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

.field private mNumberOfImsCallSessions:I

.field private mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qualcomm/ims/vt/MediaController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMedia(Lcom/qualcomm/ims/vt/MediaController;)Lcom/qualcomm/ims/vt/ImsMedia;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetPauseImage(Lcom/qualcomm/ims/vt/MediaController;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "VideoCall_MediaController"

    sput-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/qualcomm/ims/vt/ImsMedia;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    .line 51
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    .line 55
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 57
    invoke-virtual {p2, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/ims/vt/MediaController;->sExecutor:Ljava/util/concurrent/ExecutorService;

    .line 59
    return-void
.end method

.method private convertVideoQuality(I)I
    .locals 1
    .param p1, "videoQuality"    # I

    .line 341
    packed-switch p1, :pswitch_data_0

    .line 352
    const/4 v0, 0x4

    return v0

    .line 343
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 345
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 347
    :pswitch_2
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/MediaController;
    .locals 2

    const-class v0, Lcom/qualcomm/ims/vt/MediaController;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 71
    monitor-exit v0

    return-object v1

    .line 73
    :cond_0
    :try_start_1
    const-string v1, "getInstance sInstance= null"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lcom/qualcomm/ims/vt/ImsMedia;

    const-class v0, Lcom/qualcomm/ims/vt/MediaController;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/qualcomm/ims/vt/MediaController;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/ims/vt/MediaController;-><init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    sput-object v1, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-void

    .line 65
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MediaController: Multiple initialization"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "media":Lcom/qualcomm/ims/vt/ImsMedia;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isMediaInitialized()Z
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->isMediaInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPauseImageState()Z
    .locals 1

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    monitor-exit p0

    return v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 515
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 519
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 523
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method private maybeDeInitializeMedia(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 422
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->isMediaInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    const-string v0, "maybeInitializeMedia: De-initializing media"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 425
    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallTransmitStaticImage(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Landroid/graphics/Bitmap;)V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->notifyOnMediaDeinitialized()V

    .line 437
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qualcomm/ims/vt/MediaController$5;

    invoke-direct {v1, p0}, Lcom/qualcomm/ims/vt/MediaController$5;-><init>(Lcom/qualcomm/ims/vt/MediaController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 445
    :cond_1
    return-void
.end method

.method private maybeInitializeMedia()V
    .locals 2

    .line 408
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->isMediaInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    const-string v0, "maybeInitializeMedia: Initializing media"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 411
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qualcomm/ims/vt/MediaController$4;

    invoke-direct {v1, p0}, Lcom/qualcomm/ims/vt/MediaController$4;-><init>(Lcom/qualcomm/ims/vt/MediaController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 419
    :cond_0
    return-void
.end method

.method private setPauseImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    .line 214
    .local v0, "isPauseImageMode":Z
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v1, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->setPreviewImage(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 218
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseImage isPauseImageMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsPauseImageMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 221
    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    if-ne v1, v0, :cond_2

    .line 222
    monitor-exit p0

    return-void

    .line 225
    :cond_2
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mIsPauseImageMode:Z

    .line 226
    if-eqz v0, :cond_3

    .line 227
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v1, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    goto :goto_1

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v1, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 231
    .end local v0    # "isPauseImageMode":Z
    :goto_1
    monitor-exit p0

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 79
    const-string v0, "dispose()"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 80
    const-class v0, Lcom/qualcomm/ims/vt/MediaController;

    monitor-enter v0

    .line 81
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/MediaController;->maybeDeInitializeMedia(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 82
    iget-object v2, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v2, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V

    .line 83
    sput-object v1, Lcom/qualcomm/ims/vt/MediaController;->sInstance:Lcom/qualcomm/ims/vt/MediaController;

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onActive(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 503
    return-void
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 487
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/CallModify;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    .line 490
    :cond_0
    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "newCallType"    # I

    .line 494
    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    .line 498
    :cond_0
    return-void
.end method

.method public onCameraConfigChanged(IIIILandroid/view/Surface;I)V
    .locals 4
    .param p1, "mediaId"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "fps"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "orientationMode"    # I

    .line 243
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->isPauseImageState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const-string v0, "received camera config changed when not in pause image mode"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 245
    return-void

    .line 249
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 250
    .local v0, "provider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-nez v0, :cond_1

    .line 251
    const-string v1, "onCameraConfigChanged: ImsVideoCallProvider is not available"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 252
    return-void

    .line 255
    :cond_1
    new-instance v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-direct {v1, p2, p3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(II)V

    .line 256
    .local v1, "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraConfigChanged in hide me mode New capabilities = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 258
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 476
    return-void
.end method

.method public onDataUsageChanged(ILorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 3
    .param p1, "mediaId"    # I
    .param p2, "dataUsage"    # Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    .line 375
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 376
    .local v0, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_1

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataUsageChanged dataUsage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    .line 382
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v1

    .line 383
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVideoCallDataUsageInfo(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    goto :goto_0

    .line 386
    :cond_0
    const-string v2, "onDataUsageChanged: call session is null"

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    .line 388
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    goto :goto_1

    .line 389
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataUsageChanged: Call session video provider is null. Received mediaId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    .line 392
    :goto_1
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 472
    return-void
.end method

.method public onHold(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 507
    return-void
.end method

.method public onOrientationModeChanged(II)V
    .locals 2
    .param p1, "mediaId"    # I
    .param p2, "orientationMode"    # I

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationModeChanged to orientation mode- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 278
    .local v0, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdateOrientationMode(I)V

    goto :goto_0

    .line 281
    :cond_0
    const-string v1, "Call session video provider is null. Can\'t propagate onOrientationModeChanged event"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void
.end method

.method public onPeerResolutionChanged(III)V
    .locals 2
    .param p1, "mediaId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPeerResolutionChangeEvent width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 308
    .local v0, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p2, p3}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdatePeerDimensions(II)V

    goto :goto_0

    .line 311
    :cond_0
    const-string v1, "Active or Outgoing or Incoming call session video provider is null. Can\'t propagate OnPeerResolutionChanged event"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(II)V
    .locals 2
    .param p1, "mediaId"    # I
    .param p2, "state"    # I

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 325
    .local v0, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_1

    .line 326
    if-nez p2, :cond_0

    .line 327
    const/4 v1, 0x2

    goto :goto_0

    .line 328
    :cond_0
    const/4 v1, 0x1

    :goto_0
    nop

    .line 329
    .local v1, "status":I
    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleCallSessionEvent(I)V

    .line 330
    .end local v1    # "status":I
    goto :goto_1

    .line 331
    :cond_1
    const-string v1, "All call session video providers are null. Can\'t propagate onPlayerStateChanged event"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 334
    :goto_1
    return-void
.end method

.method public onRecordingDisabled(I)V
    .locals 0
    .param p1, "mediaId"    # I

    .line 271
    return-void
.end method

.method public onRecordingEnabled(I)V
    .locals 0
    .param p1, "mediaId"    # I

    .line 266
    return-void
.end method

.method public onRecordingSurfaceChanged(ILandroid/view/Surface;II)V
    .locals 2
    .param p1, "mediaId"    # I
    .param p2, "recordingSurface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingSurfaceChanged to surface- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 293
    .local v0, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p2, p3, p4}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdateRecordingSurface(Landroid/view/Surface;II)V

    goto :goto_0

    .line 296
    :cond_0
    const-string v1, "Call session video provider is null. Can\'t propagate onRecordingSurfaceChanged event"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionAdded callSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no:of call sessions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 399
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    .line 400
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 402
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    .line 405
    :cond_0
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0
    .param p1, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 464
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionRemoved callSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no:of call sessions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 451
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallSessionRemoved: Unknown session has been removed, Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->loge(Ljava/lang/String;)V

    .line 453
    return-void

    .line 455
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    .line 456
    invoke-virtual {p1, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->removeListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 457
    iget v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mNumberOfImsCallSessions:I

    if-nez v0, :cond_1

    .line 458
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->maybeDeInitializeMedia(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 460
    :cond_1
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0
    .param p1, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 468
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 480
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(Lorg/codeaurora/ims/CallModify;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/MediaController;->maybeInitializeMedia()V

    .line 483
    :cond_0
    return-void
.end method

.method public onUpdateRecorderFrameRate(II)V
    .locals 0
    .param p1, "mediaId"    # I
    .param p2, "rate"    # I

    .line 262
    return-void
.end method

.method public onVideoQualityEvent(II)V
    .locals 2
    .param p1, "mediaId"    # I
    .param p2, "videoQuality"    # I

    .line 361
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 362
    .local v0, "videoProvider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/MediaController;->convertVideoQuality(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onUpdateVideoQuality(I)V

    goto :goto_0

    .line 365
    :cond_0
    const-string v1, "Active call session video provider is null. Can\'t propagate OnVideoQualityChanged event"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->logw(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void
.end method

.method public requestCallDataUsage(I)V
    .locals 2
    .param p1, "mediaId"    # I

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCallDataUsage: mediaID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qualcomm/ims/vt/MediaController$3;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/ims/vt/MediaController$3;-><init>(Lcom/qualcomm/ims/vt/MediaController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceOrientation rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qualcomm/ims/vt/MediaController$2;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/ims/vt/MediaController$2;-><init>(Lcom/qualcomm/ims/vt/MediaController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplaySurface surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/qualcomm/ims/vt/MediaController;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qualcomm/ims/vt/MediaController$1;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/ims/vt/MediaController$1;-><init>(Lcom/qualcomm/ims/vt/MediaController;Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public setMediaEventListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .line 88
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController;->mMediaEventListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .line 89
    return-void
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_0

    .line 196
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->cancel(Z)Z

    move-result v0

    .line 197
    .local v0, "isCancelled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPauseImage cancelling old pauseImageTask isCancelled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 200
    .end local v0    # "isCancelled":Z
    :cond_0
    if-nez p1, :cond_1

    .line 202
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Landroid/graphics/Bitmap;)V

    .line 203
    return-void

    .line 206
    :cond_1
    new-instance v0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->getNegotiatedWidth()I

    move-result v2

    iget-object v3, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 207
    invoke-virtual {v3}, Lcom/qualcomm/ims/vt/ImsMedia;->getNegotiatedHeight()I

    move-result v3

    invoke-direct {v0, p0, v2, v3}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;-><init>(Lcom/qualcomm/ims/vt/MediaController;II)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mPauseImageTask:Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;

    .line 208
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    return-void
.end method

.method public setSharedDisplayParams(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSharedDisplayParams width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->setSharedDisplayParams(II)V

    .line 94
    return-void
.end method

.method public stopScreenShare()V
    .locals 1

    .line 97
    const-string v0, "stopScreenShare"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->log(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->stopScreenShare()V

    .line 99
    return-void
.end method
