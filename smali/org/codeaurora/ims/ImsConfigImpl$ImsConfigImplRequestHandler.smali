.class Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplRequestHandler;
.super Landroid/os/Handler;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsConfigImplRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1146
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplRequestHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 1147
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1148
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1152
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

    .line 1153
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 1155
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1163
    const-string v1, "handleMessage: unhandled message"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1158
    .local v1, "item":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1159
    .local v2, "val":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplRequestHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetOperationStatus(Lorg/codeaurora/ims/ImsConfigImpl;Ljava/lang/Object;Ljava/lang/Throwable;)I

    move-result v3

    .line 1160
    .local v3, "ret":I
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplRequestHandler;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mlogImsConfigChangedCheckin(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;I)V

    .line 1161
    nop

    .line 1165
    .end local v1    # "item":I
    .end local v2    # "val":I
    .end local v3    # "ret":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
