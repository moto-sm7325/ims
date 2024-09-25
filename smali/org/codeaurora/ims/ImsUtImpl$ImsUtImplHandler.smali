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

    .line 816
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/Looper;)V

    .line 817
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 819
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 820
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 821
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 825
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message received: what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$misDisposed(Lorg/codeaurora/ims/ImsUtImpl;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_f

    .line 832
    :cond_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const-string v4, "SuppSvc "

    const-string v5, "SuppSvcResponse failure with neither ar.result nor userObj"

    const-string v6, "Success callback on Query event= "

    const-string v7, "Error for Query Event= "

    const-string v8, "SuppSvcResponse failure with neither errordetails nor failurecause"

    const-string v9, "Service= "

    const-string v10, "Success callback called for msg.what= "

    const/4 v12, 0x0

    const-string v13, "Invalid message id received in handleMessage."

    const-string v14, "ImsUtImpl"

    const/4 v15, 0x0

    const/16 v11, 0x324

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_e

    .line 1399
    :pswitch_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1400
    .local v2, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 1401
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ims/ImsSsData;

    .line 1402
    .local v3, "ssData":Landroid/telephony/ims/ImsSsData;
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 1403
    .end local v3    # "ssData":Landroid/telephony/ims/ImsSsData;
    goto/16 :goto_e

    .line 1404
    :cond_1
    const-string v3, "exception in handling UNSOL_ON_SS"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 922
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 923
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_40

    .line 924
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_2

    .line 925
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    return-void

    .line 929
    :cond_2
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_6

    .line 930
    const-string v3, "Update CB error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 932
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 933
    .local v3, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 934
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_3

    .line 935
    const-string v5, "SuppSvcResponse has failure for CB update."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    .line 938
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v8

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v11, v8, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 936
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 939
    return-void

    .line 940
    :cond_3
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 941
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 943
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v11, v15, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 944
    .local v5, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CB update failed with error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 947
    return-void

    .line 949
    .end local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    invoke-static {v14, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 952
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 951
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 954
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    goto/16 :goto_e

    .line 955
    :cond_5
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 956
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 955
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 961
    :cond_6
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_e

    .line 835
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 836
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_40

    .line 837
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_7

    .line 838
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    return-void

    .line 842
    :cond_7
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    .line 843
    const-string v3, "Query CB error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 845
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 846
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 847
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 846
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 850
    :cond_8
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_10

    .line 851
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 852
    .local v4, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 853
    .local v5, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v5, :cond_9

    .line 854
    const-string v3, "SuppSvcResponse has failure for CB query."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 855
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    .line 857
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v8

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v11, v8, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 855
    invoke-virtual {v3, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 858
    return-void

    .line 859
    :cond_9
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 860
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    .line 862
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v11, v15, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 863
    .local v3, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CB query failed with error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 865
    return-void

    .line 867
    .end local v3    # "error":Landroid/telephony/ims/ImsReasonInfo;
    :cond_a
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v6

    if-ne v6, v3, :cond_b

    .line 868
    const-string v3, "No service status info in response for CB query."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v7, v11, v15, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    .line 874
    :cond_b
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 875
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v3, "ssInfoArray":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    nop

    .line 877
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getBarredLines()Ljava/util/List;

    move-result-object v6

    .line 878
    .local v6, "barredLines":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    .line 879
    .local v8, "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 880
    nop

    .line 881
    invoke-virtual {v8}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->getLines()Ljava/util/List;

    move-result-object v9

    .line 882
    .local v9, "line":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    .line 883
    .local v11, "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    new-instance v12, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 885
    invoke-virtual {v11}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getStatus()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 886
    .local v12, "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    nop

    .line 887
    invoke-virtual {v11}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;->getNumber()Ljava/lang/String;

    move-result-object v13

    .line 886
    invoke-virtual {v12, v13}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 888
    invoke-virtual {v12}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    .end local v11    # "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    .end local v12    # "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    goto :goto_1

    .line 891
    .end local v8    # "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    .end local v9    # "line":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;>;"
    :cond_c
    goto :goto_0

    .line 892
    :cond_d
    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->arg1:I

    .line 894
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/telephony/ims/ImsSsInfo;

    .line 893
    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/telephony/ims/ImsSsInfo;

    .line 892
    invoke-virtual {v7, v8, v9}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 895
    .end local v3    # "ssInfoArray":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    .end local v6    # "barredLines":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;>;"
    goto :goto_2

    .line 896
    :cond_e
    const/4 v3, 0x1

    new-array v6, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 897
    .local v6, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    const/4 v7, 0x0

    .line 898
    .local v7, "status":I
    invoke-virtual {v4}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v8

    if-ne v8, v3, :cond_f

    .line 899
    const/4 v7, 0x1

    .line 901
    :cond_f
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v3, v7}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 903
    .local v3, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v8

    .line 904
    .local v8, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    aput-object v8, v6, v15

    .line 905
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "success callback Query Anonymous CB, status= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 906
    invoke-virtual {v8}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 905
    invoke-static {v0, v9}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    iget-object v9, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v9

    iget v10, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 911
    .end local v3    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    .end local v4    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v5    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v6    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    .end local v7    # "status":I
    .end local v8    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :goto_2
    goto/16 :goto_e

    .line 913
    :cond_10
    const-string v3, "Null response received for Query CB!"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v11, v15, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1274
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1275
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_40

    .line 1276
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_11

    .line 1277
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1278
    return-void

    .line 1280
    :cond_11
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_12

    .line 1281
    const-string v3, "Query COLP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1283
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1284
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1286
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1284
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1289
    :cond_12
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1292
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1293
    .local v3, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1294
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_13

    .line 1295
    const-string v5, "SuppSvcResponse has failure for COLP query."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1296
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    .line 1298
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v8

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v11, v8, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1296
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 1299
    :cond_13
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_14

    .line 1300
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1302
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v11, v15, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1303
    .local v5, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COLP query failed with error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1307
    .end local v5    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_3

    .line 1309
    :cond_14
    iget-object v5, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1310
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1311
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getStatus()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1312
    .local v5, "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v6

    .line 1313
    .local v6, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getProvisionStatus()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1314
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " provision Status= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1315
    invoke-virtual {v6}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1316
    invoke-virtual {v6}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1314
    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1318
    const-string v7, "Success callback called for Query COLP."

    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1319
    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1322
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v5    # "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    .end local v6    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    :goto_3
    goto/16 :goto_e

    .line 1231
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1232
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppService;

    .line 1233
    .local v3, "colr":Lorg/codeaurora/ims/SuppService;
    if-eqz v2, :cond_40

    .line 1234
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_15

    .line 1235
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1236
    return-void

    .line 1238
    :cond_15
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_17

    .line 1239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_40

    .line 1242
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1243
    .restart local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_16

    .line 1244
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    .line 1247
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v8

    .line 1248
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v11, v8, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1244
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_4

    .line 1250
    :cond_16
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1252
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1250
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1254
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    goto/16 :goto_e

    .line 1255
    :cond_17
    if-eqz v3, :cond_40

    .line 1256
    new-instance v4, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1257
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1258
    .local v4, "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v5

    .line 1259
    .local v5, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1260
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1259
    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getProvisionStatus()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Provision Status= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1264
    invoke-virtual {v5}, Landroid/telephony/ims/ImsSsInfo;->getProvisionStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1263
    invoke-static {v0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1267
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1269
    .end local v4    # "ssInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    .end local v5    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    goto/16 :goto_e

    .line 1197
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v3    # "colr":Lorg/codeaurora/ims/SuppService;
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1198
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppService;

    .line 1199
    .local v3, "clipStatus":Lorg/codeaurora/ims/SuppService;
    if-eqz v2, :cond_40

    .line 1200
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_18

    .line 1201
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    return-void

    .line 1204
    :cond_18
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1a

    .line 1205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_40

    .line 1207
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1208
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v4, :cond_19

    .line 1209
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    .line 1212
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v8

    .line 1213
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v11, v8, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1209
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_5

    .line 1215
    :cond_19
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1217
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1215
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1219
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_5
    goto/16 :goto_e

    .line 1220
    :cond_1a
    if-eqz v3, :cond_40

    .line 1221
    new-instance v4, Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 1222
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppService;->getStatus()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1223
    .local v4, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1225
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v7

    .line 1224
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1226
    .end local v4    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    goto/16 :goto_e

    .line 1331
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    .end local v3    # "clipStatus":Lorg/codeaurora/ims/SuppService;
    :pswitch_6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1332
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_40

    .line 1333
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_1b

    .line 1334
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1335
    return-void

    .line 1337
    :cond_1b
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_24

    .line 1338
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_1c

    .line 1339
    const-string v3, "Update CLIR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 1341
    :cond_1c
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1d

    .line 1342
    const-string v3, "Update CLIP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 1344
    :cond_1d
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v6, 0xa

    if-ne v3, v6, :cond_1e

    .line 1345
    const-string v3, "Update COLR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 1347
    :cond_1e
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v6, 0xc

    if-ne v3, v6, :cond_1f

    .line 1348
    const-string v3, "Update COLP error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    :cond_1f
    :goto_6
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_22

    .line 1353
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 1355
    .local v3, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1356
    .local v5, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v5, :cond_20

    .line 1357
    const-string v4, "SuppSvcResponse has failure for CLIP/COLP update"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1359
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    .line 1362
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v8

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v11, v8, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1359
    invoke-virtual {v4, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_7

    .line 1363
    :cond_20
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_21

    .line 1364
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    .line 1366
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v11, v15, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1367
    .local v6, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " failed, error: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1371
    .end local v6    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_7

    .line 1372
    :cond_21
    invoke-static {v14, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1376
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1374
    invoke-virtual {v4, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1378
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v5    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_7
    goto/16 :goto_e

    :cond_22
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_23

    .line 1379
    const-string v3, "SuppSvcResponse failure with valid userObj"

    invoke-static {v14, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1382
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1380
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1385
    :cond_23
    invoke-static {v14, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1389
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1387
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1392
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1394
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_e

    .line 1162
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1163
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_40

    .line 1164
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-gez v4, :cond_25

    .line 1165
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1166
    return-void

    .line 1168
    :cond_25
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_27

    .line 1169
    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_26

    .line 1170
    const-string v3, "Query CLIR error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    :cond_26
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1174
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1176
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1174
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1179
    :cond_27
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_40

    .line 1180
    iget-object v4, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    .line 1181
    .local v4, "clirResp":[I
    if-eqz v4, :cond_28

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_28

    .line 1183
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v5, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    aget v3, v4, v15

    .line 1184
    invoke-virtual {v5, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    const/4 v5, 0x1

    aget v5, v4, v5

    .line 1185
    invoke-virtual {v3, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v3

    .line 1186
    .local v3, "info":Landroid/telephony/ims/ImsSsInfo;
    const-string v5, "Calling success callback for Query CLIR."

    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v3}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 1189
    .end local v3    # "info":Landroid/telephony/ims/ImsSsInfo;
    goto :goto_8

    .line 1190
    :cond_28
    const-string v3, "Received invalid response for Query CLIR."

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    .end local v4    # "clirResp":[I
    :goto_8
    goto/16 :goto_e

    .line 967
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 968
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_40

    .line 969
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_29

    .line 970
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    return-void

    .line 973
    :cond_29
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2e

    .line 974
    const-string v3, "Update CW error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 976
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2c

    .line 979
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/SuppSvcResponse;

    .line 981
    .local v3, "response":Lorg/codeaurora/ims/SuppSvcResponse;
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 982
    .restart local v5    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    if-eqz v5, :cond_2a

    .line 983
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SuppSvcResponse has failure for msg.what= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    .line 987
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v8

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v11, v8, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 985
    invoke-virtual {v4, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_9

    .line 988
    :cond_2a
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2b

    .line 989
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    .line 992
    invoke-virtual {v3}, Lorg/codeaurora/ims/SuppSvcResponse;->getFailureCause()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v11, v15, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 993
    .restart local v6    # "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " failed with error = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v7, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 997
    .end local v6    # "error":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_9

    .line 998
    :cond_2b
    invoke-static {v14, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1001
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    .line 1000
    invoke-virtual {v4, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1003
    .end local v3    # "response":Lorg/codeaurora/ims/SuppSvcResponse;
    .end local v5    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_9
    goto/16 :goto_e

    .line 1004
    :cond_2c
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_2d

    .line 1005
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1006
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1005
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1009
    :cond_2d
    invoke-static {v14, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1012
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1011
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1016
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    goto/16 :goto_e

    .line 1105
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_9
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1106
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_40

    .line 1107
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_2f

    .line 1108
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    return-void

    .line 1111
    :cond_2f
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_30

    .line 1112
    const-string v3, "Query CW error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1114
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1116
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1114
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1119
    :cond_30
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_34

    .line 1120
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    .line 1122
    .local v3, "cwResponse":[I
    const/4 v4, 0x1

    new-array v5, v4, [Landroid/telephony/ims/ImsSsInfo;

    .line 1124
    .local v5, "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    const/4 v6, 0x0

    .line 1125
    .local v6, "status":I
    aget v7, v3, v15

    if-ne v7, v4, :cond_32

    .line 1126
    aget v7, v3, v4

    and-int/2addr v7, v4

    if-ne v7, v4, :cond_31

    .line 1127
    const/4 v4, 0x1

    .end local v6    # "status":I
    .local v4, "status":I
    goto :goto_a

    .line 1129
    .end local v4    # "status":I
    .restart local v6    # "status":I
    :cond_31
    const/4 v4, 0x0

    .end local v6    # "status":I
    .restart local v4    # "status":I
    goto :goto_a

    .line 1132
    .end local v4    # "status":I
    .restart local v6    # "status":I
    :cond_32
    aget v4, v3, v15

    if-nez v4, :cond_33

    .line 1133
    const/4 v4, 0x0

    .line 1145
    .end local v6    # "status":I
    .restart local v4    # "status":I
    :goto_a
    new-instance v6, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v6, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 1146
    .local v6, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v7

    aput-object v7, v5, v15

    .line 1148
    iget-object v7, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v7

    iget v8, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1151
    .end local v3    # "cwResponse":[I
    .end local v4    # "status":I
    .end local v5    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v6    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    goto/16 :goto_e

    .line 1136
    .restart local v3    # "cwResponse":[I
    .restart local v5    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .local v6, "status":I
    :cond_33
    const-string v4, "No service status received for CallWaitingInfo."

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1137
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v7, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v8, v11, v15, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1141
    return-void

    .line 1153
    .end local v3    # "cwResponse":[I
    .end local v5    # "callWaitingInfoList":[Landroid/telephony/ims/ImsSsInfo;
    .end local v6    # "status":I
    :cond_34
    const-string v3, "Null response received for Query CW!"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v11, v15, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_e

    .line 1024
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1025
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_3a

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_35

    goto/16 :goto_d

    .line 1030
    :cond_35
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_39

    .line 1031
    const-string v3, "Update CF error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lorg/codeaurora/ims/CallForwardStatusInfo;

    .line 1034
    .local v3, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    if-eqz v3, :cond_36

    .line 1035
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallForwardStatusInfo;->getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    goto :goto_b

    :cond_36
    move-object v4, v12

    .line 1036
    .local v4, "sipError":Landroid/telephony/ims/ImsReasonInfo;
    :goto_b
    if-eqz v4, :cond_37

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v12

    :cond_37
    move-object v5, v12

    .line 1037
    .local v5, "failCause":Ljava/lang/String;
    if-eqz v5, :cond_38

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_38

    .line 1039
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    new-instance v8, Landroid/telephony/ims/ImsReasonInfo;

    .line 1041
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v9

    invoke-direct {v8, v11, v9, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1039
    invoke-virtual {v6, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_c

    .line 1043
    :cond_38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update CF failure: ar = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sipError: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v6, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    .line 1046
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v8

    .line 1045
    invoke-virtual {v6, v7, v8}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1048
    .end local v3    # "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    .end local v4    # "sipError":Landroid/telephony/ims/ImsReasonInfo;
    .end local v5    # "failCause":Ljava/lang/String;
    :goto_c
    goto/16 :goto_e

    .line 1049
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationUpdated(I)V

    .line 1052
    goto/16 :goto_e

    .line 1026
    :cond_3a
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid response: ar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    return-void

    .line 1055
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_b
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1056
    .restart local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v2, :cond_40

    .line 1057
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-gez v3, :cond_3b

    .line 1058
    invoke-static {v0, v13}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    return-void

    .line 1061
    :cond_3b
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3c

    .line 1062
    const-string v3, "Query CF error"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_40

    .line 1064
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1065
    invoke-static {v2}, Lorg/codeaurora/ims/ImsUtImpl;->getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v5

    .line 1064
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_e

    .line 1068
    :cond_3c
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_3f

    .line 1069
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 1072
    .local v3, "cfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_3d

    .line 1073
    const-string v4, "CallForwardInfo list has no elements!"

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1074
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v11, v15, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1077
    return-void

    .line 1080
    :cond_3d
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    .line 1081
    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsUtImpl;->toImsCallForwardInfo([Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v4

    .line 1083
    .local v4, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-nez v4, :cond_3e

    .line 1084
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v7, v11, v15, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1088
    return-void

    .line 1091
    :cond_3e
    iget-object v5, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v4}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 1094
    .end local v3    # "cfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .end local v4    # "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_e

    .line 1096
    :cond_3f
    const-string v3, "Null response received for Query CF!"

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    iget-object v3, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v11, v15, v12}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/ImsUtListenerImpl;->utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1409
    .end local v2    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :cond_40
    :goto_e
    return-void

    .line 827
    :cond_41
    :goto_f
    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;->this$0:Lorg/codeaurora/ims/ImsUtImpl;

    const-string v3, "handleMessage"

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsUtImpl;->-$$Nest$mdumpw(Lorg/codeaurora/ims/ImsUtImpl;Ljava/lang/String;)V

    .line 828
    return-void

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
