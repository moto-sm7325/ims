.class public Lorg/codeaurora/ims/ImsServiceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStateReceiver.java"


# static fields
.field private static CHANNEL_ID:Ljava/lang/String; = null

.field private static final IMS_HD_ICON:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceStateReceiver"

.field private static NOTIFICATION_GROUP:Ljava/lang/String; = null

.field private static final SHOW_HD_ICON:Ljava/lang/String; = "config_update_service_status"

.field private static final SHOW_VOLTE_ICON:Ljava/lang/String; = "config_update_volte_icon"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mPhoneId:I

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mShowHDIcon:Z

.field private mShowVOLTEIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, "ims_services_channel_"

    sput-object v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->CHANNEL_ID:Ljava/lang/String;

    .line 52
    const-string v0, "ims_notification_group_"

    sput-object v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->NOTIFICATION_GROUP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V
    .locals 1
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowVOLTEIcon:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 57
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 58
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    .line 59
    iput p3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    .line 60
    return-void
.end method

.method public static overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification$Builder;

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "extras":Landroid/os/Bundle;
    nop

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 87
    return-void
.end method

.method private shallShowHDIcon()Z
    .locals 9

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "showHDIcon":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 145
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    const-string v2, "ImsServiceStateReceiver"

    if-nez v1, :cond_0

    .line 146
    const-string v3, "shallShowHDIcon SubscriptionManager is null"

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return v0

    .line 150
    :cond_0
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 151
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v3, :cond_1

    .line 152
    const-string v4, "shallShowHDIcon SubscriptionInfo is null"

    invoke-static {v2, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return v0

    .line 156
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 158
    .local v4, "subId":I
    invoke-virtual {v1, v4}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 159
    const-string v5, "shallShowHDIcon subId is not active"

    invoke-static {v2, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return v0

    .line 162
    :cond_2
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    const-string v6, "carrier_config"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 164
    .local v5, "mgr":Landroid/telephony/CarrierConfigManager;
    const/4 v6, 0x0

    .line 165
    .local v6, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_3

    .line 166
    invoke-virtual {v5, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 168
    :cond_3
    if-eqz v6, :cond_4

    .line 169
    const-string v7, "config_update_service_status"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    const-string v7, "config_update_volte_icon"

    invoke-virtual {v6, v7, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowVOLTEIcon:Z

    .line 172
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shallShowHDIcon config showHDIcon : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " phoneId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return v0
.end method

.method private showHDIcon(Z)V
    .locals 8
    .param p1, "showHDIcon"    # Z

    .line 90
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    const-string v1, "ImsServiceStateReceiver"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 95
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 94
    invoke-virtual {v0, v3, v2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "notification"

    .line 96
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showHDIcon Package name not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    if-nez v0, :cond_2

    .line 103
    const-string v0, "showHDIcon unable to show HD icon due to NotificationManager is null"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 107
    :cond_2
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 108
    if-eqz p1, :cond_5

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/codeaurora/ims/ImsServiceStateReceiver;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 111
    .local v0, "channel":Landroid/app/NotificationChannel;
    if-nez v0, :cond_3

    .line 112
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "name":Ljava/lang/CharSequence;
    const/4 v3, 0x2

    .line 114
    .local v3, "importance":I
    new-instance v4, Landroid/app/NotificationChannel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/codeaurora/ims/ImsServiceStateReceiver;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v0, v4

    .line 115
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 117
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v3    # "importance":I
    :cond_3
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/codeaurora/ims/ImsServiceStateReceiver;->NOTIFICATION_GROUP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 120
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowVOLTEIcon:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 121
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f030003

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/2addr v7, v4

    .line 123
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    .line 121
    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 124
    const v3, 0x7f020002

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 126
    :cond_4
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f030002

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/2addr v7, v4

    .line 128
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    .line 126
    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 129
    const v3, 0x7f020001

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 131
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 132
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 133
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 134
    .local v2, "notification":Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 135
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 136
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "notification":Landroid/app/Notification;
    goto :goto_2

    .line 137
    :cond_5
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 139
    :goto_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 181
    .local v0, "subManager":Landroid/telephony/SubscriptionManager;
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 182
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    const-string v2, "ImsServiceStateReceiver"

    if-nez v1, :cond_0

    .line 183
    const-string v3, "SimStateReceiver onReceive subId is not yet active"

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    return-void

    .line 187
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 188
    .local v3, "subId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    const-string v6, "android.telephony.extra.SUBSCRIPTION_INDEX"

    if-eqz v4, :cond_1

    .line 189
    const/4 v4, 0x0

    const-string v7, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 191
    .local v4, "simStatus":I
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 193
    .local v5, "intentSubId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SimStateReceiver sub id from intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " simStatus : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-ne v5, v3, :cond_2

    const/16 v2, 0xa

    if-ne v2, v4, :cond_2

    .line 201
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->onIccLoaded()V

    goto :goto_0

    .line 203
    .end local v4    # "simStatus":I
    .end local v5    # "intentSubId":I
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 204
    const-string v7, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 207
    .local v4, "intentSubId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received carrier config change, sub id from intent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-ne v3, v4, :cond_3

    .line 209
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v2

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 210
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->onCarrierConfigChanged()V

    goto :goto_1

    .line 203
    .end local v4    # "intentSubId":I
    :cond_2
    :goto_0
    nop

    .line 213
    :cond_3
    :goto_1
    return-void
.end method

.method public updateHDIcon(ZZ)V
    .locals 3
    .param p1, "isVideoCapable"    # Z
    .param p2, "isVoiceCapable"    # Z

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHDIcon isVideo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVoice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " show HD Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceStateReceiver"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 70
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->shallShowHDIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Z)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Z)V

    goto :goto_0

    .line 78
    :cond_4
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Z)V

    .line 80
    :goto_0
    return-void
.end method
