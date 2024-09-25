.class Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;
.super Landroid/os/Handler;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsCallModification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsCallModificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallModification;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 659
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    .line 660
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 661
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallModification;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 663
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    .line 664
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 665
    return-void
.end method

.method private clearMultiTaskRetryCount()I
    .locals 2

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing MultiTaskRetryCount from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;I)V

    return v1
.end method

.method private onAvpRetry(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 770
    const-string v0, "EVENT_AVP_UPGRADE received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 772
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 773
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 775
    .local v1, "shouldNotifyUser":Z
    if-eqz v1, :cond_0

    .line 776
    const-string v2, "AVP Retry error when Voice call was upgraded to video call"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_0
    const-string v2, "AVP Retry error when Video call was dialed"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 788
    .end local v1    # "shouldNotifyUser":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 789
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 790
    return-void
.end method

.method private onModifyCallDone(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModifyCallDone for event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 689
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_1

    .line 693
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v2

    iget-object v2, v2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mupdatePreviousVTCallType(Lorg/codeaurora/ims/ImsCallModification;I)V

    goto :goto_0

    .line 696
    :cond_0
    const-string v1, "videocall error during modifyCall"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    :goto_0
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 702
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_1

    .line 703
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 707
    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 711
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 712
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 713
    return-void
.end method

.method private onVideoPauseDone(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 717
    const-string v0, "EVENT_VIDEO_PAUSE_DONE received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 719
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v0, :cond_4

    .line 720
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 723
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 724
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v3

    iget-object v3, v3, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmIsLocallyPaused(Lorg/codeaurora/ims/ImsCallModification;Z)V

    .line 727
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 728
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 729
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    goto :goto_1

    .line 733
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mshouldRetryVideoPause(Lorg/codeaurora/ims/ImsCallModification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 734
    const-string v1, "Error during video pause so retry"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v3, 0x453b8000    # 3000.0f

    mul-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x407f400000000000L    # 500.0

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 737
    .local v1, "delay":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v4, v4, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoPauseDone delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fputmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;I)V

    .line 742
    .end local v1    # "delay":I
    goto :goto_1

    .line 743
    :cond_3
    const-string v1, "Video Pause retry limit reached."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 745
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 746
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    goto :goto_1

    .line 750
    :cond_4
    const-string v1, "Error EVENT_VIDEO_PAUSE_DONE ar is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    :goto_1
    return-void
.end method

.method private onVideoPauseRetry()V
    .locals 2

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$PauseState;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_0

    .line 758
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;

    move-result-object v1

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mcreateAndSendMultiTaskRequest(Lorg/codeaurora/ims/ImsCallModification;I)V

    goto :goto_0

    .line 762
    :cond_0
    const-string v0, "User pressed home/resume during retry sending new multitask request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 764
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->clearMultiTaskRetryCount()I

    .line 765
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->this$0:Lorg/codeaurora/ims/ImsCallModification;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallModification;->-$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V

    .line 767
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 669
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 678
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseRetry()V

    .line 679
    goto :goto_0

    .line 675
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onVideoPauseDone(Landroid/os/Message;)V

    .line 676
    goto :goto_0

    .line 672
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onModifyCallDone(Landroid/os/Message;)V

    .line 673
    goto :goto_0

    .line 681
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;->onAvpRetry(Landroid/os/Message;)V

    .line 684
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
