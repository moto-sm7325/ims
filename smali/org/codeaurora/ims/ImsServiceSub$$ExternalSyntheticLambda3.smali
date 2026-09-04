.class public final synthetic Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsServiceSub;

.field public final synthetic f$1:Landroid/telephony/ims/ImsCallProfile;

.field public final synthetic f$2:Lorg/codeaurora/ims/DriverCallIms;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;->f$0:Lorg/codeaurora/ims/ImsServiceSub;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/ims/ImsCallProfile;

    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;->f$2:Lorg/codeaurora/ims/DriverCallIms;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;->f$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda3;->f$2:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->$r8$lambda$rJjzxYtU8IUu44Y2ppun6X7UwFY(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/DriverCallIms;)V

    return-void
.end method
