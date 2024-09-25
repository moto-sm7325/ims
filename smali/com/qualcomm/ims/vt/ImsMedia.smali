.class public Lcom/qualcomm/ims/vt/ImsMedia;
.super Landroid/os/Handler;
.source "ImsMedia.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsConferenceController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;,
        Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    }
.end annotation


# static fields
.field private static final AR_DISABLED:I = 0x0

.field private static final AR_ENABLED:I = 0x1

.field private static final AR_PENDING:I = 0x2

.field public static final AR_REQUEST_SUCCESS:I = 0x0

.field public static final CACHED_MEDIA_EVENT:I = 0x64

.field public static final CAMERA_FRAME_RATE_CHANGE_EVT:I = 0xa

.field public static final CAMERA_PARAM_READY_EVT:I = 0x1

.field public static final DATA_USAGE_EVT:I = 0x8

.field public static final DEVICE_READY_EVENT:I = 0xb

.field public static final DISPLAY_MODE_EVT:I = 0x5

.field public static final DPL_INIT_FAILURE:I = -0x1

.field public static final DPL_INIT_MULTIPLE:I = -0x2

.field public static final DPL_INIT_SUCCESSFUL:I = 0x0

.field private static final LOOPBACK_MODE_FPS:I = 0x14

.field private static final LOOPBACK_MODE_HEIGHT:I = 0x90

.field private static final LOOPBACK_MODE_WIDTH:I = 0xb0

.field private static final MAX_HEIGHT:I = 0x280

.field private static final MAX_WIDTH:I = 0x1e0

.field public static final MEDIA_EVENT:I = 0x0

.field public static final PEER_RESOLUTION_CHANGE_EVT:I = 0x6

.field public static final PLAYER_START_EVENT:I = 0x3

.field public static final PLAYER_STATE_STARTED:I = 0x0

.field public static final PLAYER_STATE_STOPPED:I = 0x1

.field public static final PLAYER_STOP_EVENT:I = 0x4

.field private static final SCREEN_SHARE_DISABLED:I = 0x0

.field private static final SCREEN_SHARE_ENABLED:I = 0x1

.field private static final SCREEN_SHARE_PENDING:I = 0x2

.field public static final START_READY_EVT:I = 0x2

.field public static final STOP_READY_EVT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsMedia"

.field public static final VIDEO_QUALITY_EVT:I = 0x7

.field private static mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mInstance:Lcom/qualcomm/ims/vt/ImsMedia;


# instance fields
.field private mArStatus:I

.field private mCachedMediaEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMediaLoopback:Z

.field private mIsParamReady:Z

.field private mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

.field private final mMediaStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNegotiatedFps:I

.field private mNegotiatedHeight:I

.field private mNegotiatedWidth:I

.field private mPeerHeight:I

.field private mPeerWidth:I

.field private mRecordingSurface:Landroid/view/Surface;

.field private mScreenShareStatus:I

.field private mSharedDisplayHeight:I

.field private mSharedDisplayWidth:I

.field private mShouldCacheMediaEvents:Z

.field private mSurface:Landroid/view/Surface;

.field private mUIOrientationMode:I

.field private mVideoQualityLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    const-string v0, "imsmedia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 156
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;-><init>(Landroid/os/Looper;)V

    .line 157
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 160
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    const/16 v0, 0xf0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 113
    const/16 v1, 0x140

    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 114
    const/4 v2, 0x2

    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    .line 115
    const/16 v2, 0x14

    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:I

    .line 116
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayWidth:I

    .line 117
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayHeight:I

    .line 119
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    .line 120
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 125
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    .line 127
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    .line 128
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 129
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    .line 131
    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 132
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 135
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 161
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->initializemIsMediaLoopback()V

    .line 162
    return-void
.end method

.method private calculateSharedDisplayParams(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 420
    int-to-double v0, p1

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    int-to-double v2, p2

    iget v4, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 421
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 420
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 422
    .local v0, "scalingFactor":I
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 423
    const/16 v0, 0x8

    .line 425
    :cond_0
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayWidth:I

    .line 426
    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayHeight:I

    .line 428
    const/16 v3, 0x280

    const/16 v4, 0x1e0

    if-ge v1, v4, :cond_1

    if-lt v2, v3, :cond_2

    .line 429
    :cond_1
    const-string v1, "calculateSharedDisplayParams exceed max resolution and reset to default"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 430
    iput v4, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayWidth:I

    .line 431
    iput v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayHeight:I

    .line 433
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateSharedDisplayParams mSharedDisplayWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSharedDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method private clearMediaEventCache()V
    .locals 1

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 321
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    return-void
.end method

.method private doOnCachedMediaEvent()V
    .locals 6

    .line 300
    const-string v0, "doOnCachedMediaEvent: scheduling the cache"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    const-string v0, "VT lib deinitialized. Do not process cached events"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    .line 304
    return-void

    .line 307
    :cond_0
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 309
    .local v1, "event":Landroid/util/Pair;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 310
    .local v2, "eventId":I
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 311
    .local v3, "mediaId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doOnCachedMediaEvent: scheduling eventId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mediaId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, v2, v3}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnMediaEvent(II)V

    .line 314
    .end local v1    # "event":Landroid/util/Pair;
    .end local v2    # "eventId":I
    .end local v3    # "mediaId":I
    goto :goto_0

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    .line 316
    monitor-exit p0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doOnMediaEvent(II)V
    .locals 4
    .param p1, "eventId"    # I
    .param p2, "mediaId"    # I

    .line 649
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 750
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown event id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 665
    :pswitch_1
    const-string v1, "Received DEVICE_READY_EVENT."

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 666
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    const-string v2, "mRecordingSurface = "

    if-ne v1, v0, :cond_0

    .line 667
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecordingSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_a

    .line 670
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayWidth:I

    iget v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayHeight:I

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    goto/16 :goto_4

    .line 673
    :cond_0
    iget v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-ne v3, v0, :cond_1

    .line 674
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecordingSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_a

    .line 677
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    iget v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    goto/16 :goto_4

    .line 680
    :cond_1
    if-eqz v1, :cond_2

    if-nez v3, :cond_a

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_3

    .line 684
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, p2, v1, v2, v2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    .line 687
    :cond_3
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->onCameraConfigChanged(I)V

    goto/16 :goto_4

    .line 741
    :pswitch_2
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecorderFrameRate()I

    move-result v0

    .line 742
    .local v0, "rate":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received CAMERA_FRAME_RATE_CHANGE_EVT, rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 743
    if-lez v0, :cond_a

    .line 744
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 745
    .local v2, "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    invoke-interface {v2, p2, v0}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onUpdateRecorderFrameRate(II)V

    .line 746
    .end local v2    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    goto :goto_0

    :cond_4
    goto/16 :goto_4

    .line 707
    .end local v0    # "rate":I
    :pswitch_3
    const-string v0, "Received STOP_READY_EVT"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 709
    .local v1, "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    invoke-interface {v1, p2}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingDisabled(I)V

    .line 710
    .end local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    goto :goto_1

    .line 711
    :cond_5
    goto/16 :goto_4

    .line 734
    :pswitch_4
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetVideoQualityIndication()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received VIDEO_QUALITY_EVT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_a

    .line 737
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-interface {v0, p2, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onVideoQualityEvent(II)V

    goto/16 :goto_4

    .line 691
    :pswitch_5
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetPeerHeight()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    .line 692
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetPeerWidth()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received PEER_RESOLUTION_CHANGE_EVENT. Updating peer values mPeerHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPeerWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_a

    .line 696
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-interface {v0, p2, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPeerResolutionChanged(III)V

    goto/16 :goto_4

    .line 713
    :pswitch_6
    const-string v0, "Received DISPLAY_MODE_EVT"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetUIOrientationMode()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received DISPLAY_MODE_EVT mUIOrientationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_a

    .line 717
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    invoke-interface {v0, p2, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onOrientationModeChanged(II)V

    goto :goto_4

    .line 728
    :pswitch_7
    const-string v1, "Received PLAYER_STOP_EVT"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 729
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v1, :cond_a

    .line 730
    invoke-interface {v1, p2, v0}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(II)V

    goto :goto_4

    .line 721
    :pswitch_8
    const-string v0, "Received PLAYER_START_EVT"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_a

    .line 723
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onPlayerStateChanged(II)V

    goto :goto_4

    .line 700
    :pswitch_9
    const-string v0, "Received START_READY_EVT. Camera recording can be started"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 702
    .restart local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    invoke-interface {v1, p2}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onRecordingEnabled(I)V

    .line 703
    .end local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    goto :goto_2

    .line 704
    :cond_6
    goto :goto_4

    .line 651
    :pswitch_a
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->updatePreviewParams()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    if-nez v1, :cond_7

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-nez v1, :cond_7

    .line 654
    const-string v1, "Received PARAM_READY_EVT and not in Screen Share modeOr AR call, Updating negotiated values"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 656
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->onCameraConfigChanged(I)V

    goto :goto_3

    .line 657
    :cond_7
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 658
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->initiateScreenShare()V

    goto :goto_3

    .line 659
    :cond_8
    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    if-ne v1, v2, :cond_9

    .line 660
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->setLocalRenderingParams(Z)V

    .line 662
    :cond_9
    :goto_3
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    .line 663
    nop

    .line 752
    :cond_a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/ImsMedia;
    .locals 2

    const-class v0, Lcom/qualcomm/ims/vt/ImsMedia;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-direct {v1}, Lcom/qualcomm/ims/vt/ImsMedia;-><init>()V

    sput-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 149
    :cond_0
    sget-object v1, Lcom/qualcomm/ims/vt/ImsMedia;->mInstance:Lcom/qualcomm/ims/vt/ImsMedia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;

    .line 843
    if-nez p0, :cond_0

    .line 844
    const-string v0, "surface is null"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    .line 845
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 847
    :cond_0
    new-instance v0, Landroid/util/Size;

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetSurfaceWidth(Landroid/view/Surface;)I

    move-result v1

    invoke-static {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetSurfaceHeight(Landroid/view/Surface;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z
    .locals 1
    .param p0, "a"    # Landroid/view/Surface;
    .param p1, "b"    # Landroid/view/Surface;

    .line 851
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 852
    const/4 v0, 0x1

    return v0

    .line 853
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 856
    :cond_1
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeHaveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v0

    return v0

    .line 854
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private initializemIsMediaLoopback()V
    .locals 3

    .line 290
    const-string v0, "net.lte.VT_LOOPBACK_ENABLE"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, "property":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    .line 292
    return-void
.end method

.method private initiateScreenShare()V
    .locals 2

    .line 383
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayWidth:I

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayHeight:I

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->calculateSharedDisplayParams(II)V

    .line 384
    nop

    .line 385
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayWidth:I

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayHeight:I

    .line 384
    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSharedDisplayParameters(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 387
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 895
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 899
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 903
    const-string v0, "VideoCall_ImsMedia"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return-void
.end method

.method private static native nativeDeInit()V
.end method

.method private static native nativeGetNegotiatedFPS()I
.end method

.method private static native nativeGetNegotiatedHeight()I
.end method

.method private static native nativeGetNegotiatedWidth()I
.end method

.method private static native nativeGetPeerHeight()I
.end method

.method private static native nativeGetPeerWidth()I
.end method

.method private static native nativeGetRecorderFrameRate()I
.end method

.method private static native nativeGetRecordingSurface()Landroid/view/Surface;
.end method

.method private static native nativeGetSurfaceHeight(Landroid/view/Surface;)I
.end method

.method private static native nativeGetSurfaceWidth(Landroid/view/Surface;)I
.end method

.method private static native nativeGetUIOrientationMode()I
.end method

.method private static native nativeGetVideoQualityIndication()I
.end method

.method private static native nativeHandleRawFrame([B)V
.end method

.method private static native nativeHaveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V
.end method

.method private static native nativeRequestRtpDataUsage(I)I
.end method

.method private static native nativeSetCameraFacing(I)V
.end method

.method private static native nativeSetCameraInfo(II)V
.end method

.method private static native nativeSetDeviceOrientation(I)V
.end method

.method private static native nativeSetLocalRenderingParameters(II)I
.end method

.method private static native nativeSetSharedDisplayParameters(II)I
.end method

.method private static native nativeSetSurface(Landroid/view/Surface;)I
.end method

.method private static native nativeSetVideoImageBuffer([III)I
.end method

.method private static native nativesetLocalRenderingDelay(I)I
.end method

.method private notifyOnMediaInitialized()V
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 281
    .local v1, "listener":Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;
    :try_start_0
    invoke-interface {v1}, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;->onMediaInitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_1

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyOnMediaInitialized: Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 285
    .end local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method private onCameraConfigChanged(I)V
    .locals 9
    .param p1, "mediaId"    # I

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Camera values mNegotiatedWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNegotiatedHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRecordingSurface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 759
    .local v1, "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    iget v4, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    iget v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    iget v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:I

    iget-object v7, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    iget v8, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    move-object v2, v1

    move v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;->onCameraConfigChanged(IIIILandroid/view/Surface;I)V

    .line 762
    .end local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
    goto :goto_0

    .line 763
    :cond_0
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 764
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v0, :cond_1

    .line 765
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    iget v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V

    .line 769
    :cond_1
    return-void
.end method

.method private onDataUsageEvent(I[J)V
    .locals 2
    .param p1, "mediaId"    # I
    .param p2, "dataUsage"    # [J

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataUsageEvent mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 804
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 805
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 806
    iput-object p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 807
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 808
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    .line 809
    return-void
.end method

.method private processConferenceStateCompleted(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .line 355
    if-nez p1, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    .line 358
    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->scheduleCacheMediaEvents()V

    .line 363
    return-void
.end method

.method private registerForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 1
    .param p1, "instance"    # Lcom/qualcomm/ims/vt/ImsMedia;

    .line 629
    const-string v0, "Registering for Media Callback Events"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 630
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeRegisterForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 631
    return-void
.end method

.method private scheduleCacheMediaEvents()V
    .locals 6

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 369
    const-string v0, "persist.vendor.radio.schd.cache"

    .line 370
    .local v0, "PROPERTY_SCHEDULE_MEDIA_CACHE":Ljava/lang/String;
    const/16 v1, 0x8fc

    .line 373
    .local v1, "MEDIA_CACHE_DELAY":I
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 374
    .local v2, "msg":Landroid/os/Message;
    const-string v3, "persist.vendor.radio.schd.cache"

    const/16 v4, 0x8fc

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 375
    .local v3, "delay":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduling the cache with delay ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 376
    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    return-void
.end method

.method private setLocalRenderingParams(Z)V
    .locals 4
    .param p1, "enableAr"    # Z

    .line 441
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 442
    nop

    .line 443
    iget v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    iget v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 442
    invoke-static {v2, v3}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetLocalRenderingParameters(II)I

    move-result v2

    if-nez v2, :cond_0

    .line 444
    move v0, v1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    goto :goto_2

    .line 446
    :cond_1
    nop

    .line 447
    nop

    .line 446
    const/4 v2, -0x1

    invoke-static {v2, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetLocalRenderingParameters(II)I

    move-result v2

    if-nez v2, :cond_2

    .line 448
    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AR status after stopAR attempt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 451
    :goto_2
    return-void
.end method

.method private declared-synchronized updatePreviewParams()Z
    .locals 7

    monitor-enter p0

    .line 860
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsMediaLoopback:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 861
    const/16 v0, 0x90

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 862
    const/16 v0, 0xb0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 863
    const/16 v0, 0x14

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    monitor-exit p0

    return v1

    .line 866
    .end local p0    # "this":Lcom/qualcomm/ims/vt/ImsMedia;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedHeight()I

    move-result v0

    .line 867
    .local v0, "h":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedWidth()I

    move-result v2

    .line 868
    .local v2, "w":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetNegotiatedFPS()I

    move-result v3

    .line 869
    .local v3, "fps":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetUIOrientationMode()I

    move-result v4

    .line 872
    .local v4, "mode":I
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeGetRecordingSurface()Landroid/view/Surface;

    move-result-object v5

    .line 873
    .local v5, "surface":Landroid/view/Surface;
    iget v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    if-ne v6, v0, :cond_2

    iget v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    if-ne v6, v2, :cond_2

    iget v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:I

    if-ne v6, v3, :cond_2

    iget-object v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 876
    invoke-static {v6, v5}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v6, v4, :cond_1

    goto :goto_0

    .line 885
    :cond_1
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 878
    :cond_2
    :goto_0
    :try_start_2
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    .line 879
    iput v2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    .line 880
    iput v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:I

    .line 881
    iput-object v5, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    .line 882
    iput v4, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 883
    monitor-exit p0

    return v1

    .line 859
    .end local v0    # "h":I
    .end local v2    # "w":I
    .end local v3    # "fps":I
    .end local v4    # "mode":I
    .end local v5    # "surface":Landroid/view/Surface;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 639
    if-eqz p1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 642
    :cond_0
    return-void
.end method

.method public addMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    return-void
.end method

.method deInit()V
    .locals 2

    .line 254
    const-string v0, "deInit called"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    .line 256
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeDeInit()V

    .line 261
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 262
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    .line 263
    iput v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 264
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->clearMediaEventCache()V

    .line 265
    return-void
.end method

.method public enableArMode(Z)V
    .locals 2
    .param p1, "enableAr"    # Z

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableArMode enableAr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 458
    if-eqz p1, :cond_0

    .line 459
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    .line 460
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    if-eqz v0, :cond_1

    .line 461
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->setLocalRenderingParams(Z)V

    goto :goto_0

    .line 464
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->setLocalRenderingParams(Z)V

    .line 466
    :cond_1
    :goto_0
    return-void
.end method

.method public getNegotiatedFps()I
    .locals 2

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Fps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 542
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedFps:I

    return v0
.end method

.method public getNegotiatedHeight()I
    .locals 2

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 529
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedHeight:I

    return v0
.end method

.method public getNegotiatedWidth()I
    .locals 2

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negotiated Width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 537
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mNegotiatedWidth:I

    return v0
.end method

.method public getPeerHeight()I
    .locals 2

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Peer Height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 566
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerHeight:I

    return v0
.end method

.method public getPeerWidth()I
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Peer Width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 574
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mPeerWidth:I

    return v0
.end method

.method public getRecordingSurface()Landroid/view/Surface;
    .locals 2

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordingSurface= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mRecordingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getUIOrientationMode()I
    .locals 2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UI Orientation Mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 558
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mUIOrientationMode:I

    return v0
.end method

.method public getVideoQualityLevel()I
    .locals 2

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video Quality Level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 582
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mVideoQualityLevel:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 812
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown msg id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 835
    :sswitch_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnCachedMediaEvent()V

    .line 836
    goto :goto_0

    .line 822
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 824
    .local v0, "args2":Lorg/codeaurora/telephony/utils/SomeArgs;
    :try_start_0
    iget v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 825
    .local v1, "mediaId":I
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, [J

    .line 826
    .local v2, "dataUsage":[J
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    if-eqz v3, :cond_0

    .line 827
    new-instance v4, Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    invoke-direct {v4, v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;-><init>([J)V

    invoke-interface {v3, v1, v4}, Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;->onDataUsageChanged(ILorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .end local v1    # "mediaId":I
    .end local v2    # "dataUsage":[J
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 832
    nop

    .line 833
    goto :goto_0

    .line 831
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 832
    throw v1

    .line 814
    .end local v0    # "args2":Lorg/codeaurora/telephony/utils/SomeArgs;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 816
    .local v0, "args1":Lorg/codeaurora/telephony/utils/SomeArgs;
    :try_start_1
    iget v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    iget v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->doOnMediaEvent(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 818
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 819
    nop

    .line 820
    goto :goto_0

    .line 818
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 819
    throw v1

    .line 840
    .end local v0    # "args1":Lorg/codeaurora/telephony/utils/SomeArgs;
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x8 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method init()I
    .locals 4

    .line 225
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 226
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeInit()I

    move-result v0

    .line 227
    .local v0, "status":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init called error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 228
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 230
    :pswitch_0
    invoke-direct {p0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->registerForMediaEvents(Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 231
    goto :goto_0

    .line 233
    :pswitch_1
    sget-object v2, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    goto :goto_0

    .line 236
    :pswitch_2
    const-string v1, "Dpl init is called multiple times"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    .line 240
    :goto_0
    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->notifyOnMediaInitialized()V

    .line 243
    :cond_0
    return v0

    .line 247
    .end local v0    # "status":I
    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isArEnabled()Z
    .locals 2

    .line 481
    iget v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mArStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isMediaInitialized()Z
    .locals 1

    .line 891
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public notifyOnMediaDeinitialized()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 271
    .local v1, "listener":Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;
    :try_start_0
    invoke-interface {v1}, Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;->onMediaDeinitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    goto :goto_1

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyOnMediaDeinitialized: Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/ims/vt/ImsMedia;->loge(Ljava/lang/String;)V

    .line 275
    .end local v1    # "listener":Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 276
    :cond_0
    return-void
.end method

.method public onConferenceParticipantStateChanged(Z)V
    .locals 1
    .param p1, "isMultiParty"    # Z

    .line 345
    if-nez p1, :cond_0

    .line 346
    return-void

    .line 349
    :cond_0
    monitor-enter p0

    .line 350
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->scheduleCacheMediaEvents()V

    .line 351
    monitor-exit p0

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V
    .locals 2
    .param p1, "confState"    # Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
    .param p2, "isSuccess"    # Z

    .line 326
    monitor-enter p0

    .line 327
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConferenceStateChanged ConferenceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia$1;->$SwitchMap$org$codeaurora$ims$ImsConferenceController$ConferenceState:[I

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 338
    monitor-exit p0

    goto :goto_0

    .line 335
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->processConferenceStateCompleted(Z)V

    .line 336
    monitor-exit p0

    return-void

    .line 332
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    .line 333
    monitor-exit p0

    return-void

    .line 338
    :goto_0
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaEvent(II)V
    .locals 4
    .param p1, "eventId"    # I
    .param p2, "mediaId"    # I

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaEvent eventId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShouldCacheMediaEvents: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 777
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    const-string v0, "VT lib deinitialized. Do not cache events"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->logw(Ljava/lang/String;)V

    .line 779
    return-void

    .line 781
    :cond_0
    monitor-enter p0

    .line 783
    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mShouldCacheMediaEvents:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCachedMediaEvents:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 788
    :cond_1
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v0

    .line 789
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iput p1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 790
    iput p2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 791
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 792
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendMessage(Landroid/os/Message;)Z

    .line 794
    .end local v0    # "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit p0

    .line 795
    return-void

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;

    .line 645
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mCameraListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 646
    return-void
.end method

.method public removeMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;

    .line 177
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public requestCallDataUsage(I)V
    .locals 3
    .param p1, "mediaId"    # I

    .line 589
    const-string v0, "requestCallDataUsage"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 590
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeRequestRtpDataUsage(I)I

    move-result v0

    .line 591
    .local v0, "status":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCallDataUsage: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public sendCvoInfo(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCvoInfo orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 296
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetDeviceOrientation(I)V

    .line 297
    return-void
.end method

.method public setCameraFacing(Z)V
    .locals 3
    .param p1, "isFacingFront"    # Z

    .line 488
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 490
    .local v0, "facing":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing isFacingFront="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 491
    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetCameraFacing(I)V

    .line 492
    return-void
.end method

.method public setCameraInfo(II)V
    .locals 2
    .param p1, "facing"    # I
    .param p2, "mount"    # I

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraInfo facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 499
    invoke-static {p1, p2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetCameraInfo(II)V

    .line 500
    return-void
.end method

.method public setLocalRenderingDelay(I)V
    .locals 2
    .param p1, "delay"    # I

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalRenderingDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 474
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativesetLocalRenderingDelay(I)I

    .line 475
    return-void
.end method

.method public setMediaListener(Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .line 634
    const-string v0, "Registering for Media Listener"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 635
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mMediaListener:Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;

    .line 636
    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)Z
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 596
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 597
    const-string v0, "setPreviewImage: VT lib deinitialized so ignore"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 598
    return v1

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewImage: bitmap = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 604
    if-nez p1, :cond_1

    .line 605
    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v2, v2}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetVideoImageBuffer([III)I

    move-result v0

    .local v0, "status":I
    goto :goto_0

    .line 607
    .end local v0    # "status":I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 608
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 609
    .local v10, "width":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewImage: bitmap width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 611
    mul-int v2, v10, v0

    new-array v11, v2, [I

    .line 613
    .local v11, "argb":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v11

    move v5, v10

    move v8, v10

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 614
    invoke-static {v11, v10, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetVideoImageBuffer([III)I

    move-result v2

    move v0, v2

    .line 621
    .end local v10    # "width":I
    .end local v11    # "argb":[I
    .local v0, "status":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewImage: status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 622
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setSharedDisplayParams(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSharedDisplayParams width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 396
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayWidth:I

    .line 397
    iput p2, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSharedDisplayHeight:I

    .line 398
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 399
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mIsParamReady:Z

    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsMedia;->initiateScreenShare()V

    .line 402
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "st"    # Landroid/view/Surface;

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface mSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " st="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 509
    sget-object v0, Lcom/qualcomm/ims/vt/ImsMedia;->mInitCalledFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    const-string v0, "setSurface: init not completed. ignore!"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 511
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 517
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSurface(Landroid/view/Surface;)I

    .line 519
    :cond_1
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mSurface:Landroid/view/Surface;

    .line 520
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSurface(Landroid/view/Surface;)I

    .line 522
    :cond_2
    return-void
.end method

.method public stopScreenShare()V
    .locals 2

    .line 410
    const/4 v0, -0x1

    invoke-static {v0, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->nativeSetSharedDisplayParameters(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 411
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen Share status after stopScreenShare attempt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsMedia;->mScreenShareStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->log(Ljava/lang/String;)V

    .line 413
    return-void
.end method
