.class public Lorg/codeaurora/ims/ImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplRequestHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;,
        Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;
    }
.end annotation


# static fields
.field private static final ACTION_TRY_WFC_CONNECTION:Ljava/lang/String; = "com.google.android.wfcactivation.TRY_WFC_CONNECTION"

.field private static final DEFAULT_WFC_MDN:Ljava/lang/String; = "0"

.field private static final EVENT_ACCESS_PROVISIONED_VAL:I = 0x1

.field private static final EVENT_ACCESS_PROVISIONED_VAL_ASYNC:I = 0x64

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x2


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private mIsCarrierConfigLoaded:Z

.field private mIsContentObserversRegistered:Z

.field private mIsSsacVoiceBarred:Z

.field private mIsVopsEnabled:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRequestHandler:Landroid/os/Handler;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mSubId:I

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserSetting:Ljava/lang/Integer;

.field private mVoLTEEnabledObserver:Landroid/database/ContentObserver;

.field private mVoWiFiModeObserver:Landroid/database/ContentObserver;

.field private mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

.field private mVolteProvisionFlag:I

.field private mVonrEnabledObserver:Landroid/database/ContentObserver;

.field private mWfcModeUri:Landroid/net/Uri;

.field private mWfcRoamingModeUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCi(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsSenderRxr;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCarrierConfigLoaded(Lorg/codeaurora/ims/ImsConfigImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSsacVoiceBarred(Lorg/codeaurora/ims/ImsConfigImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsSsacVoiceBarred:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVopsEnabled(Lorg/codeaurora/ims/ImsConfigImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsVopsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneStateListener(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/PhoneStateListener;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceSub(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserSetting(Lorg/codeaurora/ims/ImsConfigImpl;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoLTEEnabledObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoLTEEnabledObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoWiFiModeObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoWiFiRoamingModeObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolteProvisionFlag(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    iget p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVonrEnabledObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVonrEnabledObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcModeUri(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcRoamingModeUri(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ims/ImsMmTelManager;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCarrierConfigLoaded(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsContentObserversRegistered(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSsacVoiceBarred(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsSsacVoiceBarred:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVopsEnabled(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsVopsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubId(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTelephonyManager(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVolteProvisionFlag(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWfcModeUri(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWfcRoamingModeUri(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustAndSyncVoWiFiMode(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->adjustAndSyncVoWiFiMode(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustVoWiFiMode(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->adjustVoWiFiMode(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearSubscriptionCache(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->clearSubscriptionCache()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetOperationStatus(Lorg/codeaurora/ims/ImsConfigImpl;Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Ljava/lang/Object;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetWfcMDN(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getWfcMDN(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlogImsConfigChangedCheckin(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAccessProvisionedValDone(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/telephony/utils/AsyncResult;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onAccessProvisionedValDone(Lorg/codeaurora/telephony/utils/AsyncResult;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetFeatureResponseDone(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetVoiceDomainSetting(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->setVoiceDomainSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncWfcMDN(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcMDN()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 4
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;

    .line 234
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 74
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    .line 76
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    .line 83
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 84
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 86
    const-string v1, "android.permission.READ_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsVopsEnabled:Z

    .line 93
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsSsacVoiceBarred:Z

    .line 96
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$1;

    new-instance v2, Landroid/os/Handler;

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$1;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    .line 103
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$2;

    new-instance v2, Landroid/os/Handler;

    .line 104
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$2;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    .line 112
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$3;

    new-instance v2, Landroid/os/Handler;

    .line 113
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$3;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoLTEEnabledObserver:Landroid/database/ContentObserver;

    .line 124
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$4;

    new-instance v2, Landroid/os/Handler;

    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$4;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVonrEnabledObserver:Landroid/database/ContentObserver;

    .line 135
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$5;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$5;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$6;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$6;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 949
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    .line 950
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 1077
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$10;

    .line 1078
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$10;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 235
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 236
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 237
    iput-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 238
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 239
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->getInstance(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplOem;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    .line 241
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 243
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0

    .line 246
    :cond_0
    const-string v0, "unable to listen for subscription changed due to subscriptionManager is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "org.codeaurora.intent.action.ESSENTIAL_RECORDS_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "com.google.android.wfcactivation.TRY_WFC_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "com.motorola.android.ims.ACTION_UPDATE_IMS_SERVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImsConfigImplRequestHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "requestHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 259
    new-instance v2, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplRequestHandler;

    .line 260
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplRequestHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    .line 262
    return-void
.end method

.method private adjustAndSyncVoWiFiMode(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 1088
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->shouldAdjustVoWiFiMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    return-void

    .line 1092
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1093
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 1095
    .local v0, "isInService":Z
    :goto_1
    if-nez v0, :cond_3

    .line 1096
    const-string v1, "OUT_OF_SERVICE, ignore WFC mode change"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    return-void

    .line 1100
    :cond_3
    nop

    .line 1101
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    if-nez v3, :cond_4

    .line 1102
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    nop

    .line 1103
    .local v1, "isWlanOnly":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 1104
    const-string v2, "IWLAN only, ignore WFC mode change"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    return-void

    .line 1108
    :cond_5
    new-instance v2, Lorg/codeaurora/ims/ImsConfigImpl$11;

    invoke-direct {v2, p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$11;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ServiceState;)V

    .line 1137
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1138
    return-void
.end method

.method private adjustVoWiFiMode(I)I
    .locals 7
    .param p1, "mode"    # I

    .line 1148
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1149
    .local v0, "isCurrentImsPreferred":Z
    :goto_0
    const-string v1, "SubID "

    if-nez v0, :cond_1

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": User didn\'t select IMS Preferred mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    return p1

    .line 1155
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    .line 1156
    .local v2, "voiceNetworkType":I
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    .line 1157
    .local v3, "dataNetworkType":I
    const/4 v4, -0x1

    .line 1159
    .local v4, "adjMode":I
    const/16 v5, 0xd

    if-eq v2, v5, :cond_2

    const/16 v6, 0x13

    if-eq v2, v6, :cond_2

    if-eq v3, v5, :cond_2

    if-ne v3, v6, :cond_3

    :cond_2
    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsVopsEnabled:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsSsacVoiceBarred:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1166
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6}, Lorg/codeaurora/ims/ImsUtils;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1168
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6}, Lorg/codeaurora/ims/ImsUtils;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1170
    const/4 v4, 0x1

    goto :goto_1

    .line 1172
    :cond_3
    const/16 v5, 0x14

    if-eq v2, v5, :cond_4

    const/16 v6, 0x1e

    if-eq v2, v6, :cond_4

    if-eq v3, v5, :cond_4

    if-ne v3, v6, :cond_5

    :cond_4
    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsVopsEnabled:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsSsacVoiceBarred:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1178
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6}, Lorg/codeaurora/ims/ImsUtils;->isImsOverNrEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 1179
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6}, Lorg/codeaurora/ims/ImsUtils;->isVonrEnabledByUser(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1180
    const/4 v4, 0x1

    goto :goto_1

    .line 1182
    :cond_5
    if-eqz v2, :cond_6

    .line 1183
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->isWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1184
    const/4 v4, 0x2

    .line 1186
    :cond_6
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": WFC mode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", adjMode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    return v4
.end method

.method private clearSubscriptionCache()V
    .locals 3

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    .line 354
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 355
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 358
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 362
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoLTEEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 367
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVonrEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 371
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    .line 373
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 374
    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    .line 375
    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    .line 378
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 379
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 382
    :cond_1
    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "fn"    # Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 572
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_0
    return-void
.end method

.method private getDomainName()Ljava/lang/String;
    .locals 3

    .line 670
    const-string v0, ""

    .line 671
    .local v0, "domain":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 672
    .local v1, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    .line 675
    :cond_0
    return-object v0
.end method

.method private getOperationStatus(Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOperationStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    if-nez p2, :cond_0

    .line 552
    const/4 v0, 0x0

    return v0

    .line 554
    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    instance-of v1, p2, Lorg/codeaurora/ims/ImsRilException;

    if-nez v1, :cond_1

    goto :goto_0

    .line 558
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 559
    .local v1, "config":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    .line 560
    return v0

    .line 562
    :cond_2
    move-object v2, p2

    check-cast v2, Lorg/codeaurora/ims/ImsRilException;

    .line 563
    .local v2, "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 564
    const/4 v0, 0x2

    return v0

    .line 566
    :cond_3
    return v0

    .line 556
    .end local v1    # "config":I
    .end local v2    # "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    :cond_4
    :goto_0
    return v0
.end method

.method private getPhoneId()I
    .locals 1

    .line 900
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    return v0
.end method

.method private declared-synchronized getUserSetting()Z
    .locals 2

    monitor-enter p0

    .line 1048
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1049
    const-string v0, "checkinVolteProvision: mImsMmTelManager null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    monitor-exit p0

    return v1

    .line 1059
    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl;
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 1060
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isAdvancedCallingSettingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 1063
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    .line 1066
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1067
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isVtSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1068
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mUserSetting:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    :cond_3
    monitor-exit p0

    return v1

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getWfcMDN(I)Ljava/lang/String;
    .locals 2
    .param p1, "subid"    # I

    .line 849
    const-string v0, "wfc_ims_mdn"

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "mdn":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "0"

    .line 852
    :cond_0
    return-object v0
.end method

.method private isWifiConnected()Z
    .locals 5

    .line 1191
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1193
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 1194
    .local v1, "network":Landroid/net/Network;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 1195
    .local v2, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_0

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1197
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1198
    return v3

    .line 1200
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private logImsConfigChangedCheckin(ILjava/lang/String;I)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "retVal"    # I

    .line 906
    const/4 v0, 0x0

    .line 907
    .local v0, "info":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 921
    :sswitch_0
    const-string v0, "vice_dm"

    .line 922
    goto :goto_0

    .line 918
    :sswitch_1
    const-string v0, "wfc_dm"

    .line 919
    goto :goto_0

    .line 915
    :sswitch_2
    const-string v0, "eab_dm"

    .line 916
    goto :goto_0

    .line 912
    :sswitch_3
    const-string v0, "vt_dm"

    .line 913
    goto :goto_0

    .line 909
    :sswitch_4
    const-string v0, "vlt_dm"

    .line 910
    nop

    .line 926
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 930
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    if-eqz p3, :cond_1

    .line 935
    const-string v2, ", ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 938
    :cond_1
    nop

    .line 939
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 938
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V

    .line 940
    return-void

    .line 927
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0x19 -> :sswitch_2
        0x1c -> :sswitch_1
        0x41 -> :sswitch_0
    .end sparse-switch
.end method

.method private onAccessProvisionedValDone(Lorg/codeaurora/telephony/utils/AsyncResult;I)V
    .locals 3
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "accessType"    # I

    .line 493
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 494
    .local v0, "response":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Ljava/lang/Object;Ljava/lang/Throwable;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 495
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    iput-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    .line 496
    monitor-enter v0

    .line 497
    :try_start_0
    const-string v1, "Notifyall"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 499
    monitor-exit v0

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSetFeatureResponseDone(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 503
    if-nez p1, :cond_0

    .line 504
    const-string v0, "onSetFeatureResponseDone :: AsyncResult is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    return-void

    .line 508
    :cond_0
    const/4 v0, 0x0

    .line 509
    .local v0, "listener":Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;
    const/4 v1, 0x0

    .line 512
    .local v1, "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    :try_start_0
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v1, v2

    .line 513
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 516
    goto :goto_0

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, "ex":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetFeatureResponseDone :: Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    :goto_0
    if-nez v0, :cond_1

    .line 519
    const-string v2, "onSetFeatureResponseDone :: listener is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    return-void

    .line 523
    :cond_1
    if-nez v1, :cond_2

    .line 524
    const-string v2, "onSetFeatureResponseDone :: capabilityStatusList is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    return-void

    .line 528
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/CapabilityStatus;

    .line 529
    .local v3, "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    iget-object v4, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 530
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v4

    .line 531
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v5

    .line 532
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v6

    .line 530
    invoke-interface {v0, v4, v5, v6}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;->onSetCapabilityValueSuccess(III)V

    .line 534
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v4

    if-nez v4, :cond_4

    .line 535
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v4

    const/16 v5, 0x13

    if-ne v4, v5, :cond_4

    .line 536
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 537
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcMDN()V

    goto :goto_2

    .line 541
    :cond_3
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v4

    .line 542
    invoke-virtual {v3}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v5

    sget-object v6, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ERROR_GENERIC:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    .line 541
    invoke-interface {v0, v4, v5, v6}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;->onSetCapabilityValueFailure(IILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)V

    .line 545
    .end local v3    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    :cond_4
    :goto_2
    goto :goto_1

    .line 546
    :cond_5
    return-void
.end method

.method private sendSetConfigRequest(II)I
    .locals 7
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 680
    const/16 v1, 0x2c

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 682
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 683
    .local v1, "retVal":I
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 684
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    .line 685
    return v1
.end method

.method private setVoiceDomainSetting()V
    .locals 2

    .line 872
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$8;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$8;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 894
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 895
    return-void
.end method

.method private shouldAdjustVoWiFiMode()Z
    .locals 3

    .line 1142
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "carrier_wfc_supports_ims_preferred_bool"

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private syncWfcMDN()V
    .locals 2

    .line 825
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$7;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$7;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 844
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 845
    return-void
.end method


# virtual methods
.method public checkinVolteProvision(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 952
    invoke-static {}, Lorg/codeaurora/ims/CheckinEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 953
    return-void

    .line 957
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getUserSetting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    return-void

    .line 962
    :cond_1
    move v0, p1

    .line 963
    .local v0, "event_code":I
    move-object v1, p2

    .line 965
    .local v1, "event_info":Ljava/lang/String;
    new-instance v2, Lorg/codeaurora/ims/ImsConfigImpl$9;

    invoke-direct {v2, p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$9;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)V

    .line 1042
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1043
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 271
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose :: Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 283
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 286
    :cond_1
    return-void
.end method

.method public getConfigInt(I)I
    .locals 9
    .param p1, "item"    # I

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigInt :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    const-string v0, "getConfigInt"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 620
    const/16 v0, 0x46

    if-ne p1, v0, :cond_0

    .line 621
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getTVolteHysTimer()I

    move-result v0

    return v0

    .line 622
    :cond_0
    const/16 v0, 0x49

    if-ne p1, v0, :cond_1

    .line 623
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServices()I

    move-result v0

    return v0

    .line 627
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 628
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    return v1

    .line 632
    :cond_2
    const/16 v3, 0x2d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 634
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    .line 635
    goto :goto_0

    :cond_3
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 636
    .local v1, "retVal":I
    :goto_0
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 637
    return v1
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 9
    .param p1, "item"    # I

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigString :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    const-string v0, "getConfigString"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 650
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 651
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    return-object v1

    .line 656
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 657
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getDomainName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 661
    :cond_1
    const/16 v3, 0x2d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 663
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 664
    goto :goto_0

    :cond_2
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 665
    .local v1, "retVal":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 666
    return-object v1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 856
    const/4 v0, 0x0

    .line 858
    .local v0, "resultValue":Ljava/lang/String;
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 859
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 860
    nop

    .line 861
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 860
    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 865
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 863
    :catch_0
    move-exception v1

    .line 866
    :goto_0
    return-object v0
.end method

.method public getSubscriptionsChangeListener()Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .locals 1

    .line 820
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method protected sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "requestType"    # I
    .param p2, "item"    # I
    .param p3, "event"    # I
    .param p4, "boolVal"    # Z
    .param p5, "intVal"    # I
    .param p6, "strVal"    # Ljava/lang/String;

    .line 584
    move-object v1, p0

    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v2

    .line 586
    .local v2, "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 587
    iget-object v3, v1, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v5

    const/4 v9, 0x0

    iget-object v0, v1, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 589
    move v11, p3

    :try_start_1
    invoke-virtual {v0, p3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 587
    move v4, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 591
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 592
    :goto_0
    :try_start_2
    iget-object v0, v2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_0

    .line 594
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 597
    :goto_1
    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    goto :goto_1

    .line 599
    :cond_0
    :try_start_4
    monitor-exit v2

    .line 603
    return-object v2

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl;
    .end local p1    # "requestType":I
    .end local p2    # "item":I
    .end local p3    # "event":I
    .end local p4    # "boolVal":Z
    .end local p5    # "intVal":I
    .end local p6    # "strVal":Ljava/lang/String;
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 600
    .restart local v2    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl;
    .restart local p1    # "requestType":I
    .restart local p2    # "item":I
    .restart local p3    # "event":I
    .restart local p4    # "boolVal":Z
    .restart local p5    # "intVal":I
    .restart local p6    # "strVal":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 603
    :catchall_1
    move-exception v0

    move v11, p3

    goto :goto_3

    .line 600
    :catch_2
    move-exception v0

    move v11, p3

    .line 601
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    const/4 v3, -0x1

    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 603
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    return-object v2

    :catchall_2
    move-exception v0

    :goto_3
    return-object v2
.end method

.method protected sendSetConfigRequestAsync(II)V
    .locals 9
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSetConfigRequestAsync :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/16 v2, 0x2c

    .line 691
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    .line 693
    const/16 v5, 0x64

    invoke-virtual {v0, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 690
    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 694
    return-void
.end method

.method public setCapabilityValue(Ljava/util/ArrayList;Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;)V
    .locals 3
    .param p2, "listener"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;",
            "Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;",
            ")V"
        }
    .end annotation

    .line 813
    .local p1, "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setCapabilityValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->setServiceStatus(Landroid/os/Message;Ljava/util/ArrayList;I)V

    .line 816
    return-void
.end method

.method public setConfig(II)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/16 v0, 0x1a

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 712
    const-string v0, "Ignore VoWiFi Roaming enable/disable"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    return v1

    .line 717
    :cond_0
    const/16 v0, 0x46

    if-ne p1, v0, :cond_1

    .line 718
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;->setTVolteHysTimer(I)I

    move-result v0

    return v0

    .line 719
    :cond_1
    const/16 v0, 0x49

    if-ne p1, v0, :cond_2

    .line 720
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsSupportedServicesAndNotify()V

    .line 721
    return v1

    .line 725
    :cond_2
    invoke-static {p1, v1}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 726
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    return v1

    .line 737
    :cond_3
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_4

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 738
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 739
    const-string v0, "VoWiFi mode: config update is done only when mode preference is changed or when sim is loaded"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    return v1

    .line 745
    :cond_4
    if-ne p1, v0, :cond_5

    .line 746
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->shouldAdjustVoWiFiMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Need adjust IMS Preferred mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->adjustVoWiFiMode(I)I

    move-result p2

    .line 749
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 750
    const-string v0, "Inappropriate network, no need to set WFC mode!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    return v1

    .line 756
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequest(II)I

    move-result v0

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 9
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 770
    const-string v0, " value="

    const-string v1, "setConfig :: item="

    const/16 v2, 0x48

    if-ne p1, v2, :cond_0

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 773
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v3, "setConfig"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 778
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    return v1

    .line 783
    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 784
    const-string v0, "ProvisioningManager.KEY_REGISTRATION_DOMAIN_NAME: value can\'t be changed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    return v1

    .line 790
    :cond_2
    if-ne p1, v2, :cond_3

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProvisionedStringValue WIFI_MDN set db value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 795
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    const-string v1, "wfc_ims_mdn"

    invoke-static {v0, v1, p2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    goto :goto_1

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubscriptionProperty fail, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    const/16 v3, 0x2c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 805
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 806
    .local v1, "retVal":I
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 807
    invoke-direct {p0, p1, p2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    .line 808
    return v1
.end method

.method public updateWFCMode(Z)I
    .locals 6
    .param p1, "isRoamingMode"    # Z

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWFCMode: sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isRoamingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateWFCMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_5

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 403
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 408
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-nez v1, :cond_1

    .line 409
    const-string v1, "updateWFCMode: mImsMmTelManager null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    return v0

    .line 413
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v1

    if-nez v1, :cond_2

    .line 414
    const-string v1, "Modem do not support WFC roaming config"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    return v0

    .line 419
    :cond_2
    if-eqz p1, :cond_3

    .line 420
    const/16 v1, 0x3eb

    .line 421
    .local v1, "item":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v2

    .local v2, "value":I
    goto :goto_0

    .line 423
    .end local v1    # "item":I
    .end local v2    # "value":I
    :cond_3
    const/16 v1, 0x1b

    .line 424
    .restart local v1    # "item":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v2

    .line 428
    .restart local v2    # "value":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->shouldAdjustVoWiFiMode()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubID "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": Need adjust IMS Preferred mode"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->adjustVoWiFiMode(I)I

    move-result v3

    move v2, v3

    .line 431
    if-ne v2, v4, :cond_4

    .line 432
    const-string v3, "Inappropriate network, no need to set WFC mode!"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    return v0

    .line 438
    :cond_4
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequestAsync(II)V

    .line 442
    .end local v1    # "item":I
    .end local v2    # "value":I
    nop

    .line 443
    return v4

    .line 404
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWFCMode: invalid sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    return v0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update WFCMode: invalid sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    return v0
.end method

.method public updateWfcModeConfigurationsToModem()V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWfcModeConfigurationsToModem: mIsCarrierConfigLoaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    .line 391
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    .line 393
    :cond_0
    return-void
.end method
