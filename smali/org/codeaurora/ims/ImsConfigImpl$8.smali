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

    .line 872
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 875
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v1

    const-string v2, "moto_voice_domain_pref_ignore_bool"

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v1, "SetVoiceDomainSetting invalid"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    return-void

    .line 882
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 883
    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/codeaurora/ims/ImsUtils;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 884
    .local v0, "bEnabled":Z
    :goto_1
    if-eqz v0, :cond_3

    const/4 v1, 0x3

    goto :goto_2

    .line 885
    :cond_3
    nop

    :goto_2
    nop

    .line 887
    .local v1, "voiceDomain":I
    new-instance v2, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 888
    .local v2, "mMotoExtTM":Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    invoke-virtual {v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getVoiceDomainSetting()I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 889
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetVoiceDomainSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    invoke-virtual {v2, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setVoiceDomainSetting(I)Z

    .line 892
    :cond_4
    return-void
.end method
