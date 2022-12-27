.class public Lorg/codeaurora/ims/ImsUtImpl;
.super Landroid/telephony/ims/stub/ImsUtImplBase;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;,
        Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;
    }
.end annotation


# static fields
.field private static final CF_DISABLED:I = 0x0

.field private static final CF_ENABLED:I = 0x1

.field static final CF_REASON_ALL:I = 0x4

.field static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field static final CF_REASON_BUSY:I = 0x1

.field static final CF_REASON_NOT_REACHABLE:I = 0x3

.field static final CF_REASON_NO_REPLY:I = 0x2

.field static final CF_REASON_UNCONDITIONAL:I = 0x0

.field private static final EVENT_QUERY_CB:I = 0xd

.field private static final EVENT_QUERY_CF:I = 0x1

.field private static final EVENT_QUERY_CLIP:I = 0x7

.field private static final EVENT_QUERY_CLIR:I = 0x5

.field private static final EVENT_QUERY_COLP:I = 0xb

.field private static final EVENT_QUERY_COLR:I = 0x9

.field private static final EVENT_QUERY_CW:I = 0x3

.field private static final EVENT_UNSOL_ON_SS:I = 0xf

.field private static final EVENT_UPDATE_CB:I = 0xe

.field private static final EVENT_UPDATE_CF:I = 0x2

.field private static final EVENT_UPDATE_CLIP:I = 0x8

.field private static final EVENT_UPDATE_CLIR:I = 0x6

.field private static final EVENT_UPDATE_COLP:I = 0xc

.field private static final EVENT_UPDATE_COLR:I = 0xa

.field private static final EVENT_UPDATE_CW:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtImpl"

.field private static final MAX_REQUESTS_PENDING:I = 0x32

.field static final SERVICE_CLASS_DATA:I = 0x2

.field static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field static final SERVICE_CLASS_FAX:I = 0x4

.field static final SERVICE_CLASS_MAX:I = 0x80

.field static final SERVICE_CLASS_NONE:I = 0x0

.field static final SERVICE_CLASS_PACKET:I = 0x40

.field static final SERVICE_CLASS_PAD:I = 0x80

.field static final SERVICE_CLASS_SMS:I = 0x8

.field static final SERVICE_CLASS_VOICE:I = 0x1

.field static final UT_ERROR_FDN_FAILURE:Ljava/lang/String; = "E_FDN_CHECK_FAILURE"

.field static final UT_ERROR_GENERIC:Ljava/lang/String; = "E_GENERIC_FAILURE"

.field static final UT_ERROR_NETWORK_UNSUPPORTED:Ljava/lang/String; = "E_NETWORK_NOT_SUPPORTED"

.field static final UT_ERROR_SS_MODIFIED_TO_DIAL:Ljava/lang/String; = "E_SS_MODIFIED_TO_DIAL"

.field static final UT_ERROR_SS_MODIFIED_TO_DIAL_VIDEO:Ljava/lang/String; = "E_SS_MODIFIED_TO_DIAL_VIDEO"

.field static final UT_ERROR_SS_MODIFIED_TO_SS:Ljava/lang/String; = "E_SS_MODIFIED_TO_SS"

.field static final UT_ERROR_SS_MODIFIED_TO_USSD:Ljava/lang/String; = "E_SS_MODIFIED_TO_USSD"

.field static final UT_PASSWORD_INCORRECT:Ljava/lang/String; = "E_PASSWORD_INCORRECT"

.field private static requestId:I


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDisposed:Z

.field private final mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

.field private final mLock:Ljava/lang/Object;

.field private mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 3
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 104
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 105
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 106
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 111
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerImpl;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    .line 112
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    .line 123
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 124
    iput-object p2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 125
    iput-object p3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 126
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsUtImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsUtImpl;

    .line 50
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsUtImpl;

    .line 50
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    return-object v0
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsUtImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsUtImpl;

    .line 50
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsUtImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsUtImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return-void
.end method

.method private dumpw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msgPrefix"    # Ljava/lang/String;

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": isDisposed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": mCi= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": mListenerImpl= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "fn"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 132
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method private getFacilityFromCbType(I)I
    .locals 3
    .param p1, "cbType"    # I

    .line 243
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 244
    return v0

    .line 246
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v0, :cond_1

    .line 247
    return v1

    .line 249
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v1, :cond_2

    .line 250
    return v0

    .line 252
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne p1, v1, :cond_3

    .line 253
    return v2

    .line 255
    :cond_3
    const/4 v1, 0x7

    if-ne p1, v0, :cond_4

    .line 256
    return v1

    .line 258
    :cond_4
    const/16 v0, 0x8

    if-ne p1, v1, :cond_5

    .line 259
    return v0

    .line 261
    :cond_5
    const/16 v1, 0x9

    if-ne p1, v0, :cond_6

    .line 262
    return v1

    .line 264
    :cond_6
    const/16 v0, 0xa

    if-ne p1, v1, :cond_7

    .line 265
    return v0

    .line 267
    :cond_7
    if-ne p1, v0, :cond_8

    .line 268
    const/16 v0, 0xb

    return v0

    .line 270
    :cond_8
    if-ne p1, v2, :cond_9

    .line 271
    const/16 v0, 0xc

    return v0

    .line 274
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public static getIcbAction(I)I
    .locals 2
    .param p0, "action"    # I

    .line 511
    if-nez p0, :cond_0

    .line 512
    const/4 v0, 0x2

    return v0

    .line 513
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 514
    return v0

    .line 515
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 516
    const/4 v0, 0x5

    return v0

    .line 517
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 518
    return v0

    .line 520
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private getIdForRequest()I
    .locals 3

    .line 788
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_0
    sget v1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 790
    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    .line 791
    const/4 v1, 0x0

    sput v1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 793
    :cond_0
    sget v1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    monitor-exit v0

    return v1

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getImsReasonInfoFromResponseError(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 8
    .param p0, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 811
    const/4 v0, 0x0

    const-string v1, "ImsUtImpl"

    if-nez p0, :cond_0

    .line 812
    const-string v2, "getImsReasonInfoFromResponseError :: Null AsyncResult!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-object v0

    .line 815
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 816
    const-string v2, "getImsReasonInfoFromResponseError :: No exception in AsyncResult!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return-object v0

    .line 822
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2

    .line 823
    const-string v2, "getImsReasonInfoFromResponseError :: Improper exception type in AsyncResult!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    return-object v0

    .line 828
    :cond_2
    const/4 v2, 0x0

    .line 829
    .local v2, "code":I
    iget-object v3, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/ImsRilException;

    .line 830
    .local v3, "ex":Lorg/codeaurora/ims/ImsRilException;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsRilException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 831
    .local v4, "error":Ljava/lang/String;
    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 832
    const-string v6, "getImsReasonInfoFromResponseError :: Null message string in exception!"

    invoke-static {v1, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v2, v5, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v1

    .line 837
    :cond_3
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->toImsReasonInfoCode(I)I

    move-result v2

    .line 839
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getImsReasonInfoFromResponseError :: ImsReasonInfo code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v2, v5, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v1
.end method

.method private isDisposed()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    return v0
.end method

.method private static toImsReasonInfoCode(I)I
    .locals 3
    .param p0, "imsErrorCode"    # I

    .line 848
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 866
    const-string v1, "ImsUtImpl"

    const-string v2, "getImsReasonInfoFromResponseError :: Unrecognized exception message string!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return v0

    .line 864
    :sswitch_0
    const/16 v0, 0x339

    return v0

    .line 862
    :sswitch_1
    const/16 v0, 0x338

    return v0

    .line 860
    :sswitch_2
    const/16 v0, 0x337

    return v0

    .line 858
    :sswitch_3
    const/16 v0, 0x336

    return v0

    .line 856
    :sswitch_4
    const/16 v0, 0xf1

    return v0

    .line 854
    :sswitch_5
    const/16 v0, 0x322

    return v0

    .line 852
    :sswitch_6
    const/16 v0, 0x335

    return v0

    .line 850
    :sswitch_7
    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x1e -> :sswitch_5
        0x22 -> :sswitch_4
        0x23 -> :sswitch_3
        0x24 -> :sswitch_2
        0x25 -> :sswitch_1
        0x26 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 162
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "onCloseListener":Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    .line 166
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 167
    iget-object v4, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 168
    iput-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 170
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    move-object v0, v2

    .line 171
    iput-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    .line 172
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;->onClosed(Lorg/codeaurora/ims/ImsUtImpl;)V

    .line 176
    :cond_1
    return-void

    .line 172
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 333
    const-string v0, "queryCallForward"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 337
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_9

    if-nez v0, :cond_0

    goto :goto_1

    .line 341
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    const/4 v1, -0x1

    .line 344
    .local v1, "reason":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v2

    .line 345
    .local v2, "id":I
    if-gez v2, :cond_1

    .line 346
    const-string v4, "Invalid request id for queryCallForward."

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    return v3

    .line 351
    :cond_1
    const/4 v4, 0x1

    if-nez p1, :cond_2

    .line 352
    const/4 v1, 0x0

    goto :goto_0

    .line 354
    :cond_2
    if-ne p1, v4, :cond_3

    .line 355
    const/4 v1, 0x1

    goto :goto_0

    .line 357
    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_4

    .line 358
    const/4 v1, 0x2

    goto :goto_0

    .line 360
    :cond_4
    const/4 v5, 0x3

    if-ne p1, v5, :cond_5

    .line 361
    const/4 v1, 0x3

    goto :goto_0

    .line 363
    :cond_5
    const/4 v5, 0x4

    if-ne p1, v5, :cond_6

    .line 364
    const/4 v1, 0x4

    goto :goto_0

    .line 366
    :cond_6
    const/4 v5, 0x5

    if-ne p1, v5, :cond_7

    .line 367
    const/4 v1, 0x5

    goto :goto_0

    .line 369
    :cond_7
    const/4 v5, 0x6

    if-ne p1, v5, :cond_8

    .line 374
    const/4 v1, -0x1

    .line 380
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    .line 383
    invoke-virtual {v3, v4, v2, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 380
    invoke-virtual {v0, v1, p3, p2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 384
    return v2

    .line 377
    :cond_8
    const-string v4, "Invalid condition for queryCallForward."

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    return v3

    .line 338
    .end local v1    # "reason":I
    .end local v2    # "id":I
    :cond_9
    :goto_1
    :try_start_1
    const-string v2, "queryCFForServiceClass"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 339
    monitor-exit v1

    return v3

    .line 341
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCallBarring(I)I
    .locals 1
    .param p1, "cbType"    # I

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(II)I

    move-result v0

    return v0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 9
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 191
    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 193
    .local v0, "id":I
    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 194
    const-string v2, "Invalid request id for queryCallBarring."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    return v1

    .line 199
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 201
    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 199
    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(IIZLjava/lang/String;Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    move v1, v0

    goto :goto_0

    :cond_1
    nop

    .line 199
    :goto_0
    return v1
.end method

.method public queryCallBarringForServiceClass(IIZLjava/lang/String;Landroid/os/Message;)Z
    .locals 12
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I
    .param p3, "expectMore"    # Z
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "msg"    # Landroid/os/Message;

    .line 210
    move-object v1, p0

    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v3, v1, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 213
    :try_start_0
    iget-object v0, v1, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v2, v0

    .line 214
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_3

    if-nez v2, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v0

    .line 221
    .local v0, "facility":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 222
    const-string v3, "Unsupported call barring facility code in queryCallBarring."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    return v4

    .line 225
    :cond_1
    const/16 v3, 0xb

    if-ne v0, v3, :cond_2

    .line 226
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v4, v2

    move v6, v0

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    move v11, p3

    invoke-virtual/range {v4 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    goto :goto_0

    .line 233
    :cond_2
    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object v4, v2

    move v6, v0

    move-object/from16 v8, p4

    move v9, p2

    move-object/from16 v10, p5

    move v11, p3

    invoke-virtual/range {v4 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    .line 237
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 215
    .end local v0    # "facility":I
    :cond_3
    :goto_1
    :try_start_1
    const-string v0, "queryCallBarringForServiceClass"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 216
    monitor-exit v3

    return v4

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public queryCallWaiting()I
    .locals 5

    .line 392
    const-string v0, "queryCallWaiting"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 396
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 403
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 404
    const-string v2, "Invalid request id for queryCallWaiting."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    return v3

    .line 407
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    .line 408
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 407
    invoke-virtual {v0, v4, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallWaiting(ILandroid/os/Message;)V

    .line 409
    return v1

    .line 397
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "queryCallWaiting"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 398
    monitor-exit v1

    return v3

    .line 400
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryClip()I
    .locals 5

    .line 440
    const-string v0, "queryCLIP"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 444
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 450
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 451
    const-string v2, "Invalid request id for queryCLIP."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    return v3

    .line 454
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCLIP(Landroid/os/Message;)V

    .line 455
    return v1

    .line 445
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "queryClip"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 446
    monitor-exit v1

    return v3

    .line 448
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryClir()I
    .locals 5

    .line 417
    const-string v0, "queryCLIR"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 421
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 427
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 428
    const-string v2, "Invalid request id for queryCLIR."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    return v3

    .line 431
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getCLIR(Landroid/os/Message;)V

    .line 432
    return v1

    .line 422
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "queryClir"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 423
    monitor-exit v1

    return v3

    .line 425
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryColp()I
    .locals 6

    .line 486
    const-string v0, "queryCOLP"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 490
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 496
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 497
    const-string v2, "Invalid request id for queryCLIP."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    return v3

    .line 500
    :cond_1
    const-string v2, "COLP"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 501
    invoke-virtual {v3, v4, v1, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 500
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V

    .line 502
    return v1

    .line 491
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "queryColp"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 492
    monitor-exit v1

    return v3

    .line 494
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryColr()I
    .locals 5

    .line 463
    const-string v0, "queryCOLR"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 467
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 473
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 474
    const-string v2, "Invalid request id for queryCOLR."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    return v3

    .line 477
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getCOLR(Landroid/os/Message;)V

    .line 478
    return v1

    .line 468
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "queryColr"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 469
    monitor-exit v1

    return v3

    .line 471
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setIdForRequest(I)V
    .locals 2
    .param p1, "id"    # I

    .line 799
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    sput p1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 801
    monitor-exit v0

    .line 802
    return-void

    .line 801
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 771
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const-string v0, "setListener - isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iput-object p1, v1, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 778
    monitor-exit v0

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setOnClosedListener(Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;)V
    .locals 2
    .param p1, "l"    # Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    .line 148
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toImsCallForwardInfo([Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 18
    .param p1, "cfInfoList"    # [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    new-array v2, v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 281
    .local v2, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    const/4 v3, 0x0

    .line 282
    .local v3, "callForwardStatus":I
    const/4 v4, -0x1

    .line 283
    .local v4, "condition":I
    const/4 v5, 0x0

    .line 284
    .local v5, "timeSeconds":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_8

    .line 285
    aget-object v7, v1, v6

    .line 287
    .local v7, "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 288
    const/4 v3, 0x1

    goto :goto_1

    .line 289
    :cond_0
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-nez v8, :cond_7

    .line 290
    const/4 v3, 0x0

    .line 296
    :goto_1
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-nez v8, :cond_1

    .line 297
    const/4 v4, 0x0

    goto :goto_2

    .line 298
    :cond_1
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-ne v8, v10, :cond_2

    .line 299
    const/4 v4, 0x1

    goto :goto_2

    .line 300
    :cond_2
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    .line 301
    const/4 v4, 0x2

    .line 303
    iget v5, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->timeSeconds:I

    goto :goto_2

    .line 304
    :cond_3
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_4

    .line 305
    const/4 v4, 0x3

    goto :goto_2

    .line 306
    :cond_4
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v10, 0x4

    if-ne v8, v10, :cond_5

    .line 307
    const/4 v4, 0x4

    goto :goto_2

    .line 308
    :cond_5
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v10, 0x5

    if-ne v8, v10, :cond_6

    .line 309
    const/4 v4, 0x5

    .line 314
    :goto_2
    new-instance v8, Landroid/telephony/ims/ImsCallForwardInfo;

    iget v14, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->toa:I

    iget v15, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    new-instance v9, Ljava/lang/String;

    iget-object v10, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v11, v8

    move v12, v4

    move v13, v3

    move-object/from16 v16, v9

    move/from16 v17, v5

    invoke-direct/range {v11 .. v17}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    aput-object v8, v2, v6

    .line 284
    .end local v7    # "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 311
    .restart local v7    # "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_6
    const-string v8, "Bad reason in Query CF response."

    invoke-static {v0, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    return-object v9

    .line 292
    :cond_7
    const-string v8, "Bad status in Query CF response."

    invoke-static {v0, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    return-object v9

    .line 318
    .end local v6    # "i":I
    .end local v7    # "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_8
    return-object v2
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsUtImpl;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 537
    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsUtImpl;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 12
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "password"    # Ljava/lang/String;

    .line 546
    move-object v1, p0

    iget-object v0, v1, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const-string v3, "updateCallBarring"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v2, 0x0

    .line 548
    .local v2, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v3, v1, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 549
    :try_start_0
    iget-object v0, v1, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v2, v0

    .line 550
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v4, -0x1

    if-nez v0, :cond_4

    if-nez v2, :cond_0

    goto :goto_1

    .line 554
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 556
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 557
    const-string v3, "Invalid request id for updateCallBarring."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    return v4

    .line 562
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v3

    .line 563
    .local v3, "facility":I
    if-ne v3, v4, :cond_2

    .line 564
    const-string v5, "Unsupported call barring facility code in updateCallBarring."

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    return v4

    .line 568
    :cond_2
    invoke-static {p2}, Lorg/codeaurora/ims/ImsUtImpl;->getIcbAction(I)I

    move-result v11

    .line 570
    .local v11, "cbAction":I
    const/16 v4, 0xb

    const/4 v5, 0x0

    const/16 v6, 0xe

    if-ne v3, v4, :cond_3

    .line 571
    const/4 v9, 0x1

    iget-object v4, v1, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 576
    invoke-virtual {v4, v6, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 571
    move-object v4, v2

    move v5, v11

    move v6, v3

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 578
    :cond_3
    const/4 v7, 0x0

    iget-object v4, v1, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 580
    invoke-virtual {v4, v6, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 578
    move-object v4, v2

    move v5, v11

    move v6, v3

    move-object/from16 v8, p5

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 583
    :goto_0
    return v0

    .line 551
    .end local v0    # "id":I
    .end local v3    # "facility":I
    .end local v11    # "cbAction":I
    :cond_4
    :goto_1
    :try_start_1
    const-string v0, "updateCallBarringWithPassword"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 552
    monitor-exit v3

    return v4

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 10
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 592
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallForward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 596
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 602
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 603
    const-string v2, "Invalid request id for updateCallForward."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    return v3

    .line 607
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 612
    invoke-virtual {v2, v3, v1, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 607
    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p4

    move-object v7, p3

    move v8, p5

    invoke-virtual/range {v3 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 613
    return v1

    .line 597
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "updateCallForward"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 598
    monitor-exit v1

    return v3

    .line 600
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 14
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .line 621
    move-object v1, p0

    const/4 v2, 0x0

    .line 622
    .local v2, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v3, v1, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 623
    :try_start_0
    iget-object v0, v1, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v2, v0

    .line 624
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v4, -0x1

    if-nez v0, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 630
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 631
    const-string v3, "Invalid request id for updateCallForwardUncondTimer."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    return v4

    .line 635
    :cond_1
    const/4 v11, 0x1

    iget-object v3, v1, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 639
    invoke-virtual {v3, v4, v0, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 635
    move-object v4, v2

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v4 .. v13}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 640
    return v0

    .line 625
    .end local v0    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "updateCallForwardUncondTimer"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 626
    monitor-exit v3

    return v4

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 648
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallWaiting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 651
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 652
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 658
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 659
    const-string v2, "Invalid request id for updateCallForward."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    return v3

    .line 662
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 664
    invoke-virtual {v2, v3, v1, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 662
    invoke-virtual {v0, p1, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallWaiting(ZILandroid/os/Message;)V

    .line 665
    return v1

    .line 653
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "updateCallWaiting"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 654
    monitor-exit v1

    return v3

    .line 656
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateClip(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .line 697
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCLIP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 701
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 707
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 708
    const-string v2, "Invalid request id for updateCLIP."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    return v3

    .line 711
    :cond_1
    const-string v2, "CLIP"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 713
    invoke-virtual {v3, v4, v1, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 711
    invoke-virtual {v0, v2, p1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 714
    return v1

    .line 702
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "updateClip"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 703
    monitor-exit v1

    return v3

    .line 705
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateClir(I)I
    .locals 5
    .param p1, "clirMode"    # I

    .line 673
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCLIR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 676
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 677
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 683
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 684
    const-string v2, "Invalid request id for updateCLIR."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    return v3

    .line 687
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 688
    invoke-virtual {v2, v3, v1, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 687
    invoke-virtual {v0, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCLIR(ILandroid/os/Message;)V

    .line 689
    return v1

    .line 678
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "updateClir"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 679
    monitor-exit v1

    return v3

    .line 681
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateColp(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .line 746
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCOLP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 749
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 750
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 756
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 757
    const-string v2, "Invalid request id for updateCOLP."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    return v3

    .line 760
    :cond_1
    const-string v2, "COLP"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    const/4 v5, 0x0

    .line 762
    invoke-virtual {v3, v4, v1, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 760
    invoke-virtual {v0, v2, p1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 763
    return v1

    .line 751
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "updateColp"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 752
    monitor-exit v1

    return v3

    .line 754
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateColr(I)I
    .locals 5
    .param p1, "presentation"    # I

    .line 722
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCOLR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    move-object v0, v2

    .line 726
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 732
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 733
    const-string v2, "Invalid request id for updateCOLR."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    return v3

    .line 736
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 737
    invoke-virtual {v2, v3, v1, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 736
    invoke-virtual {v0, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCOLR(ILandroid/os/Message;)V

    .line 738
    return v1

    .line 727
    .end local v1    # "id":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "updateColr"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 728
    monitor-exit v1

    return v3

    .line 730
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
