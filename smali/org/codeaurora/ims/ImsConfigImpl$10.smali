.class Lorg/codeaurora/ims/ImsConfigImpl$10;
.super Landroid/telephony/PhoneStateListener;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 1033
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$10;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1036
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$10;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$10;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onServiceStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$10;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ServiceState;)V

    .line 1038
    return-void
.end method
