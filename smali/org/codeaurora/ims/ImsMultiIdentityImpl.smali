.class public Lorg/codeaurora/ims/ImsMultiIdentityImpl;
.super Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;
.source "ImsMultiIdentityImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;
    }
.end annotation


# instance fields
.field private final EVENT_MULTI_IDENTITY_INFO_PENDING_INDICATION:I

.field private final EVENT_MULTI_IDENTITY_INFO_PENDING_RESPONSE:I

.field private final EVENT_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE:I

.field private final EVENT_MULTI_IDENTITY_UPDATE_REGISTRATION_STATE_RESPONSE:I

.field private final EVENT_MULTI_IDENTITY_VIRTUAL_LINE_INFO_RESPONSE:I

.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLinesInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

.field private mPhoneId:I

.field private mRegisteredSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final recipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static bridge synthetic -$$Nest$monClientDeath(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onClientDeath()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMultiIdentityInfoPendingIndication(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityInfoPendingIndication()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMultiIdentityInfoPendingResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityInfoPendingResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMultiIdentityRegistrationStatusChange(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityRegistrationStatusChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMultiIdentityVirtualLineInfoResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityVirtualLineInfoResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRegisterMultiIdentityLinesResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onRegisterMultiIdentityLinesResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(ILorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 57
    invoke-virtual {p3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 39
    new-instance v0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;-><init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    .line 46
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 47
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_UPDATE_REGISTRATION_STATE_RESPONSE:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE:I

    .line 51
    const/4 v1, 0x3

    iput v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_INFO_PENDING_INDICATION:I

    .line 52
    const/4 v2, 0x4

    iput v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_INFO_PENDING_RESPONSE:I

    .line 53
    const/4 v2, 0x5

    iput v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_VIRTUAL_LINE_INFO_RESPONSE:I

    .line 58
    iput p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    .line 59
    iput-object p2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 60
    iput-object p3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mContext:Landroid/content/Context;

    .line 61
    new-instance v2, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;

    invoke-direct {v2, p0, p4}, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;-><init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    .line 64
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiIdentityInfoPendingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    .line 71
    return-void
.end method

.method private getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 127
    .local v0, "intf":Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    if-eqz v0, :cond_0

    .line 132
    return-object v0

    .line 128
    :cond_0
    const-string v1, "getMultiIdentityListener :: IImsMultiIdentityListener is null."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private onClientDeath()V
    .locals 1

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 138
    return-void
.end method

.method private onMultiIdentityInfoPendingIndication()V
    .locals 4

    .line 172
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 173
    .local v0, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    .line 174
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 173
    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V

    .line 175
    return-void
.end method

.method private onMultiIdentityInfoPendingResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 163
    const-string v0, "multiIdentityInfoPendingResponse"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    const-string v0, "multiIdentity Info Pending action was unsuccessfull"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    :cond_1
    return-void
.end method

.method private onMultiIdentityRegistrationStatusChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 218
    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_2

    .line 222
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiIdentityRegistrationStatusChange :: AsyncResult exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    return-void

    .line 228
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 229
    .local v0, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 231
    .local v2, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-virtual {v2}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 234
    iget-object v4, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v2    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 239
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v1, v2, v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onRegistrationStatusChange(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    goto :goto_1

    .line 240
    :catchall_0
    move-exception v1

    .line 241
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMultiIdentityRegistrationStatusChange exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 219
    .end local v0    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    :cond_4
    :goto_2
    const-string v0, "onMultiIdentityRegistrationStatusChange :: AsyncResult is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private onMultiIdentityVirtualLineInfoResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 147
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/VirtualLineInfo;

    .line 148
    .local v0, "virtualInfo":Lorg/codeaurora/ims/VirtualLineInfo;
    if-nez v0, :cond_0

    .line 149
    const-string v1, "multiIdentityVirtualLineInfoResponse :: virtualInfo is null."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    return-void

    .line 152
    :cond_0
    iget-object v1, v0, Lorg/codeaurora/ims/VirtualLineInfo;->mMsisdn:Ljava/lang/String;

    .line 153
    .local v1, "msisdn":Ljava/lang/String;
    iget-object v2, v0, Lorg/codeaurora/ims/VirtualLineInfo;->mVirtualInfo:Ljava/util/ArrayList;

    .line 155
    .local v2, "virtualLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v3, v4, v1, v2}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    goto :goto_0

    .line 157
    :catchall_0
    move-exception v3

    .line 158
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multiIdentityVirtualLineInfoResponse exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private onRegisterMultiIdentityLinesResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 202
    if-nez p1, :cond_0

    .line 203
    const-string v0, "registerMultiIdentityLinesResponse :: NULL response received. Returning"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    return-void

    .line 208
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, 0x0

    :goto_0
    nop

    .line 211
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v1, v2, v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onUpdateRegistrationInfoResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    goto :goto_1

    .line 212
    :catchall_0
    move-exception v1

    .line 213
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerMultiIdentityLinesResponse exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public queryVirtualLineInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVirtualLineInfo(Ljava/lang/String;Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method public setMultiIdentityListener(Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 110
    .local v0, "intf":Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 112
    .local v2, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 114
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 116
    if-eqz p1, :cond_1

    .line 117
    invoke-interface {p1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 118
    .restart local v2    # "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 119
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 120
    :cond_1
    const-string v1, "Trying to set a NULL listener."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    :goto_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 123
    return-void
.end method

.method public updateRegistrationStatus(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "linesInfo":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 185
    .local v1, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-virtual {v1}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 188
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    goto :goto_0

    .line 191
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    new-instance v4, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-direct {v4, v1}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v1    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 197
    .local v0, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    .line 198
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 197
    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V

    .line 199
    return-void
.end method
