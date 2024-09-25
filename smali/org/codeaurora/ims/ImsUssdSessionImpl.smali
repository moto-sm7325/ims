.class public Lorg/codeaurora/ims/ImsUssdSessionImpl;
.super Lorg/codeaurora/ims/QImsSessionBase;
.source "ImsUssdSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALL_ID:Ljava/lang/String; = "-1"

.field private static final EVENT_CANCEL_USSD:I = 0x2

.field private static final EVENT_CLOSE_USSD_SESSION:I = 0x4

.field private static final EVENT_USSD_MESSAGE_RECEIVED:I = 0x3

.field private static final EVENT_USSD_SENT_RESPONSE:I = 0x1


# instance fields
.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mHandler:Landroid/os/Handler;

.field private mUssdInfo:Lorg/codeaurora/ims/UssdInfo;


# direct methods
.method static bridge synthetic -$$Nest$mOnUssdSentResponse(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->OnUssdSentResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoClose(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->doClose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCancelUssd(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->onCancelUssd(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUssdMessageReceived(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->onUssdMessageReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/UssdInfo;)V
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "phoneId"    # I
    .param p5, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p6, "info"    # Lorg/codeaurora/ims/UssdInfo;

    .line 55
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/codeaurora/ims/QImsSessionBase;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;)V

    .line 48
    new-instance v0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    .line 50
    iput-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 56
    iput-object p6, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    .line 57
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 58
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForUssdInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method private OnUssdSentResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string v0, "USSD: response result is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    return-void

    .line 176
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 177
    const-string v0, "USSD: ongoing USSD session"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 179
    iput v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 180
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    const-string v3, "USSD terminated"

    const/16 v4, 0x162

    invoke-direct {v1, v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 184
    :cond_1
    return-void

    .line 186
    :cond_2
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USSD: response exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 189
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 190
    .local v0, "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 191
    .end local v0    # "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 192
    :cond_3
    const-string v0, "USSD: response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iput v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 194
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 196
    :goto_0
    return-void
.end method

.method private static convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 139
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private doClose()V
    .locals 3

    .line 246
    const-string v0, "doClose!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->dispose()V

    .line 249
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForUssdInfo(Landroid/os/Handler;)V

    .line 253
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    .line 255
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->notifySessionClosed()V

    .line 256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 260
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mPhoneId:I

    .line 262
    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 263
    return-void

    .line 258
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onCancelUssd(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 199
    if-nez p1, :cond_0

    .line 200
    const-string v0, "USSD: response result is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    return-void

    .line 203
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel USSD: response exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    return-void

    .line 207
    :cond_1
    const-string v0, "Cancel USSD: response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 209
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    const-string v3, "USSD Cancelled"

    const/16 v4, 0x1f5

    invoke-direct {v1, v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 212
    return-void
.end method

.method private onUssdMessageReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 215
    if-nez p1, :cond_0

    .line 216
    const-string v0, "USSD: message result is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    return-void

    .line 219
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USSD: message exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-ne v0, v2, :cond_5

    .line 224
    :cond_1
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 225
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    const-string v3, "USSD Network Error"

    const/16 v4, 0x162

    invoke-direct {v1, v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 229
    :cond_2
    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    if-ne v0, v2, :cond_5

    .line 231
    :cond_3
    const-string v0, "USSD: message received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/UssdInfo;

    .line 233
    .local v0, "info":Lorg/codeaurora/ims/UssdInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getType()I

    move-result v1

    .line 234
    .local v1, "ussdMode":I
    invoke-virtual {v0}, Lorg/codeaurora/ims/UssdInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "ussdMsg":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v4, v1, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 237
    if-ne v1, v2, :cond_4

    .line 238
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 239
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USSD: session closed mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->doClose()V

    .line 243
    .end local v0    # "info":Lorg/codeaurora/ims/UssdInfo;
    .end local v1    # "ussdMode":I
    .end local v3    # "ussdMsg":Ljava/lang/String;
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 91
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 95
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    invoke-virtual {v1}, Lorg/codeaurora/ims/UssdInfo;->getType()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mUssdInfo:Lorg/codeaurora/ims/UssdInfo;

    .line 96
    invoke-virtual {v2}, Lorg/codeaurora/ims/UssdInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUssdMessageReceived(ILjava/lang/String;)V

    .line 98
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2

    .line 116
    const-string v0, "Close!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 118
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    :cond_0
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "-1"

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    .line 131
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendUssd(Ljava/lang/String;Landroid/os/Message;)V

    .line 132
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 70
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isUssdSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const-string v0, "start: USSD is not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    const-string v3, "USSD not supported"

    const/16 v4, 0x83

    invoke-direct {v1, v4, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 77
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mState:I

    .line 80
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendUssd(Ljava/lang/String;Landroid/os/Message;)V

    .line 81
    return-void
.end method

.method public terminate(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 106
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->cancelPendingUssd(Landroid/os/Message;)V

    .line 109
    return-void
.end method
