.class public Lorg/codeaurora/ims/QImsCallProfile;
.super Ljava/lang/Object;
.source "QImsCallProfile.java"


# instance fields
.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 26
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 30
    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .param p3, "callExtras"    # Landroid/os/Bundle;
    .param p4, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 36
    return-void
.end method


# virtual methods
.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 174
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

    .line 178
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

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

.method public getCallExtraInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 160
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallExtraParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallExtras()Landroid/os/Bundle;
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallType()I
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v1

    monitor-exit v0

    return v1

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestrictCause()I
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v1

    monitor-exit v0

    return v1

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceType()I
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v1

    monitor-exit v0

    return v1

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 42
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

    .line 50
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v1

    .line 51
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v2

    .line 52
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v3

    .line 53
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 54
    .local v0, "newImsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    nop

    .line 55
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 56
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 57
    return-object v0
.end method

.method public newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 7
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 62
    new-instance v6, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    .line 63
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v3

    .line 64
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v4

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIIII)V

    .line 62
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

    .line 184
    .local p1, "extras":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 186
    .local v1, "callExtras":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 187
    monitor-exit v0

    return-void

    .line 189
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

    .line 190
    .local v3, "extra":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 191
    .end local v3    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 192
    .end local v1    # "callExtras":Landroid/os/Bundle;
    :cond_1
    monitor-exit v0

    .line 193
    return-void

    .line 192
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

    .line 100
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 102
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

    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
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

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .line 118
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
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

    .line 124
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
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

    .line 130
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 205
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 207
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

    .line 92
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 93
    if-eqz p1, :cond_0

    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 96
    :cond_0
    monitor-exit v0

    .line 97
    return-void

    .line 96
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

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 77
    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 80
    :cond_0
    monitor-exit v0

    .line 81
    return-void

    .line 80
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

    .line 84
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 85
    if-eqz p1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 88
    :cond_0
    monitor-exit v0

    .line 89
    return-void

    .line 88
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

    .line 68
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 69
    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 72
    :cond_0
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
