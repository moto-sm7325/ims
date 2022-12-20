.class public final synthetic Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;->f$0:Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

    iput-wide p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;->f$0:Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;

    iget-wide v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider$$ExternalSyntheticLambda0;->f$1:J

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker$VtDataUsageProvider;->lambda$onSetAlert$0$ImsServiceClassTracker$VtDataUsageProvider(J)V

    return-void
.end method
