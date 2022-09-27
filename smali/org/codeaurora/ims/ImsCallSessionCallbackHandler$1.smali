.class Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$1;
.super Ljava/lang/Object;
.source "ImsCallSessionCallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field final synthetic val$reason:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 117
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$1;->this$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$1;->val$reason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionTerminated :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$1;->val$reason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$1;->this$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$1;->val$reason:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
