.class Lorg/codeaurora/ims/ImsConfigImpl$4;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 116
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v1, "onReceive: null extras"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    return-void

    .line 125
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.wfcactivation.TRY_WFC_CONNECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v2, "onReceive: ACTION_TRY_WFC_CONNECTION"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "SUB_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TRY_STATUS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 131
    .local v2, "status":I
    const/16 v3, 0x1b

    if-ne v2, v1, :cond_1

    .line 132
    const-string v1, "setwfcmode: wifi preferred"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$200(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsSenderRxr;

    move-result-object v4

    const/16 v5, 0x2c

    .line 134
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 133
    invoke-virtual/range {v4 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 136
    :cond_1
    const/4 v1, 0x2

    if-ne v2, v1, :cond_3

    .line 137
    const-string v1, "setwfcmode: user setting"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$300(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 139
    const-string v1, "setwfcmode: mImsMmTelManager null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    return-void

    .line 142
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$200(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsSenderRxr;

    move-result-object v4

    const/16 v5, 0x2c

    .line 143
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v6

    const/4 v7, 0x0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 144
    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$300(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 142
    invoke-virtual/range {v4 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 147
    .end local v2    # "status":I
    :cond_3
    :goto_0
    return-void

    .line 153
    .end local v0    # "subId":I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.motorola.android.ims.ACTION_UPDATE_IMS_SERVICE_CONFIG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "phone"

    const/4 v3, -0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$400(Lorg/codeaurora/ims/ImsConfigImpl;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v1, "onReceive: ACTION_UPDATE_IMS_SERVICE_CONFIG"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "phoneId":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v1

    .line 157
    .local v1, "subId":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 158
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWfcModeConfigurationsToModem()V

    .line 160
    :cond_5
    return-void

    .line 165
    .end local v0    # "phoneId":I
    .end local v1    # "subId":I
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v4, "onReceive: ACTION_VOPS_SSAC_STATUS"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .restart local v0    # "phoneId":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$700(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 169
    const-string v2, "Vops"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 170
    .local v1, "isVopsEnabled":Z
    const/4 v2, 0x0

    const-string v3, "Ssac"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 171
    .local v2, "isSsacVoiceBarred":Z
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$800(Lorg/codeaurora/ims/ImsConfigImpl;)Z

    move-result v3

    if-ne v3, v1, :cond_7

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$900(Lorg/codeaurora/ims/ImsConfigImpl;)Z

    move-result v3

    if-eq v3, v2, :cond_8

    .line 172
    :cond_7
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$802(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z

    .line 173
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$902(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z

    .line 174
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$000(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 175
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$000(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ServiceState;)V

    .line 179
    .end local v1    # "isVopsEnabled":Z
    .end local v2    # "isSsacVoiceBarred":Z
    :cond_8
    return-void

    .line 183
    .end local v0    # "phoneId":I
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, "subId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "action":Ljava/lang/String;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBroadcastReceiver: action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mSubId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 187
    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 189
    return-void

    .line 191
    :cond_a
    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 192
    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    if-ne v0, v3, :cond_b

    .line 193
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$402(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z

    .line 194
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWfcModeConfigurationsToModem()V

    .line 195
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1000(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 196
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1100(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 197
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1200(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 199
    :cond_b
    return-void
.end method
