.class Lorg/codeaurora/ims/ImsConfigImpl$8;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field final synthetic val$event_code:I

.field final synthetic val$event_info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 915
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->val$event_code:I

    iput-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->val$event_info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 926
    const/4 v0, 0x0

    .line 927
    .local v0, "dm_provision":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    const-string v3, "carrier_volte_provisioning_required_bool"

    invoke-static {v1, v2, v3}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 929
    or-int/lit8 v0, v0, 0x1

    .line 931
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 933
    or-int/lit8 v0, v0, 0x2

    .line 935
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 937
    or-int/lit8 v0, v0, 0x4

    .line 939
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0x19

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 941
    or-int/lit8 v0, v0, 0x8

    .line 943
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 945
    or-int/lit8 v0, v0, 0x10

    .line 947
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0x41

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    if-ne v2, v1, :cond_4

    .line 949
    or-int/lit8 v0, v0, 0x20

    .line 953
    :cond_4
    const-string v1, "CALL_PERF_STATS"

    .line 954
    .local v1, "CHECKIN_GROUP_TAG":Ljava/lang/String;
    const-string v2, "VolteProvisioning"

    .line 955
    .local v2, "CHECKIN_EVENT_NAME":Ljava/lang/String;
    new-instance v9, Lorg/codeaurora/ims/CheckinEvent;

    const-string v4, "CALL_PERF_STATS"

    const-string v5, "VolteProvisioning"

    const-string v6, "1.0"

    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/codeaurora/ims/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 961
    .local v3, "ce":Lorg/codeaurora/ims/CheckinEvent;
    const/4 v4, 0x0

    .line 962
    .local v4, "flag":I
    :try_start_0
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmUserSetting(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :try_start_1
    const-string v6, "usr"

    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmUserSetting(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 964
    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmUserSetting(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int v4, v6, v0

    .line 965
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    :try_start_2
    const-string v5, "dm"

    invoke-virtual {v3, v5, v0}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 968
    iget v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->val$event_code:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 969
    const-string v6, "evt"

    invoke-virtual {v3, v6, v5}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 971
    :cond_5
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->val$event_info:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 972
    const-string v5, "evt_info"

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->val$event_info:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_6
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmVolteProvisionFlag(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v5

    if-ne v5, v4, :cond_7

    .line 976
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore Checkin event, flag={0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 977
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}, tag={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}, value={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 978
    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 976
    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    return-void

    .line 981
    :cond_7
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmVolteProvisionFlag(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 983
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/CheckinEvent;->publish(Landroid/content/ContentResolver;)V

    .line 985
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Log Checkin event, tag={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}, value={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 986
    invoke-virtual {v3}, Lorg/codeaurora/ims/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 985
    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 989
    .end local v4    # "flag":I
    goto :goto_0

    .line 965
    .restart local v4    # "flag":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "dm_provision":I
    .end local v1    # "CHECKIN_GROUP_TAG":Ljava/lang/String;
    .end local v2    # "CHECKIN_EVENT_NAME":Ljava/lang/String;
    .end local v3    # "ce":Lorg/codeaurora/ims/CheckinEvent;
    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl$8;
    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 987
    .end local v4    # "flag":I
    .restart local v0    # "dm_provision":I
    .restart local v1    # "CHECKIN_GROUP_TAG":Ljava/lang/String;
    .restart local v2    # "CHECKIN_EVENT_NAME":Ljava/lang/String;
    .restart local v3    # "ce":Lorg/codeaurora/ims/CheckinEvent;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl$8;
    :catch_0
    move-exception v4

    .line 988
    .local v4, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$8;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checkin publish failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 990
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
