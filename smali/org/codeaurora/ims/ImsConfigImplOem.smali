.class public Lorg/codeaurora/ims/ImsConfigImplOem;
.super Ljava/lang/Object;
.source "ImsConfigImplOem.java"


# static fields
.field private static final DBG:Z = true

.field private static final HEADER_SIZE:I = 0x8

.field private static final IMS_SERVICES_DEFAULT_ALL:I = 0x3

.field private static final OEM_RIL_REQUEST_GET_IMS_SUPPORTED_SERVICES:I = 0x50030

.field private static final OEM_RIL_REQUEST_GET_SSAC_HYSTERESIS_TIMER:I = 0x5003c

.field private static final OEM_RIL_REQUEST_SET_SSAC_HYSTERESIS_TIMER:I = 0x5003d

.field private static final OEM_RIL_UNSOL_IMS_SUPPORTED_SERVICES_CHANGED:I = 0x40017

.field private static final OEM_RIL_UNSOL_MCFG_MBN_CHANGED:I = 0x40016

.field private static final OEM_RIL_UNSOL_REV_IP_TRANS_CHANGE:I = 0x40018

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static sOemInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsConfigImplOem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mImsSupportedServicesRetries:I

.field private mMotoExtTelephonyMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

.field private mPhoneId:I

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V
    .locals 3
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mMotoExtTelephonyMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 239
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 383
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    .line 81
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 82
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    .line 83
    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    .line 84
    invoke-static {p2, p3}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 85
    .local v0, "subId":I
    new-instance v1, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mMotoExtTelephonyMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    .line 86
    return-void
.end method

.method private addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 292
    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 293
    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 294
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 298
    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .line 301
    if-nez p1, :cond_0

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 307
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 308
    .local v2, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    aget-byte v4, p1, v1

    and-int/lit8 v2, v4, 0xf

    .line 310
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "bytes"    # [B

    .line 281
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 282
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 283
    return-object v0
.end method

.method private declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 244
    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImplOem;
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(I)Lorg/codeaurora/ims/ImsConfigImplOem;
    .locals 3
    .param p0, "phoneId"    # I

    .line 59
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    monitor-exit v0

    return-object v1

    .line 64
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplOem;
    .locals 4
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 69
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    monitor-exit v0

    return-object v1

    .line 74
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V

    .line 75
    .local v1, "oemImpl":Lorg/codeaurora/ims/ImsConfigImplOem;
    sget-object v2, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0

    return-object v1

    .line 77
    .end local v1    # "oemImpl":Lorg/codeaurora/ims/ImsConfigImplOem;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPhoneId()I
    .locals 1

    .line 411
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    return v0
.end method

.method private isCarrierConfigLoaded()Z
    .locals 3

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    const-string v2, "carrier_config_applied_bool"

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 141
    .local v0, "bLoaded":Z
    if-nez v0, :cond_0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarrierConfigLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 144
    :cond_0
    return v0
.end method

.method private isImsEnabledByPlatform()Z
    .locals 3

    .line 148
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    .line 149
    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 150
    .local v0, "bEnabled":Z
    :goto_1
    if-nez v0, :cond_2

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsEnabledByPlatform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 153
    :cond_2
    return v0
.end method

.method private isImsStackReady()Z
    .locals 3

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "bReady":Z
    :goto_0
    if-nez v0, :cond_1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsStackReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 135
    :cond_1
    return v0
.end method

.method private isValidImsSupportedServicesValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 157
    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private refreshImsConfigCache()V
    .locals 3

    .line 385
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsEnabledByPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 390
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    return-void

    .line 393
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 394
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    .line 395
    return-void

    .line 397
    :cond_2
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    if-ne v1, v0, :cond_3

    .line 398
    return-void

    .line 401
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh ImsConfig Cache, subId changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v1

    .line 403
    .local v1, "config":Lorg/codeaurora/ims/ImsConfigImpl;
    if-nez v1, :cond_4

    .line 404
    return-void

    .line 406
    :cond_4
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->resetProvisionedCacheValue()V

    .line 407
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    .line 408
    return-void
.end method

.method private sendBroadcastForEpdgIndicator(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.EPDG_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 378
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastForEpdgIndicator, isConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method private sendMessage(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .line 354
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 355
    .local v0, "request":[B
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 357
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 359
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendMessage(IS)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # S

    .line 363
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 364
    .local v0, "request":[B
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 366
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 367
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 369
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mMotoExtTelephonyMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 319
    new-instance v1, Landroid/os/RemoteException;

    const-string v3, "Cannot get Telephony Service"

    invoke-direct {v1, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 322
    return-object v0

    .line 325
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 326
    .local v1, "response":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v4

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v3

    .line 330
    .local v3, "subId":I
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mMotoExtTelephonyMgr:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    invoke-virtual {v4, v3, p2, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->vendorInvokeOemRilRequestRawSync(I[B[B)I

    move-result v4

    .line 331
    .local v4, "retVal":I
    if-ltz v4, :cond_2

    .line 332
    const/4 v5, 0x0

    .line 334
    .local v5, "validResponseBytes":[B
    if-lez v4, :cond_1

    .line 335
    new-array v5, v4, [B

    .line 336
    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Data is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 338
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response retVal = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 343
    :goto_0
    new-instance v6, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7, v5, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 344
    .end local v5    # "validResponseBytes":[B
    goto :goto_1

    .line 345
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMotoExtTelephonyMgr.sendOemRilRequestRaw returns "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 346
    new-instance v2, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 348
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, p2, v6, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 350
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private updateImsServiceConfig()V
    .locals 3

    .line 119
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsStackReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isCarrierConfigLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 123
    .local v0, "bForce":Z
    monitor-enter p0

    .line 124
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 125
    iput v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsUtils;->sendUpdateImsServiceConfigRequest(Landroid/content/Context;IZ)V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 120
    .end local v0    # "bForce":Z
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getImsSupportedServices()I
    .locals 9

    .line 208
    const/4 v0, 0x2

    .line 209
    .local v0, "RIL_E_GENERIC_FAILURE":I
    const/16 v1, 0x2e

    .line 211
    .local v1, "RIL_E_INVALID_MODEM_STATE":I
    const/4 v2, 0x3

    .line 212
    .local v2, "val":I
    const v3, 0x50030

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v3

    .line 214
    .local v3, "result":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImsSupportedServices: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 216
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 217
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 218
    .local v4, "errorCode":I
    if-gez v4, :cond_0

    mul-int/lit8 v4, v4, -0x1

    .line 219
    :cond_0
    const/4 v6, 0x2

    if-ne v6, v4, :cond_2

    .line 220
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsEnabledByPlatform()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, -0x4

    :cond_1
    move v2, v5

    goto :goto_0

    .line 221
    :cond_2
    const/16 v5, 0x2e

    if-ne v5, v4, :cond_3

    .line 222
    const/4 v2, -0x4

    .line 224
    .end local v4    # "errorCode":I
    :cond_3
    :goto_0
    goto :goto_1

    .line 225
    :cond_4
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 226
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    .line 227
    .local v4, "buf":[B
    if-eqz v4, :cond_5

    array-length v6, v4

    const/16 v7, 0x10

    if-le v6, v7, :cond_5

    .line 228
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v7}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v6

    .line 229
    .local v5, "str":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImsSupportedServices, raw str: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 230
    invoke-static {v5, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v2, v6

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getImsSupportedServices: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 233
    .end local v4    # "buf":[B
    .end local v5    # "str":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 234
    :cond_6
    const-string v4, "getImsSupportedServices gets null response from RIL"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 236
    :cond_7
    :goto_1
    return v2
.end method

.method public getTVolteHysTimer()I
    .locals 6

    .line 249
    const/4 v0, -0x1

    .line 251
    .local v0, "val":S
    const v1, 0x5003c

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 253
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "getTVolteHysTimer: "

    if-eqz v2, :cond_0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 257
    .local v2, "buf":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 258
    .local v4, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 261
    .end local v2    # "buf":[B
    .end local v4    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 262
    :cond_1
    const-string v2, "getTVolteHysTimer gets null response from RIL"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 264
    :goto_0
    return v0
.end method

.method public handleOemHookRawEvent([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOemHookRawEvent, data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 91
    if-eqz p1, :cond_6

    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    .line 96
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsStackReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x4

    .line 101
    .local v0, "idx":I
    aget-byte v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 102
    .local v1, "msgId":I
    const v2, 0x40017

    if-ne v2, v1, :cond_2

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM_RIL_UNSOL_IMS_SUPPORTED_SERVICES_CHANGED = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    .line 105
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsSupportedServicesAndNotify()V

    goto :goto_1

    .line 106
    :cond_2
    const v2, 0x40016

    if-ne v2, v1, :cond_3

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM_RIL_UNSOL_MCFG_MBN_CHANGED = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    goto :goto_1

    .line 111
    :cond_3
    const v2, 0x40018

    if-ne v2, v1, :cond_5

    .line 112
    const/16 v2, 0xc

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 113
    .local v2, "isConnected":Z
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendBroadcastForEpdgIndicator(Z)V

    .line 116
    .end local v2    # "isConnected":Z
    :cond_5
    :goto_1
    return-void

    .line 92
    .end local v0    # "idx":I
    .end local v1    # "msgId":I
    :cond_6
    :goto_2
    const-string v0, "skip for invalid data"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public synthetic lambda$updateImsSupportedServicesAndNotify$0$ImsConfigImplOem()V
    .locals 5

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServices()I

    move-result v1

    .line 175
    .local v1, "value":I
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->isValidImsSupportedServicesValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->refreshImsConfigCache()V

    .line 177
    nop

    .line 201
    .end local v1    # "value":I
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-lez v1, :cond_0

    .line 202
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    .line 204
    :cond_0
    return-void

    .line 180
    .restart local v1    # "value":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 181
    monitor-enter p0

    .line 182
    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    .line 183
    :try_start_0
    const-string v2, "getImsSupportedServices failed finally, no more retry"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 184
    const/4 v2, 0x0

    iput v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 185
    monitor-exit p0

    return-void

    .line 188
    :cond_2
    iget v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    add-int/lit8 v3, v0, -0x1

    shl-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    goto :goto_1

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImsSupportedServices, InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 194
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-nez v2, :cond_3

    .line 195
    const-string v2, "exit updateImsSupportedServicesAndNotify thread for new request"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 196
    monitor-exit p0

    return-void

    .line 198
    :cond_3
    monitor-exit p0

    .line 199
    .end local v1    # "value":I
    goto :goto_0

    .line 198
    .restart local v1    # "value":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setTVolteHysTimer(I)I
    .locals 4
    .param p1, "value"    # I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTVolteHysTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 269
    const/4 v0, -0x1

    .line 270
    .local v0, "retval":I
    int-to-short v2, p1

    const v3, 0x5003d

    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(IS)Landroid/os/AsyncResult;

    move-result-object v2

    .line 273
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 277
    :cond_0
    return v0
.end method

.method public updateImsSupportedServicesAndNotify()V
    .locals 2

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-lez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter updateImsSupportedServicesAndNotify, mImsSupportedServicesRetries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 167
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 168
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/ims/ImsConfigImplOem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImplOem$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsConfigImplOem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 205
    return-void

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
