.class Lorg/codeaurora/ims/ImsConfigImpl$11;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->adjustAndSyncVoWiFiMode(Landroid/telephony/ServiceState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field final synthetic val$serviceState:Landroid/telephony/ServiceState;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1063
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->val$serviceState:Landroid/telephony/ServiceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1065
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->val$serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 1069
    .local v0, "isRoaming":Z
    if-eqz v0, :cond_0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$300(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v1

    .local v1, "mode":I
    goto :goto_0

    .line 1072
    .end local v1    # "mode":I
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$300(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    .restart local v1    # "mode":I
    :goto_0
    nop

    .line 1079
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$2800(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    move-result v2

    .line 1081
    .local v2, "adjMode":I
    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1300(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1082
    const/16 v3, 0x3eb

    .local v3, "item":I
    goto :goto_1

    .line 1084
    .end local v3    # "item":I
    :cond_1
    const/16 v3, 0x1b

    .line 1086
    .restart local v3    # "item":I
    :goto_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v4

    .line 1087
    .local v4, "bpMode":I
    if-eq v2, v4, :cond_2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 1088
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v5, v3, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequestAsync(II)V

    .line 1090
    :cond_2
    return-void

    .line 1074
    .end local v1    # "mode":I
    .end local v2    # "adjMode":I
    .end local v3    # "item":I
    .end local v4    # "bpMode":I
    :catch_0
    move-exception v1

    .line 1075
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not update WFCMode: invalid sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$11;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    return-void
.end method
