.class public final synthetic Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field public final synthetic f$1:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field public final synthetic f$2:Lorg/codeaurora/ims/QtiVideoCallDataUsage;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;->f$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;->f$1:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;->f$2:Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;->f$0:Lorg/codeaurora/ims/ImsServiceClassTracker;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;->f$1:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;->f$2:Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->$r8$lambda$0QOlYTpQrNCaWT2jOUGAvI-QC8o(Lorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    return-void
.end method
