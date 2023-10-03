.class public Lorg/codeaurora/ims/ImsRegistrationController;
.super Ljava/lang/Object;
.source "ImsRegistrationController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    }
.end annotation


# static fields
.field private static final IKEv2_AUTH_FAILURE:I = 0x5


# instance fields
.field private final CODE_IS_NOT_PS_ONLY_ATTACHED:I

.field private final CODE_IS_PS_ONLY_ATTACHED:I

.field private final EVENT_GEO_LOCATION_DATA_STATUS:I

.field private final EVENT_IMS_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_DONE:I

.field private final EVENT_REGISTRATION_BLOCK_STATUS:I

.field private final EVENT_SRV_DOMAIN_CHANGED:I

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsRegistrationController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationStatus:I

.field private mSelfIndentityUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSrvDomain:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 1
    .param p1, "imsSenderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;

    .line 93
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsRegistrationController;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7
    .param p1, "imsSenderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 58
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 59
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    .line 62
    const/4 v2, 0x2

    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 63
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    .line 64
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 70
    const/4 v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_REGISTRATION_BLOCK_STATUS:I

    .line 71
    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_GEO_LOCATION_DATA_STATUS:I

    .line 72
    const/4 v3, 0x3

    iput v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_IMS_STATE_CHANGED:I

    .line 73
    const/4 v4, 0x4

    iput v4, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_IMS_STATE_DONE:I

    .line 74
    const/4 v4, 0x5

    iput v4, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_SRV_DOMAIN_CHANGED:I

    .line 78
    const/16 v5, 0xfa1

    iput v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->CODE_IS_PS_ONLY_ATTACHED:I

    .line 79
    const/16 v5, 0xfa2

    iput v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->CODE_IS_NOT_PS_ONLY_ATTACHED:I

    .line 98
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 99
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mContext:Landroid/content/Context;

    .line 102
    iget-object v6, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v6, v5, v1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeoLocationDataStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvDomainChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method private handleGeoLocationDataStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 313
    const-string v0, "handleGeoLocationDataStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 320
    .local v0, "geoLocationStatus":I
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v2, 0x3e8

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 322
    .local v1, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v3, 0x2

    iput v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 323
    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    .line 324
    const v2, 0x7fffffff

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v2, v4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 326
    return-void

    .line 315
    .end local v0    # "geoLocationStatus":I
    .end local v1    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_GEO_LOCATION_DATA_STATUS AsyncResult ar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 329
    const-string v0, "handleImsStateChanged"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/ImsRegistrationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    const/4 v0, 0x0

    .line 335
    .local v0, "errorCode":I
    const/4 v1, 0x0

    .line 336
    .local v1, "errorMessage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 337
    .local v2, "selfIdentityUrisCombined":Ljava/lang/String;
    const/4 v3, 0x2

    .line 338
    .local v3, "regState":I
    const/4 v4, 0x0

    .line 339
    .local v4, "selfIdentityUriStrings":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 340
    .local v5, "selfIdentityUris":[Landroid/net/Uri;
    iget-object v6, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 341
    .local v6, "registration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getRadioTech()I

    move-result v7

    .line 343
    .local v7, "imsRat":I
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getErrorCode()I

    move-result v0

    .line 344
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getPAssociatedUris()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getState()I

    move-result v3

    .line 347
    if-eqz v2, :cond_1

    .line 348
    nop

    .line 349
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRegistrationUtils;->extractUrisFromPipeSeparatedUriStrings(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v5

    .line 353
    :cond_1
    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v9, 0x3e8

    invoke-direct {v8, v9, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 357
    .local v8, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iput v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 358
    const/4 v10, 0x2

    if-ne v3, v10, :cond_2

    .line 359
    iput v9, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    .line 361
    :cond_2
    const/4 v9, 0x1

    invoke-direct {p0, v3, v8, v7, v9}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 363
    iget-object v9, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    invoke-static {v9, v5}, Lorg/codeaurora/ims/ImsRegistrationUtils;->areSelfIdentityUrisDiff(Ljava/util/HashSet;[Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 365
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsRegistrationController;->updateSelfIdentityUriCache([Landroid/net/Uri;)V

    .line 366
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 368
    :cond_3
    return-void

    .line 331
    .end local v0    # "errorCode":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    .end local v2    # "selfIdentityUrisCombined":Ljava/lang/String;
    .end local v3    # "regState":I
    .end local v4    # "selfIdentityUriStrings":[Ljava/lang/String;
    .end local v5    # "selfIdentityUris":[Landroid/net/Uri;
    .end local v6    # "registration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    .end local v7    # "imsRat":I
    .end local v8    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    :goto_0
    const-string v0, "handleImsStateChanged error"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method private handleRegistrationBlockStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 271
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    .line 278
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    .line 282
    .local v1, "blockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRegistrationController;->isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    const-string v2, "Permanent IWLAN reg failure (IKEv2 auth failure)."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x578

    const/16 v4, 0x580

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 288
    .local v2, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/16 v3, 0x13

    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 291
    .end local v1    # "blockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    .end local v2    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    return-void

    .line 272
    .end local v0    # "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    :cond_2
    :goto_0
    const-string v0, "Async result is null or exception is not null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private handleSrvDomainChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 416
    const-string v0, "handleSrvDomainChanged"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 423
    .local v0, "srvDomain":I
    iget v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    if-eq v1, v0, :cond_1

    .line 424
    iput v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    .line 425
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRegistrationController;->maybeNotifySrvDomainChange(Z)V

    .line 427
    :cond_1
    return-void

    .line 418
    .end local v0    # "srvDomain":I
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error EVENT_SRV_DOMAIN_CHANGED AsyncResult ar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private static isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z
    .locals 4
    .param p0, "blockStatus"    # Lorg/codeaurora/ims/BlockStatusInfo;

    .line 296
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    .line 300
    .local v0, "blockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 302
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    .line 305
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 307
    invoke-virtual {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 300
    :goto_0
    return v1

    .line 309
    .end local v0    # "blockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    :cond_1
    return v1
.end method

.method private maybeNotifySrvDomainChange(Z)V
    .locals 6
    .param p1, "isRegChange"    # Z

    .line 377
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 378
    const-string v0, "checkSrvDomainChange IMS not deregistered."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    return-void

    .line 381
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    if-ne v0, v1, :cond_1

    .line 382
    const/16 v0, 0xfa1

    goto :goto_0

    :cond_1
    const/16 v0, 0xfa2

    .line 383
    .local v0, "extraErrCode":I
    :goto_0
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 384
    .local v2, "info":Landroid/telephony/ims/ImsReasonInfo;
    const v3, 0x7fffffff

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 386
    if-nez p1, :cond_2

    .line 387
    iget-object v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v1, v5, v3, v4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 390
    :cond_2
    return-void
.end method

.method private notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 3
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 166
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 168
    .local v2, "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    invoke-interface {v2, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 170
    .end local v2    # "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    goto :goto_0

    .line 171
    :cond_0
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 3
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 146
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 148
    .local v2, "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    invoke-interface {v2, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 150
    .end local v2    # "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    goto :goto_0

    .line 151
    :cond_0
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 3
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 158
    .local v2, "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    invoke-interface {v2, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 160
    .end local v2    # "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    goto :goto_0

    .line 161
    :cond_0
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 3
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 183
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 185
    .local v2, "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    invoke-interface {v2, p1}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 186
    .end local v2    # "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    goto :goto_0

    .line 187
    :cond_0
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyOnTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 177
    .local v2, "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    invoke-interface {v2, p1, p2}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 178
    .end local v2    # "l":Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    goto :goto_0

    .line 179
    :cond_0
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 1
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 209
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    goto :goto_0

    .line 216
    :pswitch_1
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->maybeNotifySrvDomainChange(Z)V

    .line 218
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 220
    goto :goto_0

    .line 211
    :pswitch_2
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 212
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 214
    nop

    .line 227
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSelfIdentityUriCache([Landroid/net/Uri;)V
    .locals 3
    .param p1, "new_uris"    # [Landroid/net/Uri;

    .line 393
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 398
    :goto_0
    if-nez p1, :cond_1

    .line 399
    const-string v0, "new_uris is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    return-void

    .line 402
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 403
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSelfIdentityUriCache :: new self-identity host URI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    .line 405
    invoke-static {v2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 113
    if-eqz p1, :cond_1

    .line 117
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate listener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    :goto_0
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 2

    .line 430
    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRegistrationBlockStatus(Landroid/os/Handler;)V

    .line 432
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForGeoLocationDataStatus(Landroid/os/Handler;)V

    .line 433
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 434
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSrvDomainChanged(Landroid/os/Handler;)V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 436
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    .line 437
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 438
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    .line 439
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 440
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 441
    return-void
.end method

.method public getSelfIdentityUri()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 258
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleSrvDomainChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 259
    goto :goto_0

    .line 253
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 254
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 255
    goto :goto_0

    .line 244
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 245
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 251
    goto :goto_0

    .line 240
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 241
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleGeoLocationDataStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 242
    goto :goto_0

    .line 236
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 237
    .restart local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleRegistrationBlockStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 238
    nop

    .line 263
    .end local v0    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 131
    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not found, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :goto_0
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestImsRegistrationState()V
    .locals 3

    .line 191
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    .line 192
    return-void
.end method

.method public reset(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 196
    const-string v0, "reset"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 198
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    .line 199
    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 201
    return-void
.end method
