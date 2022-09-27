.class public Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;
.super Landroid/net/netstats/provider/NetworkStatsProvider;
.source "ImsServiceClassTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsServiceClassTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VtDataUsageProvider"
.end annotation


# instance fields
.field private mIfaceSnapshot:Landroid/net/NetworkStats;

.field private mToken:I

.field private mUidSnapshot:Landroid/net/NetworkStats;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 4
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1028
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-direct {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;-><init>()V

    .line 1029
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mToken:I

    .line 1030
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 1031
    new-instance v1, Landroid/net/NetworkStats;

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSetAlert$0$ImsServiceClassTracker$VtDataUsageProvider(J)V
    .locals 1
    .param p1, "quotaBytes"    # J

    .line 1058
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->access$500(Lorg/codeaurora/ims/ImsServiceClassTracker;J)V

    return-void
.end method

.method public onRequestStatsUpdate(I)V
    .locals 5
    .param p1, "token"    # I

    .line 1037
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->access$000(Lorg/codeaurora/ims/ImsServiceClassTracker;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 1038
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->access$000(Lorg/codeaurora/ims/ImsServiceClassTracker;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1039
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1040
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v4

    invoke-static {v4}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1041
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onRequestCallDataUsage()V

    .line 1043
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 1044
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->access$100(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/net/NetworkStats;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 1046
    .local v0, "ifaceDiff":Landroid/net/NetworkStats;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->access$200(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/net/NetworkStats;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1047
    .local v1, "uidDiff":Landroid/net/NetworkStats;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->access$300(Lorg/codeaurora/ims/ImsServiceClassTracker;)Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mToken:I

    invoke-virtual {v2, v3, v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 1048
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 1049
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    .line 1050
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mToken:I

    .line 1051
    return-void

    .line 1044
    .end local v0    # "ifaceDiff":Landroid/net/NetworkStats;
    .end local v1    # "uidDiff":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSetAlert(J)V
    .locals 2
    .param p1, "quotaBytes"    # J

    .line 1058
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->access$400(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1059
    return-void
.end method

.method public onSetLimit(Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 1055
    return-void
.end method
