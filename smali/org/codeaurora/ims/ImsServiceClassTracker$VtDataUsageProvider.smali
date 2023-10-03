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

    .line 1145
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-direct {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;-><init>()V

    .line 1146
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mToken:I

    .line 1147
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 1148
    new-instance v1, Landroid/net/NetworkStats;

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    return-void
.end method


# virtual methods
.method synthetic lambda$onSetAlert$0$org-codeaurora-ims-ImsServiceClassTracker$VtDataUsageProvider(J)V
    .locals 1
    .param p1, "quotaBytes"    # J

    .line 1180
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$mupdateAlertQuota(Lorg/codeaurora/ims/ImsServiceClassTracker;J)V

    return-void
.end method

.method public onRequestStatsUpdate(I)V
    .locals 6
    .param p1, "token"    # I

    .line 1154
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmCallList(Lorg/codeaurora/ims/ImsServiceClassTracker;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 1155
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmCallList(Lorg/codeaurora/ims/ImsServiceClassTracker;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1156
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1157
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onRequestCallDataUsage()V

    .line 1158
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 1159
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmVtDataUsageSnapshot(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/net/NetworkStats;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 1161
    .local v0, "ifaceDiff":Landroid/net/NetworkStats;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmVtDataUsageUidSnapshot(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/net/NetworkStats;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1162
    .local v1, "uidDiff":Landroid/net/NetworkStats;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmVtDataUsageProvider(Lorg/codeaurora/ims/ImsServiceClassTracker;)Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mToken:I

    invoke-virtual {v2, v3, v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 1164
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$mgetTotalBytesInNetworkStats(Lorg/codeaurora/ims/ImsServiceClassTracker;Landroid/net/NetworkStats;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v2, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$mgetTotalBytesInNetworkStats(Lorg/codeaurora/ims/ImsServiceClassTracker;Landroid/net/NetworkStats;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1165
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestStatsUpdate, notifyStatsUpdated:uidDiff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n ifaceDiff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 1170
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v2, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    .line 1171
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mToken:I

    .line 1172
    return-void

    .line 1159
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

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetAlert:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmCallDataUsageHandler(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1181
    return-void
.end method

.method public onSetLimit(Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 1176
    return-void
.end method
