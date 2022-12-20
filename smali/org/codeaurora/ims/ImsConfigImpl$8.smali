.class Lorg/codeaurora/ims/ImsConfigImpl$8;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->setVoiceDomainSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 830
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 832
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$000(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v0

    .line 833
    .local v0, "carrierId":I
    const/16 v1, 0x7a0

    if-ne v0, v1, :cond_0

    .line 834
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v2, "SetVoiceDomainSetting invalid"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    return-void

    .line 838
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$700(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsUtils;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 839
    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$700(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    invoke-static {v1, v3}, Lorg/codeaurora/ims/ImsUtils;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 840
    .local v1, "bEnabled":Z
    :goto_1
    if-eqz v1, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    .line 841
    :cond_3
    nop

    :goto_2
    nop

    .line 843
    .local v2, "voiceDomain":I
    new-instance v3, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 844
    .local v3, "mMotoExtTM":Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    invoke-virtual {v3}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getVoiceDomainSetting()I

    move-result v4

    if-eq v2, v4, :cond_4

    .line 845
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetVoiceDomainSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    invoke-virtual {v3, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setVoiceDomainSetting(I)Z

    .line 848
    :cond_4
    return-void
.end method
