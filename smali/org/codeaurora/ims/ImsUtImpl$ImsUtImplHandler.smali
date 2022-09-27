.class Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsUtImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUtImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;)V
    .locals 1

    .line 882
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/Looper;)V

    .line 883
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 885
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 886
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 887
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "listener":Lorg/codeaurora/ims/ImsUtListenerImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->access$000(Lorg/codeaurora/ims/ImsUtImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 894
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$100(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v2

    move-object v0, v2

    .line 895
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->access$200(Lorg/codeaurora/ims/ImsUtImpl;)Z

    move-result v2

    if-nez v2, :cond_41

    if-nez v0, :cond_0

    goto/16 :goto_f

    .line 899
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x324

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_e

    .line 1467
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1468
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1469
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ims/ImsSsData;

    .line 1470
    .local v2, "ssData":Landroid/telephony/ims/ImsSsData;
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 1471
    .end local v2    # "ssData":Landroid/telephony/ims/ImsSsData;
    goto/16 :goto_e

    .line 1472
    :cond_1
    const-string v2, "exception in handling UNSOL_ON_SS"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 992
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 993
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_40

    .line 994
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_2

    .line 995
    const-string v2, "Invalid message id received in handleMessage."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 996
    return-void

    .line 999
    :cond_2
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 1000
    const-string v2, "Update CB error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1002
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_40

    .line 1003
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1004
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1003
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1007
    :cond_3
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 1008
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1009
    .local v2, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1010
    .local v3, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v3, :cond_4

    .line 1011
    const-string v4, "SuppSvcResponse has failure for CB update."

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1014
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v7

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1012
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1015
    return-void

    .line 1016
    :cond_4
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 1017
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 1019
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1020
    .local v4, "error":Landroid/telephony/ims/ImsReasonInfo;
    const-string v5, "ImsUtImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CB update failed with error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1023
    return-void

    .line 1025
    .end local v4    # "error":Landroid/telephony/ims/ImsReasonInfo;
    :cond_5
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    .line 1026
    .end local v2    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_e

    .line 1029
    :cond_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_e

    .line 905
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 906
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_40

    .line 907
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-gez v7, :cond_7

    .line 908
    const-string v2, "Invalid message id received in handleMessage."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    return-void

    .line 912
    :cond_7
    iget-object v7, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_8

    .line 913
    const-string v2, "Query CB error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_40

    .line 916
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 917
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 916
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 920
    :cond_8
    iget-object v7, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_10

    .line 921
    iget-object v7, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 922
    .local v7, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v7}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v8

    .line 923
    .local v8, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v8, :cond_9

    .line 924
    const-string v2, "SuppSvcResponse has failure for CB query."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    iget v2, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 927
    invoke-virtual {v8}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 925
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 928
    return-void

    .line 929
    :cond_9
    invoke-virtual {v7}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    .line 930
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    .line 932
    invoke-virtual {v7}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v5, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 933
    .local v2, "error":Landroid/telephony/ims/ImsReasonInfo;
    const-string v3, "ImsUtImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CB query failed with error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 935
    return-void

    .line 937
    .end local v2    # "error":Landroid/telephony/ims/ImsReasonInfo;
    :cond_a
    invoke-virtual {v7}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v9

    if-ne v9, v2, :cond_b

    .line 938
    const-string v2, "No service status info in response for CB query."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    iget v2, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 944
    :cond_b
    invoke-virtual {v7}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 945
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v2, "ssInfoArray":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    nop

    .line 947
    invoke-virtual {v7}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v3

    .line 948
    .local v3, "barredLines":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    .line 949
    .local v5, "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 950
    nop

    .line 951
    invoke-virtual {v5}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->getLines()Ljava/util/List;

    move-result-object v6

    .line 952
    .local v6, "line":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    .line 953
    .local v10, "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    new-instance v11, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 955
    invoke-virtual {v10}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getStatus()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 956
    .local v11, "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    nop

    .line 957
    invoke-virtual {v10}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 956
    invoke-virtual {v11, v12}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 958
    invoke-virtual {v11}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    .end local v10    # "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    .end local v11    # "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    goto :goto_1

    .line 961
    .end local v5    # "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    .end local v6    # "line":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;>;"
    :cond_c
    goto :goto_0

    .line 962
    :cond_d
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 964
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/telephony/ims/ImsSsInfo;

    .line 963
    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/ims/ImsSsInfo;

    .line 962
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 965
    .end local v2    # "ssInfoArray":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    .end local v3    # "barredLines":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;>;"
    goto :goto_2

    .line 966
    :cond_e
    new-array v2, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 967
    .local v2, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    const/4 v4, 0x0

    .line 968
    .local v4, "status":I
    invoke-virtual {v7}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_f

    .line 969
    const/4 v4, 0x1

    .line 971
    :cond_f
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v3, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 973
    .local v3, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v6

    .line 974
    .local v6, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    aput-object v6, v2, v5

    .line 975
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "success callback Query Anonymous CB, status= "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v6}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 975
    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 981
    .end local v2    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    .end local v3    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    .end local v4    # "status":I
    .end local v6    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v7    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v8    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_2
    goto/16 :goto_e

    .line 983
    :cond_10
    const-string v2, "Null response received for Query CB!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    iget v2, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1342
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1343
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_40

    .line 1344
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_11

    .line 1345
    const-string v2, "Invalid message id received in handleMessage."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1346
    return-void

    .line 1348
    :cond_11
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_12

    .line 1349
    const-string v2, "Query COLP error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1351
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_40

    .line 1352
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1354
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1352
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1357
    :cond_12
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_40

    .line 1360
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1361
    .local v2, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1362
    .local v3, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v3, :cond_13

    .line 1363
    const-string v4, "SuppSvcResponse has failure for COLP query."

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1364
    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1366
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v7

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1364
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 1367
    :cond_13
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_14

    .line 1368
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 1370
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1371
    .local v4, "error":Landroid/telephony/ims/ImsReasonInfo;
    const-string v5, "ImsUtImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COLP query failed with error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1375
    .end local v4    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_3

    .line 1377
    :cond_14
    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1378
    new-instance v4, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1379
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1380
    .local v4, "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v5

    .line 1381
    .local v5, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getProvisionStatus()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " provision Status= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1382
    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1386
    const-string v6, "Success callback called for Query COLP."

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1387
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v6, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1390
    .end local v2    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v4    # "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    .end local v5    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :goto_3
    goto/16 :goto_e

    .line 1299
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1300
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/SuppService;

    .line 1301
    .local v2, "colr":Lorg/codeaurora/ims/SuppService;
    if-eqz v1, :cond_40

    .line 1302
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_15

    .line 1303
    const-string v3, "Invalid message id received in handleMessage."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    return-void

    .line 1306
    :cond_15
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_17

    .line 1307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error for Query Event= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1309
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1310
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1311
    .restart local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v3, :cond_16

    .line 1312
    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1315
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v7

    .line 1316
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1312
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4

    .line 1318
    :cond_16
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1320
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1318
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1322
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    goto/16 :goto_e

    .line 1323
    :cond_17
    if-eqz v2, :cond_40

    .line 1324
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1325
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1326
    .local v3, "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v4

    .line 1327
    .local v4, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " status= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1327
    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppService;->getProvisionStatus()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Provision Status= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1331
    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Success callback on Query event= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1335
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1337
    .end local v3    # "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    .end local v4    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    goto/16 :goto_e

    .line 1265
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v2    # "colr":Lorg/codeaurora/ims/SuppService;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1266
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/SuppService;

    .line 1267
    .local v2, "clipStatus":Lorg/codeaurora/ims/SuppService;
    if-eqz v1, :cond_40

    .line 1268
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_18

    .line 1269
    const-string v3, "Invalid message id received in handleMessage."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    return-void

    .line 1272
    :cond_18
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1a

    .line 1273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error for Query Event= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1274
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1275
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1276
    .local v3, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v3, :cond_19

    .line 1277
    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1280
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v7

    .line 1281
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1277
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_5

    .line 1283
    :cond_19
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1285
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1283
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1287
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_5
    goto/16 :goto_e

    .line 1288
    :cond_1a
    if-eqz v2, :cond_40

    .line 1289
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1290
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1291
    .local v3, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success callback on Query event= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1292
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1293
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v5

    .line 1292
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1294
    .end local v3    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    goto/16 :goto_e

    .line 1399
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v2    # "clipStatus":Lorg/codeaurora/ims/SuppService;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1400
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_40

    .line 1401
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_1b

    .line 1402
    const-string v2, "Invalid message id received in handleMessage."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1403
    return-void

    .line 1405
    :cond_1b
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_24

    .line 1406
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1c

    .line 1407
    const-string v2, "Update CLIR error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 1409
    :cond_1c
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1d

    .line 1410
    const-string v2, "Update CLIP error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 1412
    :cond_1d
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1e

    .line 1413
    const-string v2, "Update COLR error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 1415
    :cond_1e
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1f

    .line 1416
    const-string v2, "Update COLP error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1418
    :cond_1f
    :goto_6
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_22

    .line 1421
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1423
    .local v2, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1424
    .local v3, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v3, :cond_20

    .line 1425
    const-string v4, "SuppSvcResponse has failure for CLIP/COLP update"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1430
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v7

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1427
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_7

    .line 1431
    :cond_20
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    .line 1432
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 1434
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1435
    .local v4, "error":Landroid/telephony/ims/ImsReasonInfo;
    const-string v5, "ImsUtImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SuppSvc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " failed, error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1439
    .end local v4    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_7

    .line 1440
    :cond_21
    const-string v4, "ImsUtImpl"

    const-string v5, "SuppSvcResponse failure with neither errordetails nor failurecause"

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1444
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1442
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1446
    .end local v2    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_7
    goto/16 :goto_e

    :cond_22
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_23

    .line 1447
    const-string v2, "ImsUtImpl"

    const-string v3, "SuppSvcResponse failure with valid userObj"

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1450
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1448
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1453
    :cond_23
    const-string v2, "ImsUtImpl"

    const-string v3, "SuppSvcResponse failure with neither ar.result nor userObj"

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1457
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1455
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1460
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success callback called for msg.what= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1462
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_e

    .line 1230
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1231
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_40

    .line 1232
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_25

    .line 1233
    const-string v2, "Invalid message id received in handleMessage."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1234
    return-void

    .line 1236
    :cond_25
    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_27

    .line 1237
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_26

    .line 1238
    const-string v2, "Query CLIR error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    :cond_26
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_40

    .line 1242
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1244
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1242
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1247
    :cond_27
    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_40

    .line 1248
    iget-object v4, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 1249
    .local v4, "clirResp":[I
    if-eqz v4, :cond_28

    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_28

    .line 1251
    new-instance v6, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v6, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    aget v2, v4, v5

    .line 1252
    invoke-virtual {v6, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v2

    aget v3, v4, v3

    .line 1253
    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 1254
    .local v2, "info":Landroid/telephony/ims/ImsSsInfo;
    const-string v3, "Calling success callback for Query CLIR."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1255
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1257
    .end local v2    # "info":Landroid/telephony/ims/ImsSsInfo;
    goto :goto_8

    .line 1258
    :cond_28
    const-string v2, "Received invalid response for Query CLIR."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1260
    .end local v4    # "clirResp":[I
    :goto_8
    goto/16 :goto_e

    .line 1035
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1036
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_40

    .line 1037
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_29

    .line 1038
    const-string v2, "Invalid message id received in handleMessage."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    return-void

    .line 1041
    :cond_29
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2e

    .line 1042
    const-string v2, "Update CW error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1044
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2c

    .line 1047
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1049
    .local v2, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1050
    .restart local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v3, :cond_2a

    .line 1051
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1055
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v7

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1053
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_9

    .line 1056
    :cond_2a
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2b

    .line 1057
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    .line 1060
    invoke-virtual {v2}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1061
    .local v4, "error":Landroid/telephony/ims/ImsReasonInfo;
    const-string v5, "ImsUtImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SuppSvc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " failed with error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1065
    .end local v4    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_9

    .line 1066
    :cond_2b
    const-string v4, "ImsUtImpl"

    const-string v5, "SuppSvcResponse failure with neither errordetails nor failurecause"

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1069
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1068
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1071
    .end local v2    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_9
    goto/16 :goto_e

    .line 1072
    :cond_2c
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2d

    .line 1073
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1074
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1073
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1077
    :cond_2d
    const-string v2, "ImsUtImpl"

    const-string v3, "SuppSvcResponse failure with neither ar.result nor userObj"

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1080
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1079
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1084
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success callback called for msg.what= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_e

    .line 1173
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1174
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_40

    .line 1175
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_2f

    .line 1176
    const-string v2, "Invalid message id received in handleMessage."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1177
    return-void

    .line 1179
    :cond_2f
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_30

    .line 1180
    const-string v2, "Query CW error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1181
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_40

    .line 1182
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1184
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1182
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1187
    :cond_30
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_34

    .line 1188
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 1190
    .local v2, "cwResponse":[I
    new-array v7, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 1192
    .local v7, "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    const/4 v8, 0x0

    .line 1193
    .local v8, "status":I
    aget v9, v2, v5

    if-ne v9, v3, :cond_32

    .line 1194
    aget v4, v2, v3

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_31

    .line 1195
    const/4 v3, 0x1

    .end local v8    # "status":I
    .local v3, "status":I
    goto :goto_a

    .line 1197
    .end local v3    # "status":I
    .restart local v8    # "status":I
    :cond_31
    const/4 v3, 0x0

    .end local v8    # "status":I
    .restart local v3    # "status":I
    goto :goto_a

    .line 1200
    .end local v3    # "status":I
    .restart local v8    # "status":I
    :cond_32
    aget v3, v2, v5

    if-nez v3, :cond_33

    .line 1201
    const/4 v3, 0x0

    .line 1213
    .end local v8    # "status":I
    .restart local v3    # "status":I
    :goto_a
    new-instance v4, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v4, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1214
    .local v4, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v6

    aput-object v6, v7, v5

    .line 1216
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1219
    .end local v2    # "cwResponse":[I
    .end local v3    # "status":I
    .end local v4    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    .end local v7    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    goto/16 :goto_e

    .line 1204
    .restart local v2    # "cwResponse":[I
    .restart local v7    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .restart local v8    # "status":I
    :cond_33
    const-string v3, "No service status received for CallWaitingInfo."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1205
    iget v3, p1, Landroid/os/Message;->arg1:I

    new-instance v9, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v9, v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v9}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1209
    return-void

    .line 1221
    .end local v2    # "cwResponse":[I
    .end local v7    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v8    # "status":I
    :cond_34
    const-string v2, "Null response received for Query CW!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1222
    iget v2, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1092
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1093
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_3a

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_35

    goto/16 :goto_d

    .line 1098
    :cond_35
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_39

    .line 1099
    const-string v2, "Update CF error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 1102
    .local v2, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    if-eqz v2, :cond_36

    .line 1103
    invoke-virtual {v2}, Lorg/codeaurora/ims/CallForwardStatusInfo;->getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    goto :goto_b

    :cond_36
    move-object v3, v4

    .line 1104
    .local v3, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_b
    if-eqz v3, :cond_37

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    .line 1105
    .local v4, "failCause":Ljava/lang/String;
    :cond_37
    if-eqz v4, :cond_38

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_38

    .line 1107
    iget v5, p1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    .line 1109
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v8

    invoke-direct {v7, v6, v8, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1107
    invoke-virtual {v0, v5, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_c

    .line 1111
    :cond_38
    const-string v5, "ImsUtImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update CF failure: ar = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " sipError: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 1114
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    .line 1113
    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1116
    .end local v2    # "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    .end local v3    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v4    # "failCause":Ljava/lang/String;
    :goto_c
    goto/16 :goto_e

    .line 1117
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success callback called for msg.what= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    .line 1120
    goto/16 :goto_e

    .line 1094
    :cond_3a
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response: ar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1095
    return-void

    .line 1123
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1124
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_40

    .line 1125
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gez v2, :cond_3b

    .line 1126
    const-string v2, "Invalid message id received in handleMessage."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    return-void

    .line 1129
    :cond_3b
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3c

    .line 1130
    const-string v2, "Query CF error"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1131
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_40

    .line 1132
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1133
    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    .line 1132
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_e

    .line 1136
    :cond_3c
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3f

    .line 1137
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1140
    .local v2, "cfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    array-length v7, v2

    if-ge v7, v3, :cond_3d

    .line 1141
    const-string v3, "CallForwardInfo list has no elements!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    iget v3, p1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v7, v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v3, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1145
    return-void

    .line 1148
    :cond_3d
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1149
    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsUtImpl;->toImsCallForwardInfo([Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v3

    .line 1151
    .local v3, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-nez v3, :cond_3e

    .line 1152
    iget v7, p1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v8, v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1156
    return-void

    .line 1159
    :cond_3e
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 1162
    .end local v2    # "cfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .end local v3    # "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_e

    .line 1164
    :cond_3f
    const-string v2, "Null response received for Query CF!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    iget v2, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v6, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1477
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_40
    :goto_e
    return-void

    .line 896
    :cond_41
    :goto_f
    :try_start_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    const-string v3, "handleMessage"

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsUtImpl;->access$300(Lorg/codeaurora/ims/ImsUtImpl;Ljava/lang/String;)V

    .line 897
    monitor-exit v1

    return-void

    .line 899
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
