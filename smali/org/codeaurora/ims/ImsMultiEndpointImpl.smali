.class public Lorg/codeaurora/ims/ImsMultiEndpointImpl;
.super Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.source "ImsMultiEndpointImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsMultiEndpointImpl"


# instance fields
.field private final EVENT_CAPABILITIES_CHANGED:I

.field private final EVENT_REFRESH_VICE_INFO:I

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

.field private mIsVideoSupported:Z

.field private mIsVoiceSupported:Z

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static bridge synthetic -$$Nest$mhandleRefreshViceInfo(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->handleRefreshViceInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCapabilities(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->updateCapabilities(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 5
    .param p1, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 42
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->EVENT_REFRESH_VICE_INFO:I

    .line 29
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->EVENT_CAPABILITIES_CHANGED:I

    .line 34
    new-instance v2, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;-><init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    .line 39
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    .line 40
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    .line 43
    iput-object p2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mContext:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 45
    iput-object p3, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 47
    new-instance v2, Lorg/codeaurora/ims/parser/ImsViceParser;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/parser/ImsViceParser;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    .line 48
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForViceRefreshInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v4}, Lorg/codeaurora/ims/ImsServiceSub;->registerForCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method private handleRefreshViceInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 83
    const-string v0, "ImsMultiEndpointImpl"

    if-eqz p1, :cond_2

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/ims/ViceUriInfo;

    .line 89
    .local v1, "viceInfo":Lorg/codeaurora/ims/ViceUriInfo;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ViceUriInfo;->getViceInfoUri()[B

    move-result-object v2

    .line 91
    .local v2, "refreshViceInfoUri":[B
    if-eqz v2, :cond_1

    array-length v3, v2

    if-ltz v3, :cond_1

    .line 93
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->processViceInfo([B)V

    goto :goto_0

    .line 95
    :cond_1
    const-string v3, "handleRefreshViceInfo: refreshViceInfoUri null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 84
    .end local v1    # "viceInfo":Lorg/codeaurora/ims/ViceUriInfo;
    .end local v2    # "refreshViceInfoUri":[B
    :cond_2
    :goto_1
    const-string v1, "handleRefreshViceInfo exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method private notifyViceInfo()V
    .locals 4

    .line 107
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallPullInfo(ZZ)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "dialogIds":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 112
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v2

    .line 111
    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsUtils;->isVceEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 113
    .local v1, "isVceAvailable":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    :try_start_0
    const-string v2, "ImsMultiEndpointImpl"

    const-string v3, "Calling onImsExternalCallStateUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->onImsExternalCallStateUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private processViceInfo([B)V
    .locals 1
    .param p1, "viceInfoBytes"    # [B

    .line 102
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/parser/ImsViceParser;->updateViceXmlBytes([B)V

    .line 103
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->notifyViceInfo()V

    .line 104
    return-void
.end method

.method private updateCapabilities(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 125
    const-string v0, "ImsMultiEndpointImpl"

    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 130
    .local v1, "capabilites":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    .line 131
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCapabilities:: Video = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Voice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->notifyViceInfo()V

    .line 135
    return-void

    .line 126
    .end local v1    # "capabilites":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    const-string v1, "updateCapabilities exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIsVideoSupported()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    return v0
.end method

.method public getIsVoiceSupported()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    return v0
.end method
