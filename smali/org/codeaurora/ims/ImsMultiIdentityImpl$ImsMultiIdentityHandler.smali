.class Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;
.super Landroid/os/Handler;
.source "ImsMultiIdentityImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsMultiIdentityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsMultiIdentityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 74
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 75
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 83
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->-$$Nest$monMultiIdentityVirtualLineInfoResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 98
    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->-$$Nest$monMultiIdentityInfoPendingResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 95
    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->-$$Nest$monMultiIdentityInfoPendingIndication(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V

    .line 92
    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->-$$Nest$monMultiIdentityRegistrationStatusChange(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 89
    goto :goto_0

    .line 85
    :pswitch_4
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->-$$Nest$monRegisterMultiIdentityLinesResponse(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 86
    nop

    .line 102
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
