.class public Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;
.super Ljava/lang/Object;
.source "ImsCallSessionCallbackHandler.java"


# instance fields
.field public mListener:Landroid/telephony/ims/ImsCallSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "Constructor: created to handle ImsCallSession-related callbacks."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V
    .locals 1
    .param p1, "copyFrom"    # Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "Copy Constructor: Pass the listener refs."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p1, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 49
    return-void
.end method


# virtual methods
.method public callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 346
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionConferenceStateUpdated :: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceStateUpdated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :goto_0
    goto :goto_1

    .line 354
    :cond_0
    const-string v0, "callSessionConferenceStateUpdated :: listener null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    :goto_1
    return-void
.end method

.method public callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHandover :: srcAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSessionListener;->onHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandover :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 124
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHandoverFailed :: srcAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSessionListener;->onHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandoverFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 164
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHeld :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHeld :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHoldFailed :: reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 186
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHoldReceived :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 63
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInitiated :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 52
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInitiating :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiating :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 74
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInitiatingFailed :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiatingFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered()V
    .locals 3

    .line 317
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "callSessionInviteParticipantsRequestDelivered"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestDelivered :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 330
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInviteParticipantsRequestFailed reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionMayHandover(II)V
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I

    .line 138
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMayHandover :: srcAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSessionListener;->onMayHandover(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMayHandover :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "activeCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMergeComplete :: activeCallSession ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeComplete :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 273
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMergeFailed :: reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionMergeStarted(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "newSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 238
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMergeStarted :: newSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeStarted(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeStarted :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionMultipartyStateChanged(Z)V
    .locals 3
    .param p1, "isMultiParty"    # Z

    .line 364
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMultipartyStateChanged :: isMultiParty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMultipartyStateChanged :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 85
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionProgressing :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 208
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionResumeFailed :: reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 219
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionResumeReceived :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 197
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionResumed :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 409
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttAudioIndicatorChanged :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttAudioIndicatorChanged :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttMessageReceived :: rttMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttMessageReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 398
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttModifyRequestReceived :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttModifyRequestReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionRttModifyResponseReceived(I)V
    .locals 3
    .param p1, "status"    # I

    .line 376
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttModifyResponseReceived :: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttModifyResponseReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 3
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 302
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionSuppServiceReceived :: suppServiceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 96
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionTerminated :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :goto_0
    goto :goto_1

    .line 104
    :cond_0
    const-string v0, " callSessionTerminated:: listener null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    :goto_1
    return-void
.end method

.method public callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 442
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionTransferFailed :: reasonInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTransferFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionTransferred()V
    .locals 3

    .line 456
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "callSessionTransferred. "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferred()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTransferred :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionTtyModeReceived(I)V
    .locals 3
    .param p1, "ttyMode"    # I

    .line 150
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionTtyModeReceived :: ttyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTtyModeReceived(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTtyModeReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 287
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionUpdated :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public callSessionUssdMessageReceived(ILjava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionUssdMessageReceived :: mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 467
    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 469
    return-void
.end method
