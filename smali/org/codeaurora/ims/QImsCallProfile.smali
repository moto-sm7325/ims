.class public Lorg/codeaurora/ims/QImsCallProfile;
.super Ljava/lang/Object;
.source "QImsCallProfile.java"


# instance fields
.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 25
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 29
    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .param p3, "callExtras"    # Landroid/os/Bundle;
    .param p4, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 35
    return-void
.end method


# virtual methods
.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallExtraBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallExtras()Landroid/os/Bundle;
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallType()I
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v1

    monitor-exit v0

    return v1

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestrictCause()I
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v1

    monitor-exit v0

    return v1

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceType()I
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v1

    monitor-exit v0

    return v1

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 49
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v1

    .line 50
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v2

    .line 51
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v3

    .line 52
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 53
    .local v0, "newImsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    nop

    .line 54
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 55
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 56
    return-object v0
.end method

.method public newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 7
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 61
    new-instance v6, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    .line 62
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v3

    .line 63
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v4

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIIII)V

    .line 61
    return-object v6
.end method

.method public removeExtras(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p1, "extras":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 167
    .local v1, "callExtras":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 168
    monitor-exit v0

    return-void

    .line 170
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 171
    .local v3, "extra":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 172
    .end local v3    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v1    # "callExtras":Landroid/os/Bundle;
    :cond_1
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallExtraBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 105
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallExtraInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 111
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallRestrictCause(I)V
    .locals 2
    .param p1, "cause"    # I

    .line 117
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallerNumberVerificationStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 123
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 186
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCallType(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 92
    if-eqz p1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 95
    :cond_0
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 75
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 76
    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 79
    :cond_0
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 83
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 84
    if-eqz p1, :cond_0

    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 87
    :cond_0
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 67
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 68
    if-eqz p1, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 71
    :cond_0
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
