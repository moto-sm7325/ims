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

.field private mIfaceSnapshotZero:Landroid/net/NetworkStats;

.field private mToken:I

.field private mUidSnapshot:Landroid/net/NetworkStats;

.field private mUidSnapshotZero:Landroid/net/NetworkStats;

.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;


# direct methods
.method public static synthetic $r8$lambda$ySS-hYosWkcWezd0ty8hs56z04E(Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->lambda$onSetAlert$0(J)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 4
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 1178
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-direct {p0}, Landroid/net/netstats/provider/NetworkStatsProvider;-><init>()V

    .line 1179
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mToken:I

    .line 1181
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshotZero:Landroid/net/NetworkStats;

    .line 1182
    new-instance v1, Landroid/net/NetworkStats;

    invoke-direct {v1, v2, v3, v0}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshotZero:Landroid/net/NetworkStats;

    .line 1183
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshotZero:Landroid/net/NetworkStats;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 1184
    iput-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    return-void
.end method

.method private synthetic lambda$onSetAlert$0(J)V
    .locals 1
    .param p1, "quotaBytes"    # J

    .line 1231
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$mupdateAlertQuota(Lorg/codeaurora/ims/ImsServiceClassTracker;J)V

    return-void
.end method


# virtual methods
.method public onRequestStatsUpdate(I)V
    .locals 7
    .param p1, "token"    # I

    .line 1191
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmCallList(Lorg/codeaurora/ims/ImsServiceClassTracker;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 1192
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

    .line 1193
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1194
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onRequestCallDataUsage()V

    .line 1195
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 1196
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1199
    const/4 v0, 0x0

    .line 1200
    .local v0, "ifaceDiff":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 1201
    .local v1, "uidDiff":Landroid/net/NetworkStats;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmVtDataUsageChanged(Lorg/codeaurora/ims/ImsServiceClassTracker;)Ljava/lang/Boolean;

    move-result-object v2

    monitor-enter v2

    .line 1202
    :try_start_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmVtDataUsageChanged(Lorg/codeaurora/ims/ImsServiceClassTracker;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1203
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmVtDataUsageSnapshot(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/net/NetworkStats;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v3, v4}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    move-object v0, v3

    .line 1204
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmVtDataUsageUidSnapshot(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/net/NetworkStats;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v3, v4}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    move-object v1, v3

    .line 1205
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v3, v0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshot:Landroid/net/NetworkStats;

    .line 1206
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v3, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshot:Landroid/net/NetworkStats;

    .line 1207
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fputmVtDataUsageChanged(Lorg/codeaurora/ims/ImsServiceClassTracker;Ljava/lang/Boolean;)V

    .line 1209
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v3, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$mgetTotalBytesInNetworkStats(Lorg/codeaurora/ims/ImsServiceClassTracker;Landroid/net/NetworkStats;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v3, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$mgetTotalBytesInNetworkStats(Lorg/codeaurora/ims/ImsServiceClassTracker;Landroid/net/NetworkStats;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 1210
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestStatsUpdate, notifyStatsUpdated:uidDiff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n ifaceDiff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1215
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mIfaceSnapshotZero:Landroid/net/NetworkStats;

    move-object v0, v3

    .line 1216
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mUidSnapshotZero:Landroid/net/NetworkStats;

    move-object v1, v3

    .line 1218
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1219
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmVtDataUsageProvider(Lorg/codeaurora/ims/ImsServiceClassTracker;)Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mToken:I

    invoke-virtual {v2, v3, v0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->notifyStatsUpdated(ILandroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 1222
    iput p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->mToken:I

    .line 1223
    return-void

    .line 1218
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1196
    .end local v0    # "ifaceDiff":Landroid/net/NetworkStats;
    .end local v1    # "uidDiff":Landroid/net/NetworkStats;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onSetAlert(J)V
    .locals 2
    .param p1, "quotaBytes"    # J

    .line 1230
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

    .line 1231
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->this$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->-$$Nest$fgetmCallDataUsageHandler(Lorg/codeaurora/ims/ImsServiceClassTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1232
    return-void
.end method

.method public onSetLimit(Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 1227
    return-void
.end method
