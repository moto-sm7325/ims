.class public Lorg/codeaurora/ims/ImsSenderRxr;
.super Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x1

.field static final IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

.field static final LOG_TAG:Ljava/lang/String; = "ImsSenderRxr"

.field private static final MSG_TAG_LENGTH:I = 0x1

.field private static final PDU_LENGTH_OFFSET:I = 0x4

.field static final ZERO_SECONDS:I


# instance fields
.field private mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

.field private mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

.field final mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

.field private mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

.field private mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field private mIsUnsolCallListPresent:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mPhoneId:Ljava/lang/Integer;

.field private mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/IFRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field private mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field private mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockTimeout:I

.field private mWfcRoamingConfigurationSupport:Z

.field private mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoRejectRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCiWlanNotificationRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConferenceCallStateCompletedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeoLocationDataStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeolocationRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandoverStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsSubConfigChangeRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncomingDtmfStartRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncomingDtmfStopRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncomingSmsRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiIdentityInfoPendingRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiIdentityStatusChangeRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiSimVoiceCapabilityChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParticipantStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lorg/codeaurora/ims/ImsSenderRxr;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefreshConfInfoRegistrations(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationBlockStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRttMessageRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSendSmsStatusReportRegistrant(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/Registrant;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsCallbackModeChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSrvDomainChangedRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSrvStatusRegistrations(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTtyStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoWiFiCallQualityRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoiceInfoStatusRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVopsRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcRoamingModeConfigRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsUnsolCallListPresent(Lorg/codeaurora/ims/ImsSenderRxr;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWfcRoamingConfigurationSupport(Lorg/codeaurora/ims/ImsSenderRxr;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearRequestsList(Lorg/codeaurora/ims/ImsSenderRxr;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRequestsList(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindAndRemoveRequestFromList(Lorg/codeaurora/ims/ImsSenderRxr;I)Lorg/codeaurora/ims/IFRequest;
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyServiceDown(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceDown(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyServiceUp(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceUp(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySipDtmfInfo(Lorg/codeaurora/ims/ImsSenderRxr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->notifySipDtmfInfo(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyUssdInfo(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyUssdInfo(Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveFromQueueAndSendResponse(Lorg/codeaurora/ims/ImsSenderRxr;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResponse(Lorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 245
    const-string v0, "imsradio0"

    const-string v1, "imsradio1"

    const-string v2, "imsradio2"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 828
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;-><init>(Landroid/content/Context;)V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 233
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    .line 239
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 283
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    .line 285
    new-instance v1, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    .line 286
    new-instance v1, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    .line 830
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    .line 831
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->initNotifyRegistrants()V

    .line 833
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 834
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ImsSenderRxr"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 835
    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 836
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object v2

    .line 837
    const v3, 0xea60

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    .line 838
    new-instance v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    .line 839
    iput v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 842
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/codeaurora/ims/ImsRadioHalFactory;->newImsRadioHal(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)Lorg/codeaurora/ims/IImsRadio;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    .line 843
    return-void
.end method

.method private acquireWakeLock()V
    .locals 5

    .line 887
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 888
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 890
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->removeMessages(I)V

    .line 891
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 892
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 893
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 894
    return-void

    .line 893
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRegistrants()V
    .locals 2

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetIncomingImsSms(Landroid/os/Handler;)V

    .line 348
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetImsSmsStatusReport(Landroid/os/Handler;)V

    .line 349
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 350
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 351
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 352
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 353
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 354
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 355
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 356
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 357
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 358
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 359
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 360
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 361
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 362
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 363
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 364
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 365
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 366
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 367
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 368
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 369
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 370
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 371
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 372
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 373
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 374
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 375
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 376
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 377
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 378
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 379
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 380
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 381
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 382
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 383
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 384
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRequestsList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 928
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 929
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 930
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestsList: mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 935
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/IFRequest;

    .line 936
    .local v4, "rr":Lorg/codeaurora/ims/IFRequest;
    if-eqz p2, :cond_1

    .line 937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 938
    invoke-static {v6}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 937
    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    :cond_1
    invoke-virtual {v4, p1, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 941
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 934
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 943
    .end local v2    # "i":I
    .end local v4    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 944
    const/4 v2, 0x0

    iput v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 945
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 946
    .end local v1    # "count":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    if-eqz v0, :cond_3

    .line 950
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 951
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 953
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v3, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 952
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 955
    :cond_3
    return-void

    .line 946
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private disableSrvStatus()V
    .locals 4

    .line 2085
    const-string v0, "disableSrvStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2086
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 2087
    new-instance v0, Lorg/codeaurora/ims/ImsRilException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    .line 2088
    .local v0, "ex":Lorg/codeaurora/ims/ImsRilException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v3, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v3, v2, v2, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2089
    invoke-virtual {v1, v3}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2091
    .end local v0    # "ex":Lorg/codeaurora/ims/ImsRilException;
    :cond_0
    return-void
.end method

.method static errorIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 1042
    sparse-switch p0, :sswitch_data_0

    .line 1080
    const-string v0, "E_UNKNOWN"

    return-object v0

    .line 1078
    :sswitch_0
    const-string v0, "E_CF_SERVICE_NOT_REGISTERED"

    return-object v0

    .line 1076
    :sswitch_1
    const-string v0, "E_SEND_SIP_DTMF_FAILED"

    return-object v0

    .line 1074
    :sswitch_2
    const-string v0, "E_USSD_CS_FALLBACK"

    return-object v0

    .line 1072
    :sswitch_3
    const-string v0, "E_SS_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 1070
    :sswitch_4
    const-string v0, "E_SS_MODIFIED_TO_SS"

    return-object v0

    .line 1068
    :sswitch_5
    const-string v0, "E_SS_MODIFIED_TO_USSD"

    return-object v0

    .line 1066
    :sswitch_6
    const-string v0, "E_SS_MODIFIED_TO_DIAL"

    return-object v0

    .line 1064
    :sswitch_7
    const-string v0, "E_FDN_CHECK_FAILURE"

    return-object v0

    .line 1062
    :sswitch_8
    const-string v0, "E_NETWORK_NOT_SUPPORTED"

    return-object v0

    .line 1060
    :sswitch_9
    const-string v0, "E_REJECTED_BY_REMOTE"

    return-object v0

    .line 1058
    :sswitch_a
    const-string v0, "E_INVALID_PARAMETER"

    return-object v0

    .line 1056
    :sswitch_b
    const-string v0, "E_UNUSED"

    return-object v0

    .line 1054
    :sswitch_c
    const-string v0, "E_CANCELLED"

    return-object v0

    .line 1052
    :sswitch_d
    const-string v0, "E_REQUEST_NOT_SUPPORTED"

    return-object v0

    .line 1050
    :sswitch_e
    const-string v0, "E_PASSWORD_INCORRECT"

    return-object v0

    .line 1048
    :sswitch_f
    const-string v0, "E_GENERIC_FAILURE"

    return-object v0

    .line 1046
    :sswitch_10
    const-string v0, "E_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 1044
    :sswitch_11
    const-string v0, "SUCCESS"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_10
        0x2 -> :sswitch_f
        0x3 -> :sswitch_e
        0x6 -> :sswitch_d
        0x7 -> :sswitch_c
        0x10 -> :sswitch_b
        0x1b -> :sswitch_a
        0x1c -> :sswitch_9
        0x1e -> :sswitch_8
        0x22 -> :sswitch_7
        0x23 -> :sswitch_6
        0x24 -> :sswitch_5
        0x25 -> :sswitch_4
        0x26 -> :sswitch_3
        0x2f -> :sswitch_2
        0x30 -> :sswitch_1
        0x31 -> :sswitch_0
    .end sparse-switch
.end method

.method static facilityStringToInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .line 2476
    if-eqz p0, :cond_2

    .line 2480
    const-string v0, "CLIP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2481
    const/4 v0, 0x1

    return v0

    .line 2483
    :cond_0
    const-string v0, "COLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2484
    const/4 v0, 0x2

    return v0

    .line 2486
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2477
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid supplementary service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;
    .locals 5
    .param p1, "serial"    # I

    .line 958
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 959
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 960
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/IFRequest;

    .line 962
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    iget v4, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    if-ne v4, p1, :cond_1

    .line 963
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 964
    iget v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-lez v4, :cond_0

    .line 965
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 966
    :cond_0
    monitor-exit v0

    return-object v3

    .line 959
    .end local v3    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 969
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    monitor-exit v0

    .line 971
    const/4 v0, 0x0

    return-object v0

    .line 969
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initNotifyRegistrants()V
    .locals 2

    .line 846
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 847
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 848
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 849
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 850
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 851
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 852
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 853
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 854
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 855
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 856
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 857
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 858
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 859
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 860
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 861
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 862
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 863
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 864
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 865
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 866
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 867
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 868
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 869
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 870
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 871
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 872
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 873
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 874
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 875
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 876
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 877
    return-void
.end method

.method static msgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 1086
    sparse-switch p0, :sswitch_data_0

    .line 1312
    const-string v0, "<unknown message>"

    return-object v0

    .line 1310
    :sswitch_0
    const-string v0, "UNSOL_C_IWLAN_NOTIFICATION"

    return-object v0

    .line 1306
    :sswitch_1
    const-string v0, "UNSOL_INCOMING_CALL_AUTO_REJECTED"

    return-object v0

    .line 1308
    :sswitch_2
    const-string v0, "UNSOL_PRE_ALERTING_CALL_INFO_AVAILABLE"

    return-object v0

    .line 1304
    :sswitch_3
    const-string v0, "UNSOL_MULTI_SIM_VOICE_CAPABILITY_CHANGED"

    return-object v0

    .line 1302
    :sswitch_4
    const-string v0, "UNSOL_INCOMING_DTMF_STOP"

    return-object v0

    .line 1300
    :sswitch_5
    const-string v0, "UNSOL_INCOMING_DTMF_START"

    return-object v0

    .line 1298
    :sswitch_6
    const-string v0, "UNSOL_SCBM_UPDATE_IND"

    return-object v0

    .line 1296
    :sswitch_7
    const-string v0, "UNSOL_CONFERENCE_CALL_STATE_COMPLETED"

    return-object v0

    .line 1294
    :sswitch_8
    const-string v0, "UNSOL_SERVICE_DOMAIN_CHANGED"

    return-object v0

    .line 1292
    :sswitch_9
    const-string v0, "UNSOL_SIP_DTMF_RECEIVED"

    return-object v0

    .line 1290
    :sswitch_a
    const-string v0, "UNSOL_USSD_RECEIVED"

    return-object v0

    .line 1288
    :sswitch_b
    const-string v0, "UNSOL_RETRIEVE_GEO_LOCATION_DATA_STATUS"

    return-object v0

    .line 1286
    :sswitch_c
    const-string v0, "UNSOL_CALL_COMPOSER_INFO_AVAILABLE_IND"

    return-object v0

    .line 1284
    :sswitch_d
    const-string v0, "UNSOL_AUTO_CALL_COMPOSER_CALL_REJECTION_IND"

    return-object v0

    .line 1282
    :sswitch_e
    const-string v0, "UNSOL_USSD_FAILED"

    return-object v0

    .line 1280
    :sswitch_f
    const-string v0, "UNSOL_MODEM_SUPPORTS_WFC_ROAMING_MODE"

    return-object v0

    .line 1278
    :sswitch_10
    const-string v0, "UNSOL_MULTI_IDENTITY_INFO_PENDING"

    return-object v0

    .line 1276
    :sswitch_11
    const-string v0, "UNSOL_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE"

    return-object v0

    .line 1274
    :sswitch_12
    const-string v0, "UNSOL_VOICE_INFO"

    return-object v0

    .line 1272
    :sswitch_13
    const-string v0, "UNSOL_AUTO_CALL_REJECTION_IND"

    return-object v0

    .line 1270
    :sswitch_14
    const-string v0, "UNSOL_INCOMING_IMS_SMS"

    return-object v0

    .line 1268
    :sswitch_15
    const-string v0, "UNSOL_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 1266
    :sswitch_16
    const-string v0, "UNSOL_ON_SS"

    return-object v0

    .line 1264
    :sswitch_17
    const-string v0, "UNSOL_RESPONSE_RTT_MSG_RECEIVED"

    return-object v0

    .line 1262
    :sswitch_18
    const-string v0, "UNSOL_RESPONSE_REGISTRATION_BLOCK_STATUS"

    return-object v0

    .line 1260
    :sswitch_19
    const-string v0, "UNSOL_IMS_SUB_CONFIG_CHANGED"

    return-object v0

    .line 1258
    :sswitch_1a
    const-string v0, "UNSOL_PARTICIPANT_STATUS_INFO"

    return-object v0

    .line 1256
    :sswitch_1b
    const-string v0, "UNSOL_SSAC_CHANGED"

    return-object v0

    .line 1254
    :sswitch_1c
    const-string v0, "UNSOL_VOPS_CHANGED"

    return-object v0

    .line 1252
    :sswitch_1d
    const-string v0, "UNSOL_VOWIFI_CALL_QUALITY"

    return-object v0

    .line 1248
    :sswitch_1e
    const-string v0, "UNSOL_REQUEST_GEOLOCATION"

    return-object v0

    .line 1250
    :sswitch_1f
    const-string v0, "UNSOL_REFRESH_VICE_INFO"

    return-object v0

    .line 1246
    :sswitch_20
    const-string v0, "UNSOL_MWI"

    return-object v0

    .line 1244
    :sswitch_21
    const-string v0, "UNSOL_RADIO_STATE_CHANGED"

    return-object v0

    .line 1242
    :sswitch_22
    const-string v0, "UNSOL_TTY_NOTIFICATION"

    return-object v0

    .line 1240
    :sswitch_23
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1238
    :sswitch_24
    const-string v0, "UNSOL_SRV_STATUS_UPDATE"

    return-object v0

    .line 1236
    :sswitch_25
    const-string v0, "UNSOL_REFRESH_CONF_INFO"

    return-object v0

    .line 1234
    :sswitch_26
    const-string v0, "UNSOL_RESPONSE_HANDOVER"

    return-object v0

    .line 1116
    :sswitch_27
    const-string v0, "UNSOL_MODIFY_CALL"

    return-object v0

    .line 1230
    :sswitch_28
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1226
    :sswitch_29
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1220
    :sswitch_2a
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 1228
    :sswitch_2b
    const-string v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 1224
    :sswitch_2c
    const-string v0, "UNSOL_CALL_RING"

    return-object v0

    .line 1222
    :sswitch_2d
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 1218
    :sswitch_2e
    const-string v0, "REQUEST_EXIT_SCBM"

    return-object v0

    .line 1216
    :sswitch_2f
    const-string v0, "REQUEST_QUERY_MULTI_SIM_VOICE_CAPABILITY"

    return-object v0

    .line 1214
    :sswitch_30
    const-string v0, "REQUEST_SET_MEDIA_CONFIG"

    return-object v0

    .line 1212
    :sswitch_31
    const-string v0, "REQUEST_SIP_DTMF"

    return-object v0

    .line 1210
    :sswitch_32
    const-string v0, "REQUEST_CANCEL_USSD"

    return-object v0

    .line 1208
    :sswitch_33
    const-string v0, "REQUEST_USSD"

    return-object v0

    .line 1206
    :sswitch_34
    const-string v0, "CALL_COMPOSER_DIAL"

    return-object v0

    .line 1204
    :sswitch_35
    const-string v0, "REQUEST_EMERGENCY_DIAL"

    return-object v0

    .line 1202
    :sswitch_36
    const-string v0, "REQUEST_QUERY_VIRTUAL_LINE_INFO"

    return-object v0

    .line 1200
    :sswitch_37
    const-string v0, "REQUEST_REGISTER_MULTI_IDENTITY_LINES"

    return-object v0

    .line 1198
    :sswitch_38
    const-string v0, "REQUEST_ACK_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 1196
    :sswitch_39
    const-string v0, "REQUEST_ACK_IMS_SMS"

    return-object v0

    .line 1194
    :sswitch_3a
    const-string v0, "REQUEST_SEND_IMS_SMS"

    return-object v0

    .line 1192
    :sswitch_3b
    const-string v0, "REQUEST_CANCEL_MODIFY_CALL"

    return-object v0

    .line 1190
    :sswitch_3c
    const-string v0, "REQUEST_SEND_RTT_MSG"

    return-object v0

    .line 1188
    :sswitch_3d
    const-string v0, "REQUEST_GET_IMS_SUB_CONFIG"

    return-object v0

    .line 1186
    :sswitch_3e
    const-string v0, "REQUEST_SET_HANDOVER_CONFIG"

    return-object v0

    .line 1184
    :sswitch_3f
    const-string v0, "REQUEST_GET_HANDOVER_CONFIG"

    return-object v0

    .line 1182
    :sswitch_40
    const-string v0, "REQUEST_GET_VOLTE_PREF"

    return-object v0

    .line 1180
    :sswitch_41
    const-string v0, "REQUEST_SET_VOLTE_PREF"

    return-object v0

    .line 1178
    :sswitch_42
    const-string v0, "REQUEST_GET_SSAC_INFO"

    return-object v0

    .line 1176
    :sswitch_43
    const-string v0, "REQUEST_GET_VOPS_INFO"

    return-object v0

    .line 1174
    :sswitch_44
    const-string v0, "REQUEST_SEND_GEOLOCATION_INFO"

    return-object v0

    .line 1172
    :sswitch_45
    const-string v0, "REQUEST_GET_IMS_CONFIG"

    return-object v0

    .line 1170
    :sswitch_46
    const-string v0, "REQUEST_SET_IMS_CONFIG"

    return-object v0

    .line 1160
    :sswitch_47
    const-string v0, "REQUEST_SET_WIFI_CALLING_STATUS"

    return-object v0

    .line 1158
    :sswitch_48
    const-string v0, "REQUEST_GET_WIFI_CALLING_STATUS"

    return-object v0

    .line 1156
    :sswitch_49
    const-string v0, "REQUEST_GET_RTP_ERROR_STATISTICS"

    return-object v0

    .line 1154
    :sswitch_4a
    const-string v0, "REQUEST_GET_RTP_STATISTICS"

    return-object v0

    .line 1110
    :sswitch_4b
    const-string v0, "REQUEST_SEND_UI_TTY_MODE"

    return-object v0

    .line 1168
    :sswitch_4c
    const-string v0, "REQUEST_RESUME"

    return-object v0

    .line 1166
    :sswitch_4d
    const-string v0, "REQUEST_HOLD"

    return-object v0

    .line 1164
    :sswitch_4e
    const-string v0, "REQUEST_SET_COLR"

    return-object v0

    .line 1162
    :sswitch_4f
    const-string v0, "REQUEST_GET_COLR"

    return-object v0

    .line 1094
    :sswitch_50
    const-string v0, "REQUEST_DEFLECT_CALL"

    return-object v0

    .line 1152
    :sswitch_51
    const-string v0, "REQUEST_SUPP_SVC_STATUS"

    return-object v0

    .line 1136
    :sswitch_52
    const-string v0, "REQUEST_SET_SERVICE_STATUS"

    return-object v0

    .line 1134
    :sswitch_53
    const-string v0, "REQUEST_QUERY_SERVICE_STATUS"

    return-object v0

    .line 1096
    :sswitch_54
    const-string v0, "REQUEST_ADD_PARTICIPANT"

    return-object v0

    .line 1150
    :sswitch_55
    const-string v0, "REQUEST_SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1232
    :sswitch_56
    const-string v0, "REQUEST_IMS_REG_STATE_CHANGE"

    return-object v0

    .line 1148
    :sswitch_57
    const-string v0, "REQUEST_SET_CALL_WAITING"

    return-object v0

    .line 1146
    :sswitch_58
    const-string v0, "REQUEST_QUERY_CALL_WAITING"

    return-object v0

    .line 1144
    :sswitch_59
    const-string v0, "REQUEST_SET_CALL_FORWARD_STATUS"

    return-object v0

    .line 1142
    :sswitch_5a
    const-string v0, "REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 1140
    :sswitch_5b
    const-string v0, "REQUEST_SET_CLIR"

    return-object v0

    .line 1138
    :sswitch_5c
    const-string v0, "REQUEST_GET_CLIR"

    return-object v0

    .line 1132
    :sswitch_5d
    const-string v0, "REQUEST_QUERY_CLIP"

    return-object v0

    .line 1114
    :sswitch_5e
    const-string v0, "MODIFY_CALL_CONFIRM"

    return-object v0

    .line 1112
    :sswitch_5f
    const-string v0, "MODIFY_CALL_INITIATE"

    return-object v0

    .line 1108
    :sswitch_60
    const-string v0, "UDUB"

    return-object v0

    .line 1124
    :sswitch_61
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 1122
    :sswitch_62
    const-string v0, "DTMF_START"

    return-object v0

    .line 1120
    :sswitch_63
    const-string v0, "DTMF"

    return-object v0

    .line 1126
    :sswitch_64
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 1128
    :sswitch_65
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1106
    :sswitch_66
    const-string v0, "CONFERENCE"

    return-object v0

    .line 1104
    :sswitch_67
    const-string v0, "MessageId.REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 1102
    :sswitch_68
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 1100
    :sswitch_69
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 1088
    :sswitch_6a
    const-string v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 1118
    :sswitch_6b
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 1098
    :sswitch_6c
    const-string v0, "HANGUP"

    return-object v0

    .line 1092
    :sswitch_6d
    const-string v0, "REQUEST_ANSWER"

    return-object v0

    .line 1090
    :sswitch_6e
    const-string v0, "DIAL"

    return-object v0

    .line 1130
    :sswitch_6f
    const-string v0, "REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6f
        0x2 -> :sswitch_6e
        0x3 -> :sswitch_6d
        0x4 -> :sswitch_6c
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_6a
        0x7 -> :sswitch_69
        0x8 -> :sswitch_68
        0x9 -> :sswitch_67
        0xa -> :sswitch_66
        0xb -> :sswitch_65
        0xc -> :sswitch_64
        0xd -> :sswitch_63
        0xe -> :sswitch_62
        0xf -> :sswitch_61
        0x10 -> :sswitch_60
        0x11 -> :sswitch_5f
        0x12 -> :sswitch_5e
        0x13 -> :sswitch_5d
        0x14 -> :sswitch_5c
        0x15 -> :sswitch_5b
        0x16 -> :sswitch_5a
        0x17 -> :sswitch_59
        0x18 -> :sswitch_58
        0x19 -> :sswitch_57
        0x1a -> :sswitch_56
        0x1b -> :sswitch_55
        0x1c -> :sswitch_54
        0x1d -> :sswitch_53
        0x1e -> :sswitch_52
        0x1f -> :sswitch_51
        0x20 -> :sswitch_50
        0x21 -> :sswitch_4f
        0x22 -> :sswitch_4e
        0x25 -> :sswitch_4d
        0x26 -> :sswitch_4c
        0x27 -> :sswitch_4b
        0x28 -> :sswitch_4a
        0x29 -> :sswitch_49
        0x2a -> :sswitch_48
        0x2b -> :sswitch_47
        0x2c -> :sswitch_46
        0x2d -> :sswitch_45
        0x2e -> :sswitch_44
        0x30 -> :sswitch_43
        0x31 -> :sswitch_42
        0x32 -> :sswitch_41
        0x33 -> :sswitch_40
        0x34 -> :sswitch_3f
        0x35 -> :sswitch_3e
        0x36 -> :sswitch_3d
        0x37 -> :sswitch_3c
        0x38 -> :sswitch_3b
        0x39 -> :sswitch_3a
        0x3a -> :sswitch_39
        0x3b -> :sswitch_38
        0x3c -> :sswitch_37
        0x3d -> :sswitch_36
        0x3e -> :sswitch_35
        0x3f -> :sswitch_34
        0x40 -> :sswitch_33
        0x41 -> :sswitch_32
        0x42 -> :sswitch_31
        0x43 -> :sswitch_30
        0x44 -> :sswitch_2f
        0x45 -> :sswitch_2e
        0xc9 -> :sswitch_2d
        0xca -> :sswitch_2c
        0xcb -> :sswitch_2b
        0xcc -> :sswitch_2a
        0xcd -> :sswitch_29
        0xce -> :sswitch_28
        0xcf -> :sswitch_27
        0xd0 -> :sswitch_26
        0xd1 -> :sswitch_25
        0xd2 -> :sswitch_24
        0xd3 -> :sswitch_23
        0xd4 -> :sswitch_22
        0xd5 -> :sswitch_21
        0xd6 -> :sswitch_20
        0xd7 -> :sswitch_1f
        0xd8 -> :sswitch_1e
        0xd9 -> :sswitch_1d
        0xda -> :sswitch_1c
        0xdb -> :sswitch_1b
        0xdc -> :sswitch_1a
        0xdd -> :sswitch_19
        0xde -> :sswitch_18
        0xdf -> :sswitch_17
        0xe0 -> :sswitch_16
        0xe1 -> :sswitch_15
        0xe2 -> :sswitch_14
        0xe3 -> :sswitch_13
        0xe4 -> :sswitch_12
        0xe5 -> :sswitch_11
        0xe6 -> :sswitch_10
        0xe7 -> :sswitch_f
        0xe8 -> :sswitch_e
        0xe9 -> :sswitch_d
        0xea -> :sswitch_c
        0xeb -> :sswitch_b
        0xec -> :sswitch_a
        0xed -> :sswitch_9
        0xee -> :sswitch_8
        0xef -> :sswitch_7
        0xf0 -> :sswitch_6
        0xf1 -> :sswitch_5
        0xf2 -> :sswitch_4
        0xf3 -> :sswitch_3
        0xf4 -> :sswitch_2
        0xf5 -> :sswitch_1
        0xf6 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyServiceDown(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 399
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 400
    .local v2, "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceDown(I)V

    .line 401
    .end local v2    # "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    goto :goto_0

    .line 402
    :cond_0
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyServiceUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceUp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 391
    .local v2, "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceUp(I)V

    .line 392
    .end local v2    # "l":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;
    goto :goto_0

    .line 393
    :cond_0
    monitor-exit v0

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifySipDtmfInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "configCode"    # Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 761
    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 763
    :cond_0
    return-void
.end method

.method private notifyUssdInfo(Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 3
    .param p1, "info"    # Lorg/codeaurora/ims/UssdInfo;
    .param p2, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 754
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 755
    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 757
    :cond_0
    return-void
.end method

.method private queueRequest(Lorg/codeaurora/ims/IFRequest;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .line 912
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->acquireWakeLock()V

    .line 914
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 917
    monitor-exit v0

    .line 918
    return-void

    .line 917
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseWakeLockIfDone()V
    .locals 2

    .line 897
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 898
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-nez v1, :cond_0

    .line 900
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 902
    :cond_0
    monitor-exit v0

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeFromQueueAndSendResponse(I)V
    .locals 1
    .param p1, "token"    # I

    .line 767
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(II)V

    .line 768
    return-void
.end method

.method private removeFromQueueAndSendResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 784
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(IILjava/lang/Object;)V

    .line 785
    return-void
.end method

.method private removeFromQueueAndSendResponse(IILjava/lang/Object;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 788
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 790
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected solicited response or Invalid token id! token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    return-void

    .line 795
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 796
    return-void
.end method

.method private removeFromQueueAndSendResponse(ILjava/lang/Object;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 771
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(IILjava/lang/Object;)V

    .line 772
    return-void
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 976
    if-nez p2, :cond_0

    .line 977
    const-string v0, ""

    return-object v0

    .line 982
    :cond_0
    instance-of v0, p2, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_2

    .line 983
    move-object v0, p2

    check-cast v0, [I

    .line 984
    .local v0, "intArray":[I
    array-length v4, v0

    .line 985
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 986
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    .line 987
    const/4 v5, 0x0

    .line 988
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 989
    :goto_0
    if-ge v6, v4, :cond_1

    .line 990
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_0

    .line 993
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "s":Ljava/lang/String;
    goto/16 :goto_4

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_2
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 996
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 997
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 998
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 999
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    .line 1000
    const/4 v5, 0x0

    .line 1001
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    :goto_1
    if-ge v6, v4, :cond_3

    .line 1003
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_1

    .line 1006
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "s":Ljava/lang/String;
    goto :goto_4

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_4
    const/16 v0, 0xc9

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 1017
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_4

    .line 1010
    .end local v0    # "s":Ljava/lang/String;
    :cond_6
    :goto_2
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    .line 1011
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/DriverCallIms;

    .line 1013
    .local v3, "dc":Lorg/codeaurora/ims/DriverCallIms;
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .end local v3    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_3

    .line 1015
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "s":Ljava/lang/String;
    nop

    .line 1019
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_4
    return-object v0
.end method

.method private sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z
    .locals 1
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "msgIdString"    # Ljava/lang/String;

    .line 1388
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "msgIdString"    # Ljava/lang/String;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 1399
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    const/4 v0, 0x0

    return v0

    .line 1402
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRadio HAL is not available. Can\'t send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to QCRIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1404
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 1405
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1406
    return v0
.end method

.method private sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "error"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 808
    if-eqz p2, :cond_0

    .line 809
    invoke-virtual {p1, p2, p3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 810
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 811
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 812
    return-void

    .line 815
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 816
    invoke-direct {p0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 818
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 820
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 823
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 824
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 825
    return-void
.end method

.method private setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V
    .locals 17
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "cfReason"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "timeSeconds"    # I
    .param p10, "response"    # Landroid/os/Message;

    .line 2227
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallForwardInternal cfReason= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " serviceClass = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "number = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v15, p8

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "startHour = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "startMinute = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "endHour = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "endMin = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2231
    const/16 v16, 0x17

    .line 2232
    .local v16, "msgId":I
    const/16 v0, 0x17

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v8

    .line 2233
    .local v8, "msgIdString":Ljava/lang/String;
    move-object/from16 v7, p10

    invoke-static {v0, v7}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v6

    .line 2235
    .local v6, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v6, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2236
    return-void

    .line 2239
    :cond_0
    invoke-direct {v1, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2241
    :try_start_0
    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2242
    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, v6, Lorg/codeaurora/ims/IFRequest;->mSerial:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v13, v6

    .end local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    .local v13, "rr":Lorg/codeaurora/ims/IFRequest;
    move/from16 v6, p3

    move/from16 v7, p4

    move-object v14, v8

    .end local v8    # "msgIdString":Ljava/lang/String;
    .local v14, "msgIdString":Ljava/lang/String;
    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    :try_start_1
    invoke-interface/range {v2 .. v12}, Lorg/codeaurora/ims/IImsRadio;->setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2247
    goto :goto_1

    .line 2244
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v13    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v14    # "msgIdString":Ljava/lang/String;
    .restart local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v8    # "msgIdString":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v13, v6

    move-object v14, v8

    .line 2245
    .end local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v8    # "msgIdString":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v13    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v14    # "msgIdString":Ljava/lang/String;
    :goto_0
    iget v2, v13, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to IImsRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2248
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "inCbNumList"    # [Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 2410
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    .line 2412
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;I)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .line 1532
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;II)V

    .line 1533
    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "rttMode"    # I

    .line 1537
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;III)V

    .line 1538
    return-void
.end method

.method public acceptCall(Landroid/os/Message;III)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "ipPresentation"    # I
    .param p4, "rttMode"    # I

    .line 1542
    const/4 v0, 0x3

    .line 1543
    .local v0, "msgId":I
    const/4 v1, 0x3

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1545
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1547
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1548
    return-void

    .line 1551
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1553
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1554
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadio;->answer(IIII)V

    .line 1555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rtt mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and ipPresentation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to HAL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    goto :goto_0

    .line 1557
    :catch_0
    move-exception v3

    .line 1558
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1561
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public acknowledgeSms(IILandroid/os/Message;)V
    .locals 6
    .param p1, "messageRef"    # I
    .param p2, "result"    # I
    .param p3, "target"    # Landroid/os/Message;

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSms: messageRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1608
    const/16 v0, 0x3a

    .line 1609
    .local v0, "msgId":I
    const/16 v1, 0x3a

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1612
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 1613
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1614
    return-void

    .line 1618
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1619
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->acknowledgeSms(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    goto :goto_0

    .line 1620
    :catch_0
    move-exception v4

    .line 1621
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "request to ImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1623
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1624
    return-void
.end method

.method public acknowledgeSmsReport(IILandroid/os/Message;)V
    .locals 6
    .param p1, "messageRef"    # I
    .param p2, "result"    # I
    .param p3, "target"    # Landroid/os/Message;

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSmsReport: messageRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1629
    const/16 v0, 0x3b

    .line 1630
    .local v0, "msgId":I
    const/16 v1, 0x3b

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1633
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 1635
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1636
    return-void

    .line 1640
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1641
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->acknowledgeSmsReport(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1644
    goto :goto_0

    .line 1642
    :catch_0
    move-exception v4

    .line 1643
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to ImsRadioV12: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1645
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1646
    return-void
.end method

.method public addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addParticipant address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1368
    const/16 v0, 0x1c

    .line 1369
    .local v0, "msgId":I
    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1370
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1372
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1373
    return-void

    .line 1376
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1379
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1380
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadio;->addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    goto :goto_0

    .line 1381
    :catch_0
    move-exception v3

    .line 1382
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1385
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public cancelModifyCall(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1877
    const-string v0, "cancelModifyCall"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1878
    const/16 v0, 0x38

    .line 1879
    .local v0, "msgId":I
    const/16 v1, 0x38

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1880
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1882
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1883
    return-void

    .line 1886
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1888
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request to ImsRadio - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1891
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->cancelModifyCall(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    goto :goto_0

    .line 1892
    :catch_0
    move-exception v3

    .line 1893
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1896
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1511
    const-string v0, "Cancel pending USSD"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1512
    const/16 v0, 0x41

    .line 1513
    .local v0, "msgId":I
    const/16 v1, 0x41

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1514
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1516
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1517
    return-void

    .line 1520
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1522
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1523
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->cancelPendingUssd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    goto :goto_0

    .line 1524
    :catch_0
    move-exception v3

    .line 1525
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1528
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1961
    const/16 v0, 0xa

    .line 1962
    .local v0, "msgId":I
    const/16 v1, 0xa

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1963
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1965
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1966
    return-void

    .line 1969
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1971
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1972
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->conference(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1976
    goto :goto_0

    .line 1973
    :catch_0
    move-exception v3

    .line 1974
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1975
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1977
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deflect call to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1565
    const/16 v0, 0x20

    .line 1566
    .local v0, "msgId":I
    const/16 v1, 0x20

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1567
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1569
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1570
    return-void

    .line 1573
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1575
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1576
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->deflectCall(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    goto :goto_0

    .line 1577
    :catch_0
    move-exception v3

    .line 1578
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1581
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deregisterForImsSubConfigChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 422
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 423
    return-void
.end method

.method public deregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 676
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 677
    return-void
.end method

.method public deregisterForRttMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2715
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2716
    return-void
.end method

.method public deregisterForVoiceInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2723
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2724
    return-void
.end method

.method public dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "eInfo"    # Lorg/codeaurora/ims/EmergencyCallInfo;
    .param p3, "clirMode"    # I
    .param p4, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p5, "isEncrypted"    # Z
    .param p6, "result"    # Landroid/os/Message;

    .line 1412
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V

    .line 1413
    return-void
.end method

.method public dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V
    .locals 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "eInfo"    # Lorg/codeaurora/ims/EmergencyCallInfo;
    .param p3, "clirMode"    # I
    .param p4, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p5, "isEncrypted"    # Z
    .param p6, "ccInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p7, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;
    .param p8, "result"    # Landroid/os/Message;

    .line 1418
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dial Request - address= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "clirMode= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p3

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callDetails= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isEncrypted= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " redialInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, p7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1421
    const/4 v0, 0x2

    .line 1422
    .local v0, "msgId":I
    if-eqz p2, :cond_0

    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1423
    const/16 v0, 0x3e

    move v15, v0

    goto :goto_0

    .line 1424
    :cond_0
    if-eqz p6, :cond_1

    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1425
    const/16 v0, 0x3f

    move v15, v0

    goto :goto_0

    .line 1427
    :cond_1
    move v15, v0

    .end local v0    # "msgId":I
    .local v15, "msgId":I
    :goto_0
    invoke-static {v15}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v10

    .line 1428
    .local v10, "msgIdString":Ljava/lang/String;
    move-object/from16 v9, p8

    invoke-static {v15, v9}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v8

    .line 1430
    .local v8, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v8, v10}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1431
    return-void

    .line 1434
    :cond_2
    invoke-direct {v1, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1436
    :try_start_0
    invoke-virtual {v1, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " request to IImsRadio - token = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1438
    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, v8, Lorg/codeaurora/ims/IFRequest;->mSerial:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object v11, v8

    .end local v8    # "rr":Lorg/codeaurora/ims/IFRequest;
    .local v11, "rr":Lorg/codeaurora/ims/IFRequest;
    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object v12, v10

    .end local v10    # "msgIdString":Ljava/lang/String;
    .local v12, "msgIdString":Ljava/lang/String;
    move-object/from16 v10, p7

    :try_start_1
    invoke-interface/range {v2 .. v10}, Lorg/codeaurora/ims/IImsRadio;->dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1444
    goto :goto_2

    .line 1441
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v12    # "msgIdString":Ljava/lang/String;
    .restart local v8    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v10    # "msgIdString":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v11, v8

    move-object v12, v10

    .line 1442
    .end local v8    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v10    # "msgIdString":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v12    # "msgIdString":Ljava/lang/String;
    :goto_1
    iget v2, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to IImsRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1445
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 339
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRegistrants()V

    .line 340
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-nez v0, :cond_0

    .line 341
    return-void

    .line 343
    :cond_0
    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->dispose()V

    .line 344
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2321
    const-string v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2322
    const/16 v0, 0xb

    .line 2323
    .local v0, "msgId":I
    const/16 v1, 0xb

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2324
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2326
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2327
    return-void

    .line 2330
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2332
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2333
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    goto :goto_0

    .line 2334
    :catch_0
    move-exception v3

    .line 2335
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2338
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public exitScbm(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2341
    const-string v0, "exitScbm"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2342
    const/16 v0, 0x45

    .line 2343
    .local v0, "msgId":I
    const/16 v1, 0x45

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2344
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2346
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2347
    return-void

    .line 2350
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2351
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 2352
    return-void

    .line 2355
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2357
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2358
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->exitSmsCallBackMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2362
    goto :goto_0

    .line 2359
    :catch_0
    move-exception v3

    .line 2360
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2363
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 10
    .param p1, "srcCallId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "destCallId"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "explicitCallTransfer srcCallId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "destCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1983
    const/16 v0, 0xc

    .line 1984
    .local v0, "msgId":I
    const/16 v1, 0xc

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1985
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p5}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1987
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1988
    return-void

    .line 1991
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1993
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1994
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lorg/codeaurora/ims/IImsRadio;->explicitCallTransfer(IIILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    goto :goto_0

    .line 1996
    :catch_0
    move-exception v3

    .line 1997
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1998
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2702
    const-string v0, "explicitCallTransfer : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2703
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2115
    const-string v0, "getCLIR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2116
    const/16 v0, 0x14

    .line 2117
    .local v0, "msgId":I
    const/16 v1, 0x14

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2118
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2120
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2121
    return-void

    .line 2124
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2126
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2127
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getClir(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    goto :goto_0

    .line 2128
    :catch_0
    move-exception v3

    .line 2129
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetClir request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2132
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2436
    const-string v0, "getCOLR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2437
    const/16 v0, 0x21

    .line 2438
    .local v0, "msgId":I
    const/16 v1, 0x21

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2439
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2441
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2442
    return-void

    .line 2445
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2447
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2448
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getColr(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2452
    goto :goto_0

    .line 2449
    :catch_0
    move-exception v3

    .line 2450
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetColr request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2453
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2694
    const-string v0, "getCurrentCalls : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2695
    return-void
.end method

.method public getHandoverConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 2584
    const-string v0, "ImsSenderRxr"

    const-string v1, "getHandoverConfig : Not supported"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1817
    const/4 v0, 0x1

    .line 1818
    .local v0, "msgId":I
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1819
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1821
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1822
    return-void

    .line 1825
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1827
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1828
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getImsRegistrationState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1832
    goto :goto_0

    .line 1829
    :catch_0
    move-exception v3

    .line 1830
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1833
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getImsSubConfig(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2530
    const-string v0, "getImsSubConfig"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2531
    const/16 v0, 0x36

    .line 2532
    .local v0, "msgId":I
    const/16 v1, 0x36

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2533
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2535
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2536
    return-void

    .line 2539
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2541
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2542
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getImsSubConfig(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2546
    goto :goto_0

    .line 2543
    :catch_0
    move-exception v3

    .line 2544
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2547
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getIncomingSmsRegistrant()Lorg/codeaurora/telephony/utils/Registrant;
    .locals 1

    .line 689
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object v0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2686
    const-string v0, "getLastCallFailCause : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2687
    return-void
.end method

.method public getPacketCount(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2490
    const-string v0, "getPacketCount"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2491
    const/16 v0, 0x28

    .line 2492
    .local v0, "msgId":I
    const/16 v1, 0x28

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2493
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2495
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2496
    return-void

    .line 2499
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2501
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2502
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getRtpStatistics(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2506
    goto :goto_0

    .line 2503
    :catch_0
    move-exception v3

    .line 2504
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2507
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getPacketErrorCount(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2510
    const-string v0, "getPacketErrorCount"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2511
    const/16 v0, 0x29

    .line 2512
    .local v0, "msgId":I
    const/16 v1, 0x29

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2513
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2515
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2516
    return-void

    .line 2519
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2521
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2522
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getRtpErrorStatistics(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2526
    goto :goto_0

    .line 2523
    :catch_0
    move-exception v3

    .line 2524
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2527
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getSendSmsStatusReportRegistrant()Lorg/codeaurora/telephony/utils/Registrant;
    .locals 1

    .line 694
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object v0
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 3

    .line 1650
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to getSmsFormat. Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1654
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2379
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2380
    return-void
.end method

.method public getWifiCallingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2575
    const-string v0, "getWifiCallingPreference : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2576
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1679
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 1680
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2706
    const-string v0, "hangupForegroundResumeBackground : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2707
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2690
    const-string v0, "hangupWaitingOrBackground : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2691
    return-void
.end method

.method public hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V
    .locals 14
    .param p1, "connectionId"    # I
    .param p2, "userUri"    # Ljava/lang/String;
    .param p3, "confUri"    # Ljava/lang/String;
    .param p4, "mpty"    # Z
    .param p5, "failCause"    # I
    .param p6, "errorInfo"    # Ljava/lang/String;
    .param p7, "result"    # Landroid/os/Message;

    .line 1685
    move-object v1, p0

    const/4 v2, 0x4

    .line 1686
    .local v2, "msgId":I
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1687
    .local v3, "msgIdString":Ljava/lang/String;
    move-object/from16 v4, p7

    invoke-static {v0, v4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v5

    .line 1689
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    return-void

    .line 1693
    :cond_0
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1695
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1696
    iget-object v6, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-interface/range {v6 .. v13}, Lorg/codeaurora/ims/IImsRadio;->hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    goto :goto_0

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "ex":Ljava/lang/Exception;
    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "request to IImsRadio: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1702
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public hold(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1919
    const/16 v0, 0x25

    .line 1920
    .local v0, "msgId":I
    const/16 v1, 0x25

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1921
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1923
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1924
    return-void

    .line 1927
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1929
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1930
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request to ImsRadio - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1932
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->hold(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1936
    goto :goto_0

    .line 1933
    :catch_0
    move-exception v3

    .line 1934
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1935
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1937
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isCrsSupported()Z
    .locals 2

    .line 410
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 414
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isSmsSupported()Z
    .locals 2

    .line 406
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1318
    return-void
.end method

.method public logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1356
    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    .line 1330
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1331
    .local v0, "e":Ljava/lang/Exception;
    nop

    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    :catch_0
    move-exception v0

    .line 1333
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Unimplemented method. Stack trace: "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1336
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallConfirm callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1900
    const/16 v0, 0x12

    .line 1901
    .local v0, "msgId":I
    const/16 v1, 0x12

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1902
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1904
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1905
    return-void

    .line 1908
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1910
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1911
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    goto :goto_0

    .line 1912
    :catch_0
    move-exception v3

    .line 1913
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1916
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallInitiate callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1858
    const/16 v0, 0x11

    .line 1859
    .local v0, "msgId":I
    const/16 v1, 0x11

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1860
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1862
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1863
    return-void

    .line 1866
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1868
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1869
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1873
    goto :goto_0

    .line 1870
    :catch_0
    move-exception v3

    .line 1871
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1874
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2281
    const-string v0, "queryClip"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2282
    const/16 v0, 0x13

    .line 2283
    .local v0, "msgId":I
    const/16 v1, 0x13

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2284
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2286
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2287
    return-void

    .line 2290
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2292
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2293
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getClip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2297
    goto :goto_0

    .line 2294
    :catch_0
    move-exception v3

    .line 2295
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetClip request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2298
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2252
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;Z)V

    .line 2254
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;Z)V
    .locals 10
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;
    .param p5, "expectMore"    # Z

    .line 2258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForwardStatus cfReason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expectMore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2261
    const/16 v0, 0x16

    .line 2262
    .local v0, "msgId":I
    const/16 v1, 0x16

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2263
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2265
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2266
    return-void

    .line 2269
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2271
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2272
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lorg/codeaurora/ims/IImsRadio;->queryCallForwardStatus(IIILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2277
    goto :goto_0

    .line 2274
    :catch_0
    move-exception v3

    .line 2275
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2278
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 6
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallWaiting serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2156
    const/16 v0, 0x18

    .line 2157
    .local v0, "msgId":I
    const/16 v1, 0x18

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2159
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2161
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2162
    return-void

    .line 2165
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2167
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2168
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->getCallWaiting(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    goto :goto_0

    .line 2169
    :catch_0
    move-exception v3

    .line 2170
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2173
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 2368
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2369
    return-void
.end method

.method public queryIncomingCallBarring(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2199
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 2201
    return-void
.end method

.method public queryMultiSimVoiceCapability(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2550
    const-string v0, "queryMultiSimVoiceCapability"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2551
    const/16 v0, 0x44

    .line 2552
    .local v0, "msgId":I
    const/16 v1, 0x44

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2553
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2555
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2556
    return-void

    .line 2559
    :cond_0
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2560
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 2561
    return-void

    .line 2564
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2566
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2567
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->queryMultiSimVoiceCapability(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2571
    goto :goto_0

    .line 2568
    :catch_0
    move-exception v3

    .line 2569
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2572
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryServiceStatus(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1705
    const/16 v0, 0x1d

    .line 1706
    .local v0, "msgId":I
    const/16 v1, 0x1d

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1707
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1709
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1710
    return-void

    .line 1713
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1715
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1716
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->queryServiceStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1720
    goto :goto_0

    .line 1717
    :catch_0
    move-exception v3

    .line 1718
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1719
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Serivce status query request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1721
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2615
    const-string v0, "querySsacStatus"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2616
    const/16 v0, 0x31

    .line 2617
    .local v0, "msgId":I
    const/16 v1, 0x31

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2618
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2620
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2621
    return-void

    .line 2624
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2626
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2627
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->querySsacStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2631
    goto :goto_0

    .line 2628
    :catch_0
    move-exception v3

    .line 2629
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2633
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryVirtualLineInfo(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryVirtualLineInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2748
    const/16 v0, 0x3d

    .line 2749
    .local v0, "msgId":I
    const/16 v1, 0x3d

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2750
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2752
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2753
    return-void

    .line 2755
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2757
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2758
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2762
    goto :goto_0

    .line 2759
    :catch_0
    move-exception v4

    .line 2760
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio V1.4: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2763
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryVoltePref(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2659
    const-string v0, "queryVoltePref"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2660
    const/16 v0, 0x33

    .line 2661
    .local v0, "msgId":I
    const/16 v1, 0x33

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2662
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2664
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2665
    return-void

    .line 2668
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2670
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2671
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->queryVoltePref(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2675
    goto :goto_0

    .line 2672
    :catch_0
    move-exception v3

    .line 2673
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2677
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2593
    const-string v0, "queryVopsStatus"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2594
    const/16 v0, 0x30

    .line 2595
    .local v0, "msgId":I
    const/16 v1, 0x30

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2596
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2598
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2599
    return-void

    .line 2602
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2604
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2605
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->queryVopsStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2609
    goto :goto_0

    .line 2606
    :catch_0
    move-exception v3

    .line 2607
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2611
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public registerForCallAutoRejection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 589
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 590
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 591
    return-void
.end method

.method public registerForCiwlanNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 681
    return-void
.end method

.method public registerForConferenceCallStateCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 636
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 637
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 638
    return-void
.end method

.method public registerForGeoLocationDataStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 618
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 619
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 620
    return-void
.end method

.method public registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 491
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 492
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 493
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 455
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 456
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 457
    return-void
.end method

.method public registerForImsSubConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 419
    return-void
.end method

.method public registerForIncomingDtmfStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 654
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 655
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 656
    return-void
.end method

.method public registerForIncomingDtmfStop(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 663
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 664
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 665
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1023
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 1024
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 1025
    return-void
.end method

.method public registerForMultiIdentityInfoPendingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 605
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 606
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 607
    return-void
.end method

.method public registerForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 599
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 600
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 601
    return-void
.end method

.method public registerForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 672
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 673
    return-void
.end method

.method public registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1032
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 1033
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 1034
    return-void
.end method

.method public registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 509
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 510
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 511
    return-void
.end method

.method public registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 464
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 465
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 466
    return-void
.end method

.method public registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 518
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 519
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 520
    return-void
.end method

.method public registerForRttMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2711
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2712
    return-void
.end method

.method public registerForSipDtmfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 558
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 559
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 560
    return-void
.end method

.method public registerForSmsCallbackModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 645
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 646
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 647
    return-void
.end method

.method public registerForSrvDomainChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 627
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 628
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 629
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 473
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 474
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 475
    return-void
.end method

.method public registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 426
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 427
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 428
    return-void
.end method

.method public registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 538
    new-instance v0, Lorg/codeaurora/telephony/utils/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 539
    return-void
.end method

.method public registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 482
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 483
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 484
    return-void
.end method

.method public registerForUssdInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 549
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 550
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 551
    return-void
.end method

.method public registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 500
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 501
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 502
    return-void
.end method

.method public registerForVoiceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2719
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2720
    return-void
.end method

.method public registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 435
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 436
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 437
    return-void
.end method

.method public registerForWfcRoamingModeFeatureSupport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 444
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 445
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 446
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    .line 447
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 446
    invoke-virtual {v1, v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 448
    return-void
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 301
    if-eqz p1, :cond_2

    .line 304
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/codeaurora/ims/IImsRadio;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceUp(I)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;->onServiceDown(I)V

    goto :goto_0

    .line 314
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    :goto_0
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 302
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2681
    const-string v0, "rejectCall : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2682
    return-void
.end method

.method public requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V
    .locals 6
    .param p2, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 2767
    .local p1, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiIdentityLines = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2768
    const/16 v0, 0x3c

    .line 2769
    .local v0, "msgId":I
    const/16 v1, 0x3c

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2770
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2772
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2773
    return-void

    .line 2776
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2778
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2779
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->registerMultiIdentityLines(ILjava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2783
    goto :goto_0

    .line 2780
    :catch_0
    move-exception v4

    .line 2781
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2782
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2784
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public resume(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1940
    const/16 v0, 0x26

    .line 1941
    .local v0, "msgId":I
    const/16 v1, 0x26

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1942
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1944
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1945
    return-void

    .line 1948
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1950
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request to ImsRadio - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1953
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->resume(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    goto :goto_0

    .line 1954
    :catch_0
    move-exception v3

    .line 1955
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1956
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1958
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V
    .locals 15
    .param p1, "requestType"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .param p7, "result"    # Landroid/os/Message;

    .line 2004
    move-object v1, p0

    move/from16 v2, p1

    invoke-static/range {p1 .. p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 2005
    .local v3, "msgIdString":Ljava/lang/String;
    move-object/from16 v4, p7

    invoke-static {v2, v4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v5

    .line 2007
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2008
    return-void

    .line 2011
    :cond_0
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2013
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " request to ImsRadio: token "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " request type: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2016
    const/16 v0, 0x2d

    if-ne v2, v0, :cond_1

    .line 2017
    iget-object v6, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-interface/range {v6 .. v12}, Lorg/codeaurora/ims/IImsRadio;->getConfig(IIZILjava/lang/String;I)V

    goto :goto_0

    .line 2019
    :cond_1
    iget-object v8, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v9, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-interface/range {v8 .. v14}, Lorg/codeaurora/ims/IImsRadio;->setConfig(IIZILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2024
    :goto_0
    goto :goto_1

    .line 2021
    :catch_0
    move-exception v0

    .line 2022
    .local v0, "ex":Ljava/lang/Exception;
    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2023
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " request to IImsRadio: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2025
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendDtmf(ICLandroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "c"    # C
    .param p3, "result"    # Landroid/os/Message;

    .line 2028
    const/16 v0, 0xd

    .line 2029
    .local v0, "msgId":I
    const/16 v1, 0xd

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2030
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2032
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2033
    return-void

    .line 2036
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2038
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2039
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->sendDtmf(IIC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2043
    goto :goto_0

    .line 2040
    :catch_0
    move-exception v3

    .line 2041
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2044
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public declared-synchronized sendGeolocationInfo(DDLandroid/location/Address;Landroid/os/Message;)V
    .locals 16
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "address"    # Landroid/location/Address;
    .param p6, "result"    # Landroid/os/Message;

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1659
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGeolocationInfo: lat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v9, p1

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v11, p3

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " address: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v13, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1660
    const/16 v14, 0x2e

    .line 1661
    .local v14, "msgId":I
    const/16 v0, 0x2e

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 1662
    .local v15, "msgIdString":Ljava/lang/String;
    move-object/from16 v8, p6

    invoke-static {v0, v8}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    move-object v6, v0

    .line 1663
    .local v6, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v6, v15}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1664
    monitor-exit p0

    return-void

    .line 1666
    :cond_0
    :try_start_1
    invoke-direct {v1, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1669
    :try_start_2
    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1670
    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, v6, Lorg/codeaurora/ims/IFRequest;->mSerial:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v4, p1

    move-object v9, v6

    .end local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    .local v9, "rr":Lorg/codeaurora/ims/IFRequest;
    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    :try_start_3
    invoke-interface/range {v2 .. v8}, Lorg/codeaurora/ims/IImsRadio;->sendGeolocationInfo(IDDLandroid/location/Address;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1674
    goto :goto_1

    .line 1671
    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v9    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    :catch_1
    move-exception v0

    move-object v9, v6

    .line 1672
    .end local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v9    # "rr":Lorg/codeaurora/ims/IFRequest;
    :goto_0
    :try_start_4
    iget v2, v9, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to IImsRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1675
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 1658
    .end local v9    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v14    # "msgId":I
    .end local v15    # "msgIdString":Ljava/lang/String;
    .end local p1    # "lat":D
    .end local p3    # "lon":D
    .end local p5    # "address":Landroid/location/Address;
    .end local p6    # "result":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 6
    .param p1, "imsRegState"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1836
    const/16 v0, 0x1a

    .line 1837
    .local v0, "msgId":I
    const/16 v1, 0x1a

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1838
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1840
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1841
    return-void

    .line 1844
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1846
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request to ImsRadio - token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RegState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->requestRegistrationChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    goto :goto_0

    .line 1850
    :catch_0
    move-exception v3

    .line 1851
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1854
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: sendRttMessage msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2728
    const/16 v0, 0x37

    .line 2729
    .local v0, "msgId":I
    const/16 v1, 0x37

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2730
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2732
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2733
    return-void

    .line 2736
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2738
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2739
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->sendRttMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2743
    goto :goto_0

    .line 2740
    :catch_0
    move-exception v4

    .line 2741
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2744
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendSipDtmf(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "requestCode"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Sip Dtmf Request - requestCode- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1484
    const/16 v0, 0x42

    .line 1485
    .local v0, "msgId":I
    const/16 v1, 0x42

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1486
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1487
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1488
    return-void

    .line 1491
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1492
    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1493
    return-void

    .line 1496
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1498
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1499
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    goto :goto_0

    .line 1500
    :catch_0
    move-exception v3

    .line 1501
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1504
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendSms(ILjava/lang/String;Ljava/lang/String;Z[BLandroid/os/Message;)V
    .locals 15
    .param p1, "messageRef"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "smsc"    # Ljava/lang/String;
    .param p4, "isRetry"    # Z
    .param p5, "pdu"    # [B
    .param p6, "result"    # Landroid/os/Message;

    .line 1585
    move-object v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms over IImsRadio with format:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1587
    const/16 v10, 0x39

    .line 1588
    .local v10, "msgId":I
    const/16 v11, 0x39

    invoke-static {v11}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v12

    .line 1589
    .local v12, "msgIdString":Ljava/lang/String;
    move-object/from16 v13, p6

    invoke-static {v11, v13}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v14

    .line 1591
    .local v14, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v14, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    return-void

    .line 1595
    :cond_0
    invoke-direct {p0, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1597
    :try_start_0
    invoke-virtual {p0, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1598
    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v3, v14, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Lorg/codeaurora/ims/IImsRadio;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    goto :goto_0

    .line 1599
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "ex":Ljava/lang/Exception;
    iget v2, v14, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to ImsRadioV12: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1603
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendUssd(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USSD Request - address- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1454
    const/16 v0, 0x40

    .line 1455
    .local v0, "msgId":I
    const/16 v1, 0x40

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1456
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1458
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1459
    return-void

    .line 1462
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1463
    const/16 v3, 0x2f

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1464
    return-void

    .line 1467
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1469
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1470
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->sendUssd(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    goto :goto_0

    .line 1471
    :catch_0
    move-exception v3

    .line 1472
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1475
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCLIR clirmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2136
    const/16 v0, 0x15

    .line 2137
    .local v0, "msgId":I
    const/16 v1, 0x15

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2138
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2140
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2141
    return-void

    .line 2144
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2146
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2147
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->setClir(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2151
    goto :goto_0

    .line 2148
    :catch_0
    move-exception v4

    .line 2149
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2152
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "presentationValue"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCOLR presentationValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2457
    const/16 v0, 0x22

    .line 2458
    .local v0, "msgId":I
    const/16 v1, 0x22

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2459
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2461
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2462
    return-void

    .line 2465
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2467
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2468
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->setColr(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2472
    goto :goto_0

    .line 2469
    :catch_0
    move-exception v4

    .line 2470
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2473
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 16
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallForward cfReason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p5

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2213
    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V

    .line 2215
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "cfReason"    # I
    .param p7, "serviceClass"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "response"    # Landroid/os/Message;

    .line 2220
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->setCallForwardInternal(IIIIIIILjava/lang/String;ILandroid/os/Message;)V

    .line 2222
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallWaiting enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2179
    const/16 v0, 0x19

    .line 2180
    .local v0, "msgId":I
    const/16 v1, 0x19

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2182
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2184
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2185
    return-void

    .line 2188
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2190
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2191
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->setCallWaiting(IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    goto :goto_0

    .line 2192
    :catch_0
    move-exception v3

    .line 2193
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2196
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2374
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2375
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2376
    return-void
.end method

.method public setHandoverConfig(ILandroid/os/Message;)V
    .locals 2
    .param p1, "hoConfig"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2588
    const-string v0, "ImsSenderRxr"

    const-string v1, "setHandoverConfig : Not supported"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    return-void
.end method

.method public setIncomingCallBarring(ILjava/lang/String;[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "operation"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2205
    invoke-static {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 2206
    return-void
.end method

.method public setMediaConfigurationRequest(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/os/Message;)V
    .locals 6
    .param p1, "screenSize"    # Landroid/graphics/Point;
    .param p2, "avcSize"    # Landroid/graphics/Point;
    .param p3, "hevcSize"    # Landroid/graphics/Point;
    .param p4, "result"    # Landroid/os/Message;

    .line 2788
    const/16 v0, 0x43

    .line 2789
    .local v0, "msgId":I
    const/16 v1, 0x43

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2790
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2791
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2792
    return-void

    .line 2794
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2796
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2797
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadio;->setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2801
    goto :goto_0

    .line 2798
    :catch_0
    move-exception v4

    .line 2799
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2800
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2803
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setOnImsSmsStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 578
    new-instance v0, Lorg/codeaurora/telephony/utils/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 579
    return-void
.end method

.method public setOnIncomingImsSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 567
    new-instance v0, Lorg/codeaurora/telephony/utils/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 568
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 527
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 528
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1361
    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 1362
    return-void
.end method

.method public setServiceStatus(Landroid/os/Message;Ljava/util/ArrayList;I)V
    .locals 16
    .param p1, "result"    # Landroid/os/Message;
    .param p3, "restrictCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)V"
        }
    .end annotation

    .line 1725
    .local p2, "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const/16 v5, 0x1e

    .line 1726
    .local v5, "msgId":I
    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1728
    .local v6, "msgIdString":Ljava/lang/String;
    iget-object v7, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v7

    const-string v8, "SetServiceStatus request to IImsRadio: Exception: "

    const-string v9, " to ImsRadio: token -"

    if-eqz v7, :cond_1

    .line 1729
    invoke-static {v0, v2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v7

    .line 1730
    .local v7, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v7, v6, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    return-void

    .line 1738
    :cond_0
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v10

    .line 1740
    .local v10, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v10, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1742
    iput-object v3, v10, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1744
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 1745
    .local v11, "newMsg":Landroid/os/Message;
    iput-object v10, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1751
    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1752
    invoke-direct {v1, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1753
    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " RestrictCause:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1757
    :try_start_0
    iget-object v0, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v9, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v9, v3, v4}, Lorg/codeaurora/ims/IImsRadio;->setServiceStatus(ILjava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    goto :goto_0

    .line 1758
    :catch_0
    move-exception v0

    .line 1760
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v7, v2}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1761
    iget v9, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v9, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(ILjava/lang/Object;)V

    .line 1762
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1764
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v7    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v10    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v11    # "newMsg":Landroid/os/Message;
    :goto_0
    goto/16 :goto_2

    .line 1765
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codeaurora/ims/CapabilityStatus;

    .line 1766
    .local v10, "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    invoke-static {v0, v2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v11

    .line 1767
    .local v11, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v11, v6, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1768
    return-void

    .line 1776
    :cond_2
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v12

    .line 1778
    .local v12, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v13

    iput-object v13, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1781
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    .local v13, "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    iput-object v13, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1787
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 1788
    .local v14, "newMsg":Landroid/os/Message;
    iput-object v12, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1794
    invoke-virtual {v11, v14}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1795
    invoke-direct {v1, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1796
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SetServiceStatus capabilityStatus: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1797
    invoke-virtual {v1, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1801
    :try_start_1
    iget-object v0, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v15, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v15, v13, v4}, Lorg/codeaurora/ims/IImsRadio;->setServiceStatus(ILjava/util/List;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1811
    nop

    .line 1812
    .end local v10    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .end local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v12    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v13    # "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    .end local v14    # "newMsg":Landroid/os/Message;
    const/16 v0, 0x1e

    goto :goto_1

    .line 1803
    .restart local v10    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .restart local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v12    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local v13    # "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    .restart local v14    # "newMsg":Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 1805
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v11, v2}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1806
    iget v7, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v7, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(ILjava/lang/Object;)V

    .line 1807
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1810
    return-void

    .line 1814
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v10    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .end local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v12    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v13    # "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    .end local v14    # "newMsg":Landroid/os/Message;
    :cond_3
    :goto_2
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuppServiceNotifications enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2095
    const/16 v0, 0x1b

    .line 2096
    .local v0, "msgId":I
    const/16 v1, 0x1b

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2098
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2100
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2101
    return-void

    .line 2104
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2106
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2107
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->setSuppServiceNotification(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    goto :goto_0

    .line 2108
    :catch_0
    move-exception v3

    .line 2109
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2112
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 2383
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2384
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2385
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 6
    .param p1, "uiTtyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUiTTYMode uittyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2302
    const/16 v0, 0x27

    .line 2303
    .local v0, "msgId":I
    const/16 v1, 0x27

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2304
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2306
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2307
    return-void

    .line 2310
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2312
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2313
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->setUiTtyMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2317
    goto :goto_0

    .line 2314
    :catch_0
    move-exception v4

    .line 2315
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2318
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setWifiCallingPreference(IILandroid/os/Message;)V
    .locals 1
    .param p1, "wifiCallingStatus"    # I
    .param p2, "wifiCallingPreference"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2580
    const-string v0, "setWifiCallingPreference : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2581
    return-void
.end method

.method public startDtmf(ICLandroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "c"    # C
    .param p3, "result"    # Landroid/os/Message;

    .line 2047
    const/16 v0, 0xe

    .line 2048
    .local v0, "msgId":I
    const/16 v1, 0xe

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2049
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2051
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2052
    return-void

    .line 2055
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2057
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2058
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->startDtmf(IIC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    goto :goto_0

    .line 2059
    :catch_0
    move-exception v4

    .line 2060
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2063
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopDtmf(ILandroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2066
    const/16 v0, 0xf

    .line 2067
    .local v0, "msgId":I
    const/16 v1, 0xf

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2068
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2070
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2071
    return-void

    .line 2074
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2076
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2077
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->stopDtmf(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2081
    goto :goto_0

    .line 2078
    :catch_0
    move-exception v4

    .line 2079
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2080
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "to IImsRadio: Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2082
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public suppSvcStatus(IILandroid/os/Message;)V
    .locals 8
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppSvcStatus operationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2397
    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2398
    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClassValue"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppSvcStatus operationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serviceClassValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2391
    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2392
    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClassValue"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 2402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppSvcStatus operationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serviceClassValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2404
    invoke-direct/range {p0 .. p6}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2406
    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V
    .locals 14
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "inCbNumList"    # [Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "response"    # Landroid/os/Message;
    .param p7, "expectMore"    # Z

    .line 2416
    move-object v1, p0

    const/16 v2, 0x1f

    .line 2417
    .local v2, "msgId":I
    const/16 v0, 0x1f

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 2418
    .local v3, "msgIdString":Ljava/lang/String;
    move-object/from16 v4, p6

    invoke-static {v0, v4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v5

    .line 2420
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2421
    return-void

    .line 2424
    :cond_0
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2426
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2427
    iget-object v6, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-interface/range {v6 .. v13}, Lorg/codeaurora/ims/IImsRadio;->suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    goto :goto_0

    .line 2429
    :catch_0
    move-exception v0

    .line 2430
    .local v0, "ex":Ljava/lang/Exception;
    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "to IImsRadio: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2433
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2698
    const-string v0, "switchWaitingOrHoldingAndActive : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2699
    return-void
.end method

.method public unRegisterForWfcRoamingModeFeatureSupport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 451
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 452
    return-void
.end method

.method public unSetImsSmsStatusReport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 582
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 586
    :cond_0
    return-void
.end method

.method public unSetIncomingImsSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 571
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 575
    :cond_0
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 531
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 535
    :cond_0
    return-void
.end method

.method public unregisterForCallAutoRejection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 594
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 595
    return-void
.end method

.method public unregisterForCiwlanNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 684
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 685
    return-void
.end method

.method public unregisterForConferenceCallStateCompleted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 641
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 642
    return-void
.end method

.method public unregisterForGeoLocationDataStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 623
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 624
    return-void
.end method

.method public unregisterForGeolocationRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 496
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 497
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 460
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 461
    return-void
.end method

.method public unregisterForIncomingDtmfStart(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 659
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 660
    return-void
.end method

.method public unregisterForIncomingDtmfStop(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 668
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 669
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1028
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1029
    return-void
.end method

.method public unregisterForMultiIdentityPendingInfoRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 614
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 615
    return-void
.end method

.method public unregisterForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 610
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 611
    return-void
.end method

.method public unregisterForMwi(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1037
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1038
    return-void
.end method

.method public unregisterForParticipantStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 514
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 515
    return-void
.end method

.method public unregisterForRefreshConfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 469
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 470
    return-void
.end method

.method public unregisterForRegistrationBlockStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 523
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 524
    return-void
.end method

.method public unregisterForSipDtmfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 563
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 564
    return-void
.end method

.method public unregisterForSmsCallbackModeChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 650
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 651
    return-void
.end method

.method public unregisterForSrvDomainChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 632
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 633
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 478
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 479
    return-void
.end method

.method public unregisterForSsacStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 431
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 432
    return-void
.end method

.method public unregisterForSuppServiceIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 542
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 546
    :cond_0
    return-void
.end method

.method public unregisterForTtyStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 487
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 488
    return-void
.end method

.method public unregisterForUssdInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 554
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 555
    return-void
.end method

.method public unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 505
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 506
    return-void
.end method

.method public unregisterForVopsStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 440
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 441
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;

    .line 326
    if-eqz p1, :cond_1

    .line 329
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    :goto_0
    monitor-exit v0

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1340
    return-void
.end method

.method public unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1344
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1348
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1352
    return-void
.end method

.method public updateVoltePref(ILandroid/os/Message;)V
    .locals 6
    .param p1, "preference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2637
    const-string v0, "updateVoltePref"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2638
    const/16 v0, 0x32

    .line 2639
    .local v0, "msgId":I
    const/16 v1, 0x32

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2640
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2642
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2643
    return-void

    .line 2646
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2648
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2649
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->updateVoltePref(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2653
    goto :goto_0

    .line 2650
    :catch_0
    move-exception v3

    .line 2651
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "request to IImsRadio: Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2655
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
