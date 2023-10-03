.class public Lorg/codeaurora/ims/CapabilityTracker;
.super Ljava/lang/Object;
.source "CapabilityTracker.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCallComposerSupported:Z

.field private mIsDataChannelSupported:Z

.field private mIsUssdSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    .line 27
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    .line 29
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsDataChannelSupported:Z

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public addCapability(II)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 38
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 39
    .local v0, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    .line 57
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    .line 58
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsDataChannelSupported:Z

    .line 59
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lorg/codeaurora/ims/CapabilityTracker;->clone()Lorg/codeaurora/ims/CapabilityTracker;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/codeaurora/ims/CapabilityTracker;
    .locals 3

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "ct":Lorg/codeaurora/ims/CapabilityTracker;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/CapabilityTracker;

    move-object v0, v1

    .line 163
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CapabilityTracker clone failed! return null."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getEnabledCapabilities()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public isCallComposerSupported()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    return v0
.end method

.method public isDataChannelSupported()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsDataChannelSupported:Z

    return v0
.end method

.method public isSupported(I)Z
    .locals 3
    .param p1, "capability"    # I

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 98
    .local v1, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 99
    const/4 v0, 0x1

    return v0

    .line 101
    .end local v1    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedOnRadioTech(II)Z
    .locals 3
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 111
    iget-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 112
    .local v1, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    .end local v1    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    :cond_0
    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isUssdSupported()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    return v0
.end method

.method public isVideoSupported()Z
    .locals 1

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/CapabilityTracker;->isSupported(I)Z

    move-result v0

    return v0
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 2

    .line 76
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v0

    return v0
.end method

.method public isVoiceSupported()Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/CapabilityTracker;->isSupported(I)Z

    move-result v0

    return v0
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 1

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v0

    return v0
.end method

.method public removeCapability(II)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 47
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 48
    .local v0, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public setIsCallComposerSupported(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    .line 125
    iput-boolean p1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    .line 126
    return-void
.end method

.method public setIsDataChannelSupported(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    .line 151
    iput-boolean p1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsDataChannelSupported:Z

    .line 152
    return-void
.end method

.method public setIsUssdSupported(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 138
    iput-boolean p1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    .line 139
    return-void
.end method
