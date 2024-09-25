.class public Lorg/codeaurora/ims/ImsRadioHidl;
.super Ljava/lang/Object;
.source "ImsRadioHidl.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;,
        Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;
    }
.end annotation


# static fields
.field static final IIMS_RADIO_SERVICE_NAME:Ljava/lang/String; = "imsradio"

.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioHidl"

.field private static final STATUS_INTERROGATE:I = 0x2


# instance fields
.field private mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

.field private final mHalSync:Ljava/lang/Object;

.field private volatile mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

.field private mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

.field private mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

.field private volatile mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

.field private volatile mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

.field private volatile mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

.field private volatile mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

.field private volatile mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

.field private volatile mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

.field private volatile mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

.field private volatile mImsRadioV19:Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

.field private mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

.field private mIsDisposed:Z

.field private mPhoneId:Ljava/lang/Integer;

.field private mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

.field private mServiceName:Ljava/lang/String;

.field private final mServiceNotification:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHalSync(Lorg/codeaurora/ims/ImsRadioHidl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDisposed(Lorg/codeaurora/ims/ImsRadioHidl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIsDisposed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$minitImsRadio(Lorg/codeaurora/ims/ImsRadioHidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->initImsRadio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetServiceAndRequestList(Lorg/codeaurora/ims/ImsRadioHidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetServiceAndRequestList()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)V
    .locals 2
    .param p1, "response"    # Lorg/codeaurora/ims/IImsRadioResponse;
    .param p2, "indication"    # Lorg/codeaurora/ims/IImsRadioIndication;
    .param p3, "phoneId"    # I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;-><init>(Lorg/codeaurora/ims/ImsRadioHidl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceNotification:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIsDisposed:Z

    .line 96
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    .line 97
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 98
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsradio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceName:Ljava/lang/String;

    .line 100
    new-instance v0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;-><init>(Lorg/codeaurora/ims/ImsRadioHidl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    .line 102
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->registerForImsRadioServiceNotification()V

    .line 103
    return-void
.end method

.method private fail()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 902
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "HIDL does not support this API"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .locals 3

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-object v0, v2

    .line 203
    monitor-exit v1

    .line 204
    return-object v0

    .line 203
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .locals 3

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-object v0, v2

    .line 211
    monitor-exit v1

    .line 212
    return-object v0

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV13()Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .locals 3

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-object v0, v2

    .line 219
    monitor-exit v1

    .line 220
    return-object v0

    .line 219
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    .locals 3

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-object v0, v2

    .line 227
    monitor-exit v1

    .line 228
    return-object v0

    .line 227
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    .locals 3

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-object v0, v2

    .line 235
    monitor-exit v1

    .line 236
    return-object v0

    .line 235
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    .locals 3

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-object v0, v2

    .line 243
    monitor-exit v1

    .line 244
    return-object v0

    .line 243
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV17()Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    .locals 3

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-object v0, v2

    .line 251
    monitor-exit v1

    .line 252
    return-object v0

    .line 251
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    .locals 3

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-object v0, v2

    .line 259
    monitor-exit v1

    .line 260
    return-object v0

    .line 259
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV19()Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;
    .locals 3

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV19:Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    move-object v0, v2

    .line 267
    monitor-exit v1

    .line 268
    return-object v0

    .line 267
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initImsRadio()V
    .locals 17

    .line 277
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceName:Ljava/lang/String;

    .line 278
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getService(Ljava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    move-object v2, v0

    .line 279
    .local v2, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    if-nez v2, :cond_0

    .line 280
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetHalInterfaces()V

    .line 281
    const-string v0, "initImsRadio: imsRadio is null."

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsRadio: imsRadioV10 availability: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 286
    :goto_0
    invoke-virtual {v1, v5}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    nop

    .line 289
    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;

    move-result-object v0

    move-object v5, v0

    .line 290
    .local v5, "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initImsRadio: imsRadioV11 availability: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v5, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    nop

    .line 294
    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v0

    move-object v6, v0

    .line 295
    .local v6, "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initImsRadio: imsRadioV12 availability: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v6, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    nop

    .line 299
    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-result-object v0

    move-object v7, v0

    .line 300
    .local v7, "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initImsRadio: imsRadioV13 availability: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v7, :cond_4

    move v8, v3

    goto :goto_3

    :cond_4
    move v8, v4

    :goto_3
    invoke-virtual {v1, v8}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    nop

    .line 304
    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v0

    move-object v8, v0

    .line 305
    .local v8, "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initImsRadio: imsRadioV14 availability: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v8, :cond_5

    move v9, v3

    goto :goto_4

    :cond_5
    move v9, v4

    :goto_4
    invoke-virtual {v1, v9}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    nop

    .line 309
    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v0

    move-object v9, v0

    .line 310
    .local v9, "imsRadioV15":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initImsRadio: imsRadioV15 availability: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v9, :cond_6

    move v10, v3

    goto :goto_5

    :cond_6
    move v10, v4

    :goto_5
    invoke-virtual {v1, v10}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    nop

    .line 314
    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v0

    move-object v10, v0

    .line 315
    .local v10, "imsRadioV16":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initImsRadio: imsRadioV16 availability: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v10, :cond_7

    move v11, v3

    goto :goto_6

    :cond_7
    move v11, v4

    :goto_6
    invoke-virtual {v1, v11}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    nop

    .line 319
    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-result-object v0

    move-object v11, v0

    .line 320
    .local v11, "imsRadioV17":Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initImsRadio: imsRadioV17 availability: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v11, :cond_8

    move v12, v3

    goto :goto_7

    :cond_8
    move v12, v4

    :goto_7
    invoke-virtual {v1, v12}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    nop

    .line 324
    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v0

    move-object v12, v0

    .line 325
    .local v12, "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initImsRadio: imsRadioV18 availability: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v12, :cond_9

    move v13, v3

    goto :goto_8

    :cond_9
    move v13, v4

    :goto_8
    invoke-virtual {v1, v13}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    nop

    .line 329
    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    move-result-object v0

    move-object v13, v0

    .line 330
    .local v13, "imsRadioV19":Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "initImsRadio: imsRadioV19 availability: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v13, :cond_a

    goto :goto_9

    :cond_a
    move v3, v4

    :goto_9
    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    new-instance v0, Lorg/codeaurora/ims/ImsRadioResponseHidl;

    iget-object v3, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;)V

    move-object v3, v0

    .line 334
    .local v3, "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    new-instance v0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;

    iget-object v4, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-direct {v0, v4}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;-><init>(Lorg/codeaurora/ims/IImsRadioIndication;)V

    move-object v4, v0

    .line 337
    .local v4, "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    iget-object v14, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :try_start_1
    iput-object v3, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    .line 339
    iput-object v4, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    .line 340
    invoke-interface {v2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 341
    iget-object v0, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v3

    move-object/from16 v16, v4

    .end local v3    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    .end local v4    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    .local v15, "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    .local v16, "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    const-wide/16 v3, 0x0

    :try_start_2
    invoke-interface {v2, v0, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 342
    iput-object v2, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    .line 343
    iput-object v6, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    .line 344
    iput-object v7, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    .line 345
    iput-object v8, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    .line 346
    iput-object v9, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    .line 347
    iput-object v10, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    .line 348
    iput-object v11, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    .line 349
    iput-object v12, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    .line 350
    iput-object v13, v1, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV19:Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    .line 351
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 352
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->notifyServiceUp()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 357
    .end local v2    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .end local v5    # "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    .end local v6    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .end local v7    # "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .end local v8    # "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    .end local v9    # "imsRadioV15":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    .end local v10    # "imsRadioV16":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    .end local v11    # "imsRadioV17":Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    .end local v12    # "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    .end local v13    # "imsRadioV19":Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;
    .end local v15    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    .end local v16    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    goto :goto_b

    .line 351
    .restart local v2    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .restart local v3    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    .restart local v4    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    .restart local v5    # "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    .restart local v6    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .restart local v7    # "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .restart local v8    # "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    .restart local v9    # "imsRadioV15":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    .restart local v10    # "imsRadioV16":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    .restart local v11    # "imsRadioV17":Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    .restart local v12    # "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    .restart local v13    # "imsRadioV19":Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;
    :catchall_0
    move-exception v0

    move-object v15, v3

    move-object/from16 v16, v4

    .end local v3    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    .end local v4    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    .restart local v15    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    .restart local v16    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    :goto_a
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0    # "this":Lorg/codeaurora/ims/ImsRadioHidl;
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .restart local p0    # "this":Lorg/codeaurora/ims/ImsRadioHidl;
    :catchall_1
    move-exception v0

    goto :goto_a

    .line 354
    .end local v2    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .end local v5    # "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    .end local v6    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .end local v7    # "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .end local v8    # "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    .end local v9    # "imsRadioV15":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    .end local v10    # "imsRadioV16":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    .end local v11    # "imsRadioV17":Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    .end local v12    # "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    .end local v13    # "imsRadioV19":Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;
    .end local v15    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    .end local v16    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetServiceAndRequestList()V

    .line 358
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_b
    return-void
.end method

.method private notifyServiceDown()V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDown()V

    .line 111
    return-void
.end method

.method private notifyServiceUp()V
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceUp()V

    .line 107
    return-void
.end method

.method private registerForImsRadioServiceNotification()V
    .locals 4

    .line 188
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceNotification:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;

    .line 189
    invoke-interface {v0, v1, v2, v3}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v0

    .line 191
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 192
    const-string v1, "Failed to register for service start notifications"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0    # "ret":Z
    :cond_0
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register for service start notifications. Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private resetHalInterfaces()V
    .locals 3

    .line 134
    const-string v0, "resetHalInterfaces: Resetting HAL interfaces."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 136
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 141
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    .line 143
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    .line 144
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    .line 145
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    .line 146
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    .line 147
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    .line 148
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    .line 149
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    .line 150
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV19:Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    .line 151
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    .line 152
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized resetServiceAndRequestList()V
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->notifyServiceDown()V

    .line 130
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetHalInterfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 128
    .end local p0    # "this":Lorg/codeaurora/ims/ImsRadioHidl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "deliverStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSmsDeliverStatusToHidl(I)I

    move-result v0

    .line 515
    .local v0, "deliverStatusInfo":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v1

    .line 516
    .local v1, "imsRadioV15":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    if-eqz v1, :cond_0

    .line 517
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->acknowledgeSms_1_5(III)V

    goto :goto_0

    .line 519
    :cond_0
    const-string v2, "ImsRadioV15 is null. Invoking ImsRadioV12.acknowledgeSms()"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->acknowledgeSms(III)V

    .line 522
    :goto_0
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "statusReportStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSmsStatusReportStatusToHidl(I)I

    move-result v0

    .line 529
    .local v0, "statusReportStatusInfo":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->acknowledgeSmsReport(III)V

    .line 530
    return-void
.end method

.method public addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    nop

    .line 400
    const/4 v0, 0x0

    invoke-static {p2, p3, p4, v0}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    move-result-object v0

    .line 402
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v1

    .line 403
    .local v1, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    if-eqz v1, :cond_0

    .line 404
    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->addParticipant_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    goto :goto_0

    .line 406
    :cond_0
    const-string v2, "mImsRadio V1.4 is null. invoking mImsRadio.dial()"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v2

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 410
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " addParticipant: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callDomain = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isConferenceUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isCallPull ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEncrypted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public answer(IIII)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "callType"    # I
    .param p3, "ipPresentation"    # I
    .param p4, "rttMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v1

    .line 491
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapTirPresentationToIpPresentation(I)I

    move-result v2

    .line 492
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->rttModeToHal(I)I

    move-result v3

    .line 490
    invoke-interface {v0, p1, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->answer(IIII)V

    .line 493
    return-void
.end method

.method public cancelModifyCall(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->cancelModifyCall(II)V

    .line 613
    return-void
.end method

.method public cancelPendingUssd(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->cancelPendingUssd(I)V

    .line 485
    return-void
.end method

.method public conference(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->conference(I)V

    .line 634
    return-void
.end method

.method public deflectCall(IILjava/lang/String;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "index"    # I
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 498
    .local v0, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->connIndex:I

    .line 499
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->number:Ljava/lang/String;

    .line 500
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    .line 501
    return-void
.end method

.method public dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    .locals 19
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

    .line 422
    move-object/from16 v0, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p8

    .line 423
    invoke-static {v10, v11, v12, v13, v14}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    move-result-object v15

    .line 425
    .local v15, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 426
    nop

    .line 427
    invoke-static {v10, v11, v12, v13, v14}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    move-result-object v8

    .line 429
    .local v8, "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    if-eqz p7, :cond_0

    .line 430
    const-string v1, "Dialing call composer call v1.6"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 431
    nop

    .line 432
    invoke-static/range {p7 .. p7}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildCallComposerInfoHal(Lorg/codeaurora/ims/CallComposerInfo;)Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    move-result-object v1

    .line 433
    .local v1, "composerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v2

    invoke-interface {v2, v9, v8, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->callComposerDial(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    .line 434
    .end local v1    # "composerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 435
    nop

    .line 436
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyServiceCategories()I

    move-result v1

    .line 435
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyServiceCategoryToHal(I)I

    move-result v16

    .line 437
    .local v16, "categories":I
    nop

    .line 438
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyCallRouting()I

    move-result v1

    .line 437
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyCallRoutingToHal(I)I

    move-result v17

    .line 439
    .local v17, "route":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 440
    .local v5, "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "emergencyDial v1.6"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 441
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v1

    .line 442
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->hasKnownUserIntentEmergency()Z

    move-result v7

    .line 443
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->isEmergencyCallTesting()Z

    move-result v18

    .line 441
    move/from16 v2, p1

    move-object v3, v8

    move/from16 v4, v16

    move/from16 v6, v17

    move-object v10, v8

    .end local v8    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .local v10, "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    move/from16 v8, v18

    invoke-interface/range {v1 .. v8}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->emergencyDial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;ILjava/util/ArrayList;IZZ)V

    .line 444
    .end local v5    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "categories":I
    .end local v17    # "route":I
    goto :goto_0

    .line 445
    .end local v10    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .restart local v8    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    :cond_1
    move-object v10, v8

    .end local v8    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .restart local v10    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    const-string v1, "dial v1.6"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 446
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v1

    invoke-interface {v1, v9, v10}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->dial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;)V

    .line 448
    .end local v10    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    :goto_0
    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 449
    nop

    .line 450
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyServiceCategories()I

    move-result v1

    .line 449
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyServiceCategoryToHal(I)I

    move-result v10

    .line 451
    .local v10, "categories":I
    nop

    .line 452
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyCallRouting()I

    move-result v1

    .line 451
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyCallRoutingToHal(I)I

    move-result v16

    .line 453
    .local v16, "route":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 454
    .restart local v5    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "emergencyDial v1.5"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 455
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v1

    .line 456
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->hasKnownUserIntentEmergency()Z

    move-result v7

    .line 457
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->isEmergencyCallTesting()Z

    move-result v8

    .line 455
    move/from16 v2, p1

    move-object v3, v15

    move v4, v10

    move/from16 v6, v16

    invoke-interface/range {v1 .. v8}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->emergencyDial(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;ILjava/util/ArrayList;IZZ)V

    .line 458
    .end local v5    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "categories":I
    .end local v16    # "route":I
    goto :goto_1

    .line 459
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v1

    .line 460
    .local v1, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    if-eqz v1, :cond_4

    .line 461
    const-string v2, "dial v1.4"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 462
    invoke-interface {v1, v9, v15}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->dial_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    goto :goto_1

    .line 464
    :cond_4
    const-string v2, "dial v1.0"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 465
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v2

    invoke-static {v15}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 469
    .end local v1    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dial: address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callDomain ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isConferenceUri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCallPull ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isEncrypted ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rttMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIsDisposed:Z

    .line 392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetHalInterfaces()V

    .line 394
    return-void

    .line 392
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->exitEmergencyCallbackMode(I)V

    .line 782
    return-void
.end method

.method public exitSmsCallBackMode(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    .line 889
    return-void
.end method

.method public explicitCallTransfer(IIILjava/lang/String;I)V
    .locals 2
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

    .line 639
    invoke-static {p2, p3, p4, p5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildExplicitCallTransferInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    move-result-object v0

    .line 641
    .local v0, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    .line 642
    return-void
.end method

.method public getCallWaiting(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getCallWaiting(II)V

    .line 730
    return-void
.end method

.method public getClip(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 769
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getClip(I)V

    .line 770
    return-void
.end method

.method public getClir(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getClir(I)V

    .line 718
    return-void
.end method

.method public getColr(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 802
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getColr(I)V

    .line 803
    return-void
.end method

.method public getConfig(IIZILjava/lang/String;I)V
    .locals 4
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

    .line 676
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v0

    .line 677
    .local v0, "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    nop

    .line 678
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    move-result-object v1

    .line 679
    .local v1, "configInfoV18":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig: item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->item:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " boolValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " strValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    if-eqz v0, :cond_0

    .line 682
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;->getConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    goto :goto_0

    .line 684
    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    move-result-object v2

    .line 686
    .local v2, "configInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 688
    .end local v2    # "configInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :goto_0
    return-void
.end method

.method public getImsRegistrationState(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getImsRegistrationState(I)V

    .line 596
    return-void
.end method

.method public getImsSubConfig(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getImsSubConfig(I)V

    .line 825
    return-void
.end method

.method public getRtpErrorStatistics(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getRtpErrorStatistics(I)V

    .line 820
    return-void
.end method

.method public getRtpStatistics(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getRtpStatistics(I)V

    .line 815
    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v0

    invoke-interface {v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 4
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

    .line 554
    nop

    .line 555
    invoke-static/range {p2 .. p7}, Lorg/codeaurora/ims/ImsRadioUtils;->buildHangupRequest(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    move-result-object v0

    .line 558
    .local v0, "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV13()Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-result-object v1

    .line 559
    .local v1, "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    if-eqz v1, :cond_0

    .line 560
    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;->hangup_1_3(ILvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)V

    goto :goto_0

    .line 562
    :cond_0
    const-string v2, "ImsRadioV13 is null. Invoking ImsRadioV10.hangup()"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v2

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateHangupRequestInfoFromV13(Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    .line 565
    :goto_0
    return-void
.end method

.method public hold(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->hold(II)V

    .line 624
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 385
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFeatureSupported(I)Z
    .locals 3
    .param p1, "feature"    # I

    .line 363
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 380
    :pswitch_0
    return v1

    .line 378
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV19()Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 376
    :pswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 374
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV17()Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 367
    :pswitch_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 371
    :pswitch_5
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    return v0

    .line 365
    :pswitch_6
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method public modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 618
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    move-result-object v1

    .line 617
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 619
    return-void
.end method

.method public modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 607
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    move-result-object v1

    .line 606
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 608
    return-void
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;Z)V
    .locals 2
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

    .line 761
    nop

    .line 762
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p3, p4, v0, v1}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    move-result-object v0

    .line 764
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 765
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

    .line 883
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    .line 884
    return-void
.end method

.method public queryServiceStatus(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryServiceStatus(I)V

    .line 570
    return-void
.end method

.method public querySsacStatus(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->querySsacStatus(I)V

    .line 861
    return-void
.end method

.method public queryVirtualLineInfo(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V

    .line 835
    return-void
.end method

.method public queryVoltePref(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryVoltePref(I)V

    .line 872
    return-void
.end method

.method public queryVopsStatus(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryVopsStatus(I)V

    .line 857
    return-void
.end method

.method public registerMultiIdentityLines(ILjava/util/Collection;)V
    .locals 4
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

    .line 840
    .local p2, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v0, "halLinesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 842
    .local v2, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    nop

    .line 843
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    move-result-object v3

    .line 844
    .local v3, "lineInfo":Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    .end local v2    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .end local v3    # "lineInfo":Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    goto :goto_0

    .line 846
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->registerMultiIdentityLines(ILjava/util/ArrayList;)V

    .line 847
    return-void
.end method

.method public requestRegistrationChange(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "imsRegState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 601
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateToHal(I)I

    move-result v1

    .line 600
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->requestRegistrationChange(II)V

    .line 602
    return-void
.end method

.method public resume(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->resume(II)V

    .line 629
    return-void
.end method

.method public sendDtmf(IIC)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 692
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 693
    .local v0, "dtmfValue":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 694
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 695
    return-void
.end method

.method public sendGeolocationInfo(IDDLandroid/location/Address;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "lat"    # D
    .param p4, "lon"    # D
    .param p6, "address"    # Landroid/location/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    nop

    .line 541
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->getHidlAddressInfo(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    move-result-object v7

    .line 542
    .local v7, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v8

    .line 543
    .local v8, "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    if-eqz v8, :cond_0

    .line 544
    move-object v0, v8

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 547
    invoke-static {v7}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateAddressToV10(Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    move-result-object v6

    .line 546
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    .line 549
    :goto_0
    return-void
.end method

.method public sendRttMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendRttMessage(ILjava/lang/String;)V

    .line 830
    return-void
.end method

.method public sendSipDtmf(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "requestCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 851
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV17()Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V

    .line 852
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 2
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

    .line 506
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildImsSms(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    move-result-object v0

    .line 508
    .local v0, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V

    .line 509
    return-void
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->sendUssd(ILjava/lang/String;)V

    .line 480
    return-void
.end method

.method public sendVosActionInfo(ILorg/codeaurora/ims/VosActionInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "vosActionInfo"    # Lorg/codeaurora/ims/VosActionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV19()Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->fromVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;)Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;->sendVosActionInfo(ILvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;)V

    .line 899
    return-void
.end method

.method public sendVosSupportStatus(IZ)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "isVosSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV19()Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;->sendVosSupportStatus(IZ)V

    .line 894
    return-void
.end method

.method public setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    .locals 4
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

    .line 743
    nop

    .line 744
    invoke-static {p7, p8, p9, p6, p10}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    move-result-object v0

    .line 746
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    const/4 v1, 0x1

    const v2, 0x7fffffff

    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    .line 747
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 748
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    invoke-static {v3, p2, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V

    .line 751
    :cond_0
    if-eq p4, v2, :cond_1

    if-eq p5, v2, :cond_1

    .line 752
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 753
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    invoke-static {v1, p4, p5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V

    .line 755
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 756
    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 735
    nop

    .line 734
    invoke-interface {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallWaiting(III)V

    .line 736
    return-void
.end method

.method public setClir(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 723
    .local v0, "clirValue":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    .line 724
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    .line 725
    return-void
.end method

.method public setColr(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "presentationValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 808
    .local v0, "colrValue":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->ipPresentationToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->presentation:I

    .line 809
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 810
    return-void
.end method

.method public setConfig(IIZILjava/lang/String;I)V
    .locals 6
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

    .line 648
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v0

    .line 649
    .local v0, "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    nop

    .line 650
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    move-result-object v1

    .line 651
    .local v1, "configInfoV18":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfig: item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->item:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " boolValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " strValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    if-eqz v0, :cond_0

    .line 654
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;->setConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    goto :goto_0

    .line 656
    :cond_0
    nop

    .line 657
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    move-result-object v2

    .line 658
    .local v2, "configInfoV16":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 659
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->setConfig_1_6(ILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    goto :goto_0

    .line 661
    :cond_1
    nop

    .line 662
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    move-result-object v3

    .line 663
    .local v3, "configInfoV15":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 664
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->setConfig_1_5(ILvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)V

    goto :goto_0

    .line 666
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    .line 667
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateConfigInfoFromV15(Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    move-result-object v5

    .line 666
    invoke-interface {v4, p1, v5}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 671
    .end local v2    # "configInfoV16":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    .end local v3    # "configInfoV15":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    :goto_0
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

    .line 878
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    .line 879
    return-void
.end method

.method public setServiceStatus(ILjava/util/List;I)V
    .locals 4
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

    .line 575
    .local p2, "capabilityStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    nop

    .line 577
    invoke-static {p2, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildServiceStatusInfoList(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 579
    .local v0, "serviceStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->setServiceStatus_1_6(ILjava/util/ArrayList;)V

    .line 580
    .end local v0    # "serviceStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    goto :goto_0

    .line 581
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/CapabilityStatus;

    .line 582
    .local v0, "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    nop

    .line 584
    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapCapabilityToSrvType(I)I

    move-result v1

    .line 585
    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHidlRadioTech(I)I

    move-result v2

    .line 586
    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->mapValueToServiceStatus(I)I

    move-result v3

    .line 583
    invoke-static {v1, v2, v3, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    move-result-object v1

    .line 588
    .local v1, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v2

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateServiceStatusInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;)Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    .line 591
    .end local v0    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .end local v1    # "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    :goto_0
    return-void
.end method

.method public setSuppServiceNotification(IZ)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 712
    nop

    .line 711
    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setSuppServiceNotification(II)V

    .line 713
    return-void
.end method

.method public setUiTtyMode(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "uiTtyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 775
    .local v0, "info":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->ttyModeToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->mode:I

    .line 776
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 777
    return-void
.end method

.method public startDtmf(IIC)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 700
    .local v0, "dtmfValue":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 701
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 702
    return-void
.end method

.method public stopDtmf(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->stopDtmf(I)V

    .line 707
    return-void
.end method

.method public suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
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

    .line 788
    invoke-static {p4, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCbNumListInfo([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    move-result-object v6

    .line 789
    .local v6, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v7

    .line 790
    .local v7, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    if-eqz v7, :cond_1

    .line 791
    nop

    .line 792
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->facilityTypeToHal(I)I

    move-result v3

    .line 793
    if-eqz p5, :cond_0

    move-object v5, p5

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v5, v0

    .line 791
    :goto_0
    move-object v0, v7

    move v1, p1

    move v2, p2

    move-object v4, v6

    invoke-interface/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->suppServiceStatus_1_6(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 795
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 796
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->facilityTypeToHal(I)I

    move-result v1

    .line 795
    invoke-interface {v0, p1, p2, v1, v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    .line 798
    :goto_1
    return-void
.end method

.method public updateVoltePref(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "preference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->updateVoltePref(II)V

    .line 868
    return-void
.end method
