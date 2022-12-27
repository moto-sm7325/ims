.class Lorg/codeaurora/ims/ImsConfigImpl$5;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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

    .line 257
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 9

    .line 260
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1400(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 261
    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1300(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 262
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_0

    .line 263
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v2, "onSubscriptionsChanged unable to process due to SubscriptionInfo is null"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1500(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 266
    return-void

    .line 269
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 270
    .local v1, "subId":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubscriptionsChanged oldSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new SubId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 273
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1500(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 274
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$602(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    .line 275
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 276
    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1400(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 280
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$302(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ims/ImsMmTelManager;)Landroid/telephony/ims/ImsMmTelManager;

    .line 282
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$002(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 283
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$000(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1600(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 287
    sget-object v2, Landroid/telephony/SubscriptionManager;->ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 289
    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 290
    .local v2, "voLTEEnabledUri":Landroid/net/Uri;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 291
    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1700(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v6

    .line 290
    invoke-virtual {v3, v2, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 294
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    sget-object v6, Landroid/telephony/SubscriptionManager;->WFC_MODE_CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 295
    invoke-static {v8}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 294
    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1802(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)Landroid/net/Uri;

    .line 296
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    sget-object v6, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 297
    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-static {v6, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1902(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)Landroid/net/Uri;

    .line 298
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1800(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 299
    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$2000(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v6

    .line 298
    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1900(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 301
    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$2100(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v6

    .line 300
    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 302
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->access$2202(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z

    goto :goto_1

    .line 277
    .end local v2    # "voLTEEnabledUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid subscription id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    return-void

    .line 304
    :cond_3
    :goto_1
    return-void
.end method
