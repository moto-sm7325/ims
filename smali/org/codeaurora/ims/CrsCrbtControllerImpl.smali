.class public Lorg/codeaurora/ims/CrsCrbtControllerImpl;
.super Lorg/codeaurora/ims/CrsCrbtControllerBase;
.source "CrsCrbtControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    }
.end annotation


# instance fields
.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClients(Lorg/codeaurora/ims/CrsCrbtControllerImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 1
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;

    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/codeaurora/ims/CrsCrbtControllerBase;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    .line 70
    iput-object p1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 71
    iput-object p2, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 136
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 142
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 145
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method


# virtual methods
.method public onIsPreparatorySession(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 130
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_0

    .line 131
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isPreparatorySession(Ljava/lang/String;)Z

    move-result v1

    .line 130
    :goto_0
    return v1
.end method

.method public onRemoveCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string v0, "onRemoveCrsCrbtListener : listener is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;

    .line 110
    .local v1, "client":Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->close()V

    .line 112
    iget-object v2, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v1    # "client":Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    :cond_1
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSendSipDtmf(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestCode"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 120
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_0

    .line 121
    const-string v1, "onSendSipDtmf : no incoming/outgoing call is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->sendSipDtmf(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onSetCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/ICrsCrbtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "onSetCrsCrbtListener"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    if-nez p1, :cond_0

    .line 80
    const-string v0, "onSetCrsCrbtListener : listener is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 85
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_1

    .line 86
    const-string v1, "onSetCrsCrbtListener : no incoming/outgoing call is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;

    .line 91
    .local v2, "client":Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {v2}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->close()V

    .line 93
    iget-object v3, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    new-instance v3, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;

    invoke-direct {v3, p0, p1, v0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;-><init>(Lorg/codeaurora/ims/CrsCrbtControllerImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    move-object v2, v3

    .line 96
    invoke-virtual {v2}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->linkToDeath()V

    .line 97
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    .line 98
    iget-object v3, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    nop

    .end local v2    # "client":Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
