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

.field static final CF_REASON_NOT_LOGGED_IN:I = 0x6

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
.method static bridge synthetic -$$Nest$fgetmListenerImpl(Lorg/codeaurora/ims/ImsUtImpl;)Lorg/codeaurora/ims/ImsUtListenerImpl;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdumpw(Lorg/codeaurora/ims/ImsUtImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDisposed(Lorg/codeaurora/ims/ImsUtImpl;)Z
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 115
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 3
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;

    .line 124
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 106
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 107
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 108
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 113
    new-instance v0, Lorg/codeaurora/ims/ImsUtListenerImpl;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    .line 114
    new-instance v0, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$ImsUtImplHandler;-><init>(Lorg/codeaurora/ims/ImsUtImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    .line 125
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 126
    iput-object p2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 127
    iput-object p3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 128
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method private dumpw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msgPrefix"    # Ljava/lang/String;

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": isDisposed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": mCi= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": mListenerImpl= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "fn"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 134
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method private getFacilityFromCbType(I)I
    .locals 3
    .param p1, "cbType"    # I

    .line 235
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p1, v0, :cond_0

    .line 236
    return v1

    .line 238
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v1, :cond_1

    .line 239
    return v0

    .line 241
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v0, :cond_2

    .line 242
    return v1

    .line 244
    :cond_2
    const/4 v0, 0x1

    const/4 v2, 0x6

    if-ne p1, v0, :cond_3

    .line 245
    return v2

    .line 247
    :cond_3
    const/4 v0, 0x7

    if-ne p1, v1, :cond_4

    .line 248
    return v0

    .line 250
    :cond_4
    const/16 v1, 0x8

    if-ne p1, v0, :cond_5

    .line 251
    return v1

    .line 253
    :cond_5
    const/16 v0, 0x9

    if-ne p1, v1, :cond_6

    .line 254
    return v0

    .line 256
    :cond_6
    const/16 v1, 0xa

    if-ne p1, v0, :cond_7

    .line 257
    return v1

    .line 259
    :cond_7
    if-ne p1, v1, :cond_8

    .line 260
    const/16 v0, 0xb

    return v0

    .line 262
    :cond_8
    if-ne p1, v2, :cond_9

    .line 263
    const/16 v0, 0xc

    return v0

    .line 266
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public static getIcbAction(I)I
    .locals 2
    .param p0, "action"    # I

    .line 477
    if-nez p0, :cond_0

    .line 478
    const/4 v0, 0x2

    return v0

    .line 479
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 480
    return v0

    .line 481
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 482
    const/4 v0, 0x5

    return v0

    .line 483
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 484
    return v0

    .line 486
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private getIdForRequest()I
    .locals 3

    .line 721
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_0
    sget v1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 723
    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    .line 724
    const/4 v1, 0x0

    sput v1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 726
    :cond_0
    sget v1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    monitor-exit v0

    return v1

    .line 727
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

    .line 744
    const/4 v0, 0x0

    const-string v1, "ImsUtImpl"

    if-nez p0, :cond_0

    .line 745
    const-string v2, "getImsReasonInfoFromResponseError :: Null AsyncResult!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-object v0

    .line 748
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 749
    const-string v2, "getImsReasonInfoFromResponseError :: No exception in AsyncResult!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-object v0

    .line 755
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2

    .line 756
    const-string v2, "getImsReasonInfoFromResponseError :: Improper exception type in AsyncResult!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-object v0

    .line 761
    :cond_2
    const/4 v2, 0x0

    .line 762
    .local v2, "code":I
    iget-object v3, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lorg/codeaurora/ims/ImsRilException;

    .line 763
    .local v3, "ex":Lorg/codeaurora/ims/ImsRilException;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsRilException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 764
    .local v4, "error":Ljava/lang/String;
    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 765
    const-string v6, "getImsReasonInfoFromResponseError :: Null message string in exception!"

    invoke-static {v1, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v2, v5, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v1

    .line 770
    :cond_3
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Lorg/codeaurora/ims/ImsUtImpl;->toImsReasonInfoCode(I)I

    move-result v2

    .line 772
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getImsReasonInfoFromResponseError :: ImsReasonInfo code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
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

    .line 781
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 801
    const-string v1, "ImsUtImpl"

    const-string v2, "getImsReasonInfoFromResponseError :: Unrecognized exception message string!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return v0

    .line 799
    :sswitch_0
    const/16 v0, 0x352

    return v0

    .line 797
    :sswitch_1
    const/16 v0, 0x339

    return v0

    .line 795
    :sswitch_2
    const/16 v0, 0x338

    return v0

    .line 793
    :sswitch_3
    const/16 v0, 0x337

    return v0

    .line 791
    :sswitch_4
    const/16 v0, 0x336

    return v0

    .line 789
    :sswitch_5
    const/16 v0, 0xf1

    return v0

    .line 787
    :sswitch_6
    const/16 v0, 0x322

    return v0

    .line 785
    :sswitch_7
    const/16 v0, 0x335

    return v0

    .line 783
    :sswitch_8
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x1e -> :sswitch_6
        0x22 -> :sswitch_5
        0x23 -> :sswitch_4
        0x24 -> :sswitch_3
        0x25 -> :sswitch_2
        0x26 -> :sswitch_1
        0x31 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mIsDisposed:Z

    .line 164
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 166
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v0, p0}, Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;->onClosed(Lorg/codeaurora/ims/ImsUtImpl;)V

    .line 170
    iput-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    .line 172
    :cond_1
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 327
    const-string v0, "queryCallForward"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_1

    .line 332
    :cond_0
    const/4 v0, -0x1

    .line 334
    .local v0, "reason":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v2

    .line 335
    .local v2, "id":I
    if-gez v2, :cond_1

    .line 336
    const-string v3, "Invalid request id for queryCallForward."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    return v1

    .line 341
    :cond_1
    const/4 v3, 0x1

    if-nez p1, :cond_2

    .line 342
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_2
    if-ne p1, v3, :cond_3

    .line 345
    const/4 v0, 0x1

    goto :goto_0

    .line 347
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 348
    const/4 v0, 0x2

    goto :goto_0

    .line 350
    :cond_4
    const/4 v4, 0x3

    if-ne p1, v4, :cond_5

    .line 351
    const/4 v0, 0x3

    goto :goto_0

    .line 353
    :cond_5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_6

    .line 354
    const/4 v0, 0x4

    goto :goto_0

    .line 356
    :cond_6
    const/4 v4, 0x5

    if-ne p1, v4, :cond_7

    .line 357
    const/4 v0, 0x5

    goto :goto_0

    .line 359
    :cond_7
    const/4 v4, 0x6

    if-ne p1, v4, :cond_8

    .line 360
    const/4 v0, 0x6

    .line 366
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 369
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v2, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 366
    invoke-virtual {v1, v0, p3, p2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 370
    return v2

    .line 363
    :cond_8
    const-string v3, "Invalid condition for queryCallForward."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    return v1

    .line 329
    .end local v0    # "reason":I
    .end local v2    # "id":I
    :cond_9
    :goto_1
    const-string v0, "queryCFForServiceClass"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 330
    return v1
.end method

.method public queryCallBarring(I)I
    .locals 1
    .param p1, "cbType"    # I

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(II)I

    move-result v0

    return v0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 9
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 187
    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 189
    .local v0, "id":I
    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 190
    const-string v2, "Invalid request id for queryCallBarring."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    return v1

    .line 195
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 197
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 195
    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lorg/codeaurora/ims/ImsUtImpl;->queryCallBarringForServiceClass(IIZLjava/lang/String;Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    move v1, v0

    goto :goto_0

    :cond_1
    nop

    .line 195
    :goto_0
    return v1
.end method

.method public queryCallBarringForServiceClass(IIZLjava/lang/String;Landroid/os/Message;)Z
    .locals 10
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I
    .param p3, "expectMore"    # Z
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "msg"    # Landroid/os/Message;

    .line 206
    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v0

    .line 213
    .local v0, "facility":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 214
    const-string v2, "Unsupported call barring facility code in queryCallBarring."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    return v1

    .line 217
    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 218
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x1

    move v4, v0

    move-object v6, p4

    move-object v8, p5

    move v9, p3

    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x3

    const/4 v5, 0x0

    move v4, v0

    move-object v6, p4

    move v7, p2

    move-object v8, p5

    move v9, p3

    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    .line 229
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 208
    .end local v0    # "facility":I
    :cond_3
    :goto_1
    const-string v0, "queryCallBarringForServiceClass"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 209
    return v1
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 320
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsUtImpl;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public queryCallWaiting()I
    .locals 5

    .line 378
    const-string v0, "queryCallWaiting"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v1, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 385
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 386
    const-string v1, "Invalid request id for queryCallWaiting."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    return v2

    .line 389
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 390
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 389
    invoke-virtual {v1, v4, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallWaiting(ILandroid/os/Message;)V

    .line 391
    return v0

    .line 380
    .end local v0    # "id":I
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 381
    return v2
.end method

.method public queryClip()I
    .locals 5

    .line 418
    const-string v0, "queryCLIP"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 424
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 425
    const-string v2, "Invalid request id for queryCLIP."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    return v1

    .line 428
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCLIP(Landroid/os/Message;)V

    .line 429
    return v0

    .line 420
    .end local v0    # "id":I
    :cond_2
    :goto_0
    const-string v0, "queryClip"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 421
    return v1
.end method

.method public queryClir()I
    .locals 5

    .line 399
    const-string v0, "queryCLIR"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 405
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 406
    const-string v2, "Invalid request id for queryCLIR."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    return v1

    .line 409
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getCLIR(Landroid/os/Message;)V

    .line 410
    return v0

    .line 401
    .end local v0    # "id":I
    :cond_2
    :goto_0
    const-string v0, "queryClir"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 402
    return v1
.end method

.method public queryColp()I
    .locals 5

    .line 456
    const-string v0, "queryCOLP"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 462
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 463
    const-string v2, "Invalid request id for queryCLIP."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    return v1

    .line 466
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 467
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 466
    const-string v3, "COLP"

    invoke-virtual {v1, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V

    .line 468
    return v0

    .line 458
    .end local v0    # "id":I
    :cond_2
    :goto_0
    const-string v0, "queryColp"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 459
    return v1
.end method

.method public queryColr()I
    .locals 5

    .line 437
    const-string v0, "queryCOLR"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 443
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 444
    const-string v2, "Invalid request id for queryCOLR."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    return v1

    .line 447
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->getCOLR(Landroid/os/Message;)V

    .line 448
    return v0

    .line 439
    .end local v0    # "id":I
    :cond_2
    :goto_0
    const-string v0, "queryColr"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 440
    return v1
.end method

.method public setIdForRequest(I)V
    .locals 2
    .param p1, "id"    # I

    .line 732
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    sput p1, Lorg/codeaurora/ims/ImsUtImpl;->requestId:I

    .line 734
    monitor-exit v0

    .line 735
    return-void

    .line 734
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

    .line 705
    const-string v0, "setListener"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const-string v0, "setListener - isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mListenerImpl:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iput-object p1, v0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 712
    return-void
.end method

.method setOnClosedListener(Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    .line 150
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mOnCloseListener:Lorg/codeaurora/ims/ImsUtImpl$IOnCloseListener;

    .line 151
    return-void
.end method

.method public toImsCallForwardInfo([Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 18
    .param p1, "cfInfoList"    # [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    new-array v2, v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 273
    .local v2, "callForwardInfoList":[Landroid/telephony/ims/ImsCallForwardInfo;
    const/4 v3, 0x0

    .line 274
    .local v3, "callForwardStatus":I
    const/4 v4, -0x1

    .line 275
    .local v4, "condition":I
    const/4 v5, 0x0

    .line 276
    .local v5, "timeSeconds":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_9

    .line 277
    aget-object v7, v1, v6

    .line 279
    .local v7, "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 280
    const/4 v3, 0x1

    goto :goto_1

    .line 281
    :cond_0
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    if-nez v8, :cond_8

    .line 282
    const/4 v3, 0x0

    .line 288
    :goto_1
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-nez v8, :cond_1

    .line 289
    const/4 v4, 0x0

    goto :goto_2

    .line 290
    :cond_1
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    if-ne v8, v10, :cond_2

    .line 291
    const/4 v4, 0x1

    goto :goto_2

    .line 292
    :cond_2
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    .line 293
    const/4 v4, 0x2

    .line 295
    iget v5, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->timeSeconds:I

    goto :goto_2

    .line 296
    :cond_3
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_4

    .line 297
    const/4 v4, 0x3

    goto :goto_2

    .line 298
    :cond_4
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v10, 0x4

    if-ne v8, v10, :cond_5

    .line 299
    const/4 v4, 0x4

    goto :goto_2

    .line 300
    :cond_5
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v10, 0x5

    if-ne v8, v10, :cond_6

    .line 301
    const/4 v4, 0x5

    goto :goto_2

    .line 302
    :cond_6
    iget v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    const/4 v10, 0x6

    if-ne v8, v10, :cond_7

    .line 303
    const/4 v4, 0x6

    .line 308
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

    .line 276
    .end local v7    # "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 305
    .restart local v7    # "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_7
    const-string v8, "Bad reason in Query CF response."

    invoke-static {v0, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    return-object v9

    .line 284
    :cond_8
    const-string v8, "Bad status in Query CF response."

    invoke-static {v0, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    return-object v9

    .line 312
    .end local v6    # "i":I
    .end local v7    # "cfInfo":Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    :cond_9
    return-object v2
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 494
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

    .line 503
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
    .locals 10
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "password"    # Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallBarring"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_1

    .line 517
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 518
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 519
    const-string v2, "Invalid request id for updateCallBarring."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    return v1

    .line 524
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsUtImpl;->getFacilityFromCbType(I)I

    move-result v2

    .line 525
    .local v2, "facility":I
    if-ne v2, v1, :cond_2

    .line 526
    const-string v3, "Unsupported call barring facility code in updateCallBarring."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    return v1

    .line 530
    :cond_2
    invoke-static {p2}, Lorg/codeaurora/ims/ImsUtImpl;->getIcbAction(I)I

    move-result v1

    .line 532
    .local v1, "cbAction":I
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v5, 0xe

    if-ne v2, v3, :cond_3

    .line 533
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v8, 0x1

    iget-object v6, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 538
    invoke-virtual {v6, v5, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 533
    move v4, v1

    move v5, v2

    move-object v6, p3

    move-object v7, p5

    invoke-virtual/range {v3 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 540
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 542
    invoke-virtual {v7, v5, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 540
    move v4, v1

    move v5, v2

    move-object v7, p5

    move v8, p4

    invoke-virtual/range {v3 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 545
    :goto_0
    return v0

    .line 514
    .end local v0    # "id":I
    .end local v1    # "cbAction":I
    .end local v2    # "facility":I
    :cond_4
    :goto_1
    const-string v0, "updateCallBarringWithPassword"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 515
    return v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 10
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 554
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallForward"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 560
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 561
    const-string v2, "Invalid request id for updateCallForward."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    return v1

    .line 565
    :cond_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 570
    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 565
    move v4, p1

    move v5, p2

    move v6, p4

    move-object v7, p3

    move v8, p5

    invoke-virtual/range {v3 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 571
    return v0

    .line 556
    .end local v0    # "id":I
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 557
    return v1
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

    .line 579
    move-object v0, p0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v1, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v1

    .line 584
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 585
    const-string v3, "Invalid request id for updateCallForwardUncondTimer."

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    return v2

    .line 589
    :cond_1
    iget-object v4, v0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v11, 0x1

    iget-object v2, v0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 593
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 589
    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v4 .. v13}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 594
    return v1

    .line 580
    .end local v1    # "id":I
    :cond_2
    :goto_0
    const-string v1, "updateCallForwardUncondTimer"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 581
    return v2
.end method

.method public updateCallWaiting(ZI)I
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 602
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCallWaiting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 608
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 609
    const-string v2, "Invalid request id for updateCallForward."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    return v1

    .line 612
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 614
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 612
    invoke-virtual {v1, p1, p2, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallWaiting(ZILandroid/os/Message;)V

    .line 615
    return v0

    .line 604
    .end local v0    # "id":I
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 605
    return v1
.end method

.method public updateClip(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 643
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCLIP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 649
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 650
    const-string v2, "Invalid request id for updateCLIP."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    return v1

    .line 653
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 655
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 653
    const-string v3, "CLIP"

    invoke-virtual {v1, v3, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 656
    return v0

    .line 645
    .end local v0    # "id":I
    :cond_2
    :goto_0
    const-string v0, "updateClip"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 646
    return v1
.end method

.method public updateClir(I)I
    .locals 5
    .param p1, "clirMode"    # I

    .line 623
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCLIR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 629
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 630
    const-string v2, "Invalid request id for updateCLIR."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    return v1

    .line 633
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 634
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 633
    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCLIR(ILandroid/os/Message;)V

    .line 635
    return v0

    .line 625
    .end local v0    # "id":I
    :cond_2
    :goto_0
    const-string v0, "updateClir"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 626
    return v1
.end method

.method public updateColp(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .line 684
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCOLP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 690
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 691
    const-string v2, "Invalid request id for updateCOLP."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    return v1

    .line 694
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 696
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 694
    const-string v3, "COLP"

    invoke-virtual {v1, v3, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 697
    return v0

    .line 686
    .end local v0    # "id":I
    :cond_2
    :goto_0
    const-string v0, "updateColp"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 687
    return v1
.end method

.method public updateColr(I)I
    .locals 5
    .param p1, "presentation"    # I

    .line 664
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateCOLR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->isDisposed()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-nez v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsUtImpl;->getIdForRequest()I

    move-result v0

    .line 670
    .local v0, "id":I
    if-gez v0, :cond_1

    .line 671
    const-string v2, "Invalid request id for updateCOLR."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    return v1

    .line 674
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsUtImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsUtImpl;->mHandler:Landroid/os/Handler;

    .line 675
    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 674
    invoke-virtual {v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setCOLR(ILandroid/os/Message;)V

    .line 676
    return v0

    .line 666
    .end local v0    # "id":I
    :cond_2
    :goto_0
    const-string v0, "updateColr"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsUtImpl;->dumpw(Ljava/lang/String;)V

    .line 667
    return v1
.end method
