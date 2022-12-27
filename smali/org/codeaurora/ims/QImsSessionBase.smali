.class public abstract Lorg/codeaurora/ims/QImsSessionBase;
.super Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.source "QImsSessionBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;,
        Lorg/codeaurora/ims/QImsSessionBase$Listener;
    }
.end annotation


# instance fields
.field public mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field protected mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field protected mContext:Landroid/content/Context;

.field protected mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/QImsSessionBase$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneId:I

.field protected mState:I

.field protected mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "phoneId"    # I
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 87
    new-instance v5, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/QImsSessionBase;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "phoneId"    # I
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "handler"    # Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 92
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mPhoneId:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mState:I

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    .line 93
    iput-object p2, p0, Lorg/codeaurora/ims/QImsSessionBase;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 94
    iput-object p1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mContext:Landroid/content/Context;

    .line 95
    iput-object p4, p0, Lorg/codeaurora/ims/QImsSessionBase;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 96
    iput p3, p0, Lorg/codeaurora/ims/QImsSessionBase;->mPhoneId:I

    .line 97
    iput-object p5, p0, Lorg/codeaurora/ims/QImsSessionBase;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 98
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 127
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    if-eqz p1, :cond_2

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate listener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :goto_0
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getState()I
    .locals 1

    .line 243
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 244
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mState:I

    return v0
.end method

.method public isSessionValid()Z
    .locals 2

    .line 229
    iget v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 230
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 231
    const-string v1, "Session is closed"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    :cond_1
    return v0
.end method

.method public notifyCallModifyInitiate(Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 194
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 197
    .local v2, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v2, p0, p1}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V

    .line 198
    .end local v2    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 199
    :cond_1
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected notifyCallTypeChanging(I)V
    .locals 3
    .param p1, "callType"    # I

    .line 203
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 206
    .local v2, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v2, p0, p1}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V

    .line 207
    .end local v2    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 208
    :cond_1
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifySessionActive()V
    .locals 3

    .line 212
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 214
    .local v2, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v2, p0}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onActive(Lorg/codeaurora/ims/QImsSessionBase;)V

    .line 215
    .end local v2    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 216
    :cond_0
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected notifySessionClosed()V
    .locals 3

    .line 176
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 178
    .local v2, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v2, p0}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V

    .line 179
    .end local v2    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 180
    :cond_0
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected notifySessionDisconnected()V
    .locals 3

    .line 168
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 170
    .local v2, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v2, p0}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V

    .line 171
    .end local v2    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 172
    :cond_0
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifySessionHold()V
    .locals 3

    .line 220
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 222
    .local v2, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v2, p0}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onHold(Lorg/codeaurora/ims/QImsSessionBase;)V

    .line 223
    .end local v2    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 224
    :cond_0
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V
    .locals 3
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 184
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 188
    .local v2, "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    invoke-interface {v2, p0, p1}, Lorg/codeaurora/ims/QImsSessionBase$Listener;->onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V

    .line 189
    .end local v2    # "l":Lorg/codeaurora/ims/QImsSessionBase$Listener;
    goto :goto_0

    .line 190
    :cond_1
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/QImsSessionBase$Listener;

    .line 150
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    if-eqz p1, :cond_2

    .line 158
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lorg/codeaurora/ims/QImsSessionBase;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not found, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :goto_0
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 153
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 113
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsSessionBase;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QImsSessionBase;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 115
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 0
    .param p1, "isVideo"    # Z
    .param p2, "isVoice"    # Z

    .line 102
    return-void
.end method
