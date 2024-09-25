.class public Lorg/codeaurora/ims/ImsUtListenerImpl;
.super Ljava/lang/Object;
.source "ImsUtListenerImpl.java"


# instance fields
.field public mListener:Landroid/telephony/ims/ImsUtListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "ssInfo"    # Landroid/telephony/ims/ImsSsInfo;

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lineIdentificationSupplementaryServiceResponse:: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ssInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onLineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 2
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 99
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSupplementaryServiceIndication :: ssData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsUtListener;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 104
    :cond_0
    return-void
.end method

.method public utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 64
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationCallBarringQueried :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cbInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 69
    :cond_0
    return-void
.end method

.method public utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUtConfigurationCallForwardQueried :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cfInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 81
    :cond_0
    return-void
.end method

.method public utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 88
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationCallWaitingQueried :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cwInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 93
    :cond_0
    return-void
.end method

.method public utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 52
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationQueryFailed :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 57
    :cond_0
    return-void
.end method

.method public utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 31
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationUpdateFailed :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 36
    :cond_0
    return-void
.end method

.method public utConfigurationUpdated(I)V
    .locals 2
    .param p1, "id"    # I

    .line 23
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationUpdated :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    .line 27
    :cond_0
    return-void
.end method
