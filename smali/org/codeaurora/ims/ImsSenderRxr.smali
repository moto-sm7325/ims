.class public Lorg/codeaurora/ims/ImsSenderRxr;
.super Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;,
        Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;
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

.field private mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field private mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field private mIsUnsolCallListPresent:Z

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

.field private mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

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

.method static bridge synthetic -$$Nest$fgetmSrtpEncryptionUpdateRegistrants(Lorg/codeaurora/ims/ImsSenderRxr;)Lorg/codeaurora/telephony/utils/RegistrantList;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

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

    .line 247
    const-string v0, "imsradio1"

    const-string v1, "imsradio2"

    const-string v2, "imsradio0"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 807
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;-><init>(Landroid/content/Context;)V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 235
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    .line 241
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 288
    new-instance v1, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    .line 289
    new-instance v1, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    .line 809
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    .line 810
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->initNotifyRegistrants()V

    .line 812
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 813
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "ImsSenderRxr"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 814
    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 815
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object v2

    .line 816
    const v3, 0xea60

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    .line 817
    new-instance v2, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    .line 818
    iput v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 821
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsResponse:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioResponse;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsIndication:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioIndication;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v2, v3, p1}, Lorg/codeaurora/ims/ImsRadioHalFactory;->newImsRadioHal(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;ILandroid/content/Context;)Lorg/codeaurora/ims/IImsRadio;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    .line 823
    return-void
.end method

.method private acquireWakeLock()V
    .locals 5

    .line 870
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 871
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 873
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->removeMessages(I)V

    .line 874
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 875
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHandler:Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;

    iget v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 876
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 877
    return-void

    .line 876
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearRegistrants()V
    .locals 1

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetIncomingImsSms(Landroid/os/Handler;)V

    .line 302
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetImsSmsStatusReport(Landroid/os/Handler;)V

    .line 303
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 304
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSuppServiceIndication(Landroid/os/Handler;)V

    .line 305
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 306
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 307
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 308
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 309
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 310
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 311
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 312
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 313
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 314
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 315
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 316
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 317
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 318
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 319
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 320
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 321
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 322
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 323
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 324
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 325
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 326
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 327
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 328
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 329
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 330
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 331
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 332
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 333
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 334
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 335
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 336
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 337
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 338
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->clear()V

    .line 339
    return-void
.end method

.method private clearRequestsList(IZ)V
    .locals 7
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 911
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 912
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 913
    .local v1, "count":I
    if-eqz p2, :cond_0

    .line 914
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

    .line 917
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 918
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/IFRequest;

    .line 919
    .local v4, "rr":Lorg/codeaurora/ims/IFRequest;
    if-eqz p2, :cond_1

    .line 920
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

    .line 921
    invoke-static {v6}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 920
    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    :cond_1
    invoke-virtual {v4, p1, v3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 924
    invoke-virtual {v4}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 926
    .end local v2    # "i":I
    .end local v4    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 927
    const/4 v2, 0x0

    iput v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 928
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 929
    .end local v1    # "count":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    if-eqz v0, :cond_3

    .line 933
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIsUnsolCallListPresent:Z

    .line 934
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    new-instance v2, Ljava/lang/RuntimeException;

    .line 936
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->errorIdToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3, v3, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 935
    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 938
    :cond_3
    return-void

    .line 929
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

    .line 2074
    const-string v0, "disableSrvStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2075
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 2076
    new-instance v0, Lorg/codeaurora/ims/ImsRilException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    .line 2077
    .local v0, "ex":Lorg/codeaurora/ims/ImsRilException;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v3, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-direct {v3, v2, v2, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2078
    invoke-virtual {v1, v3}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 2080
    .end local v0    # "ex":Lorg/codeaurora/ims/ImsRilException;
    :cond_0
    return-void
.end method

.method static errorIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 1025
    sparse-switch p0, :sswitch_data_0

    .line 1063
    const-string v0, "E_UNKNOWN"

    return-object v0

    .line 1061
    :sswitch_0
    const-string v0, "E_CF_SERVICE_NOT_REGISTERED"

    return-object v0

    .line 1059
    :sswitch_1
    const-string v0, "E_SEND_SIP_DTMF_FAILED"

    return-object v0

    .line 1057
    :sswitch_2
    const-string v0, "E_USSD_CS_FALLBACK"

    return-object v0

    .line 1055
    :sswitch_3
    const-string v0, "E_SS_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 1053
    :sswitch_4
    const-string v0, "E_SS_MODIFIED_TO_SS"

    return-object v0

    .line 1051
    :sswitch_5
    const-string v0, "E_SS_MODIFIED_TO_USSD"

    return-object v0

    .line 1049
    :sswitch_6
    const-string v0, "E_SS_MODIFIED_TO_DIAL"

    return-object v0

    .line 1047
    :sswitch_7
    const-string v0, "E_FDN_CHECK_FAILURE"

    return-object v0

    .line 1045
    :sswitch_8
    const-string v0, "E_NETWORK_NOT_SUPPORTED"

    return-object v0

    .line 1043
    :sswitch_9
    const-string v0, "E_REJECTED_BY_REMOTE"

    return-object v0

    .line 1041
    :sswitch_a
    const-string v0, "E_INVALID_PARAMETER"

    return-object v0

    .line 1039
    :sswitch_b
    const-string v0, "E_UNUSED"

    return-object v0

    .line 1037
    :sswitch_c
    const-string v0, "E_CANCELLED"

    return-object v0

    .line 1035
    :sswitch_d
    const-string v0, "E_REQUEST_NOT_SUPPORTED"

    return-object v0

    .line 1033
    :sswitch_e
    const-string v0, "E_PASSWORD_INCORRECT"

    return-object v0

    .line 1031
    :sswitch_f
    const-string v0, "E_GENERIC_FAILURE"

    return-object v0

    .line 1029
    :sswitch_10
    const-string v0, "E_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 1027
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

    .line 2465
    if-eqz p0, :cond_2

    .line 2469
    const-string v0, "CLIP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2470
    const/4 v0, 0x1

    return v0

    .line 2472
    :cond_0
    const-string v0, "COLP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2473
    const/4 v0, 0x2

    return v0

    .line 2475
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 2466
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid supplementary service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;
    .locals 5
    .param p1, "serial"    # I

    .line 941
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 942
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 943
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/IFRequest;

    .line 945
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    iget v4, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    if-ne v4, p1, :cond_1

    .line 946
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 947
    iget v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-lez v4, :cond_0

    .line 948
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 949
    :cond_0
    monitor-exit v0

    return-object v3

    .line 942
    .end local v3    # "rr":Lorg/codeaurora/ims/IFRequest;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 952
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    monitor-exit v0

    .line 954
    const/4 v0, 0x0

    return-object v0

    .line 952
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initNotifyRegistrants()V
    .locals 2

    .line 826
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 827
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 828
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 829
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 830
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRadioStateRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 831
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 832
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 833
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 834
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 835
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 836
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 837
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 838
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 839
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 840
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 841
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttModifyRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 842
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 843
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 844
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 845
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 846
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 847
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 848
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 849
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 850
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 851
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 852
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 853
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 854
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 855
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 856
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 857
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 858
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 859
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 860
    return-void
.end method

.method static msgIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 1069
    sparse-switch p0, :sswitch_data_0

    .line 1301
    const-string v0, "<unknown message>"

    return-object v0

    .line 1299
    :sswitch_0
    const-string v0, "UNSOL_SRTP_ENCRYPTION_UPDATE"

    return-object v0

    .line 1297
    :sswitch_1
    const-string v0, "UNSOL_C_IWLAN_NOTIFICATION"

    return-object v0

    .line 1293
    :sswitch_2
    const-string v0, "UNSOL_INCOMING_CALL_AUTO_REJECTED"

    return-object v0

    .line 1295
    :sswitch_3
    const-string v0, "UNSOL_PRE_ALERTING_CALL_INFO_AVAILABLE"

    return-object v0

    .line 1291
    :sswitch_4
    const-string v0, "UNSOL_MULTI_SIM_VOICE_CAPABILITY_CHANGED"

    return-object v0

    .line 1289
    :sswitch_5
    const-string v0, "UNSOL_INCOMING_DTMF_STOP"

    return-object v0

    .line 1287
    :sswitch_6
    const-string v0, "UNSOL_INCOMING_DTMF_START"

    return-object v0

    .line 1285
    :sswitch_7
    const-string v0, "UNSOL_SCBM_UPDATE_IND"

    return-object v0

    .line 1283
    :sswitch_8
    const-string v0, "UNSOL_CONFERENCE_CALL_STATE_COMPLETED"

    return-object v0

    .line 1281
    :sswitch_9
    const-string v0, "UNSOL_SERVICE_DOMAIN_CHANGED"

    return-object v0

    .line 1279
    :sswitch_a
    const-string v0, "UNSOL_SIP_DTMF_RECEIVED"

    return-object v0

    .line 1277
    :sswitch_b
    const-string v0, "UNSOL_USSD_RECEIVED"

    return-object v0

    .line 1275
    :sswitch_c
    const-string v0, "UNSOL_RETRIEVE_GEO_LOCATION_DATA_STATUS"

    return-object v0

    .line 1273
    :sswitch_d
    const-string v0, "UNSOL_CALL_COMPOSER_INFO_AVAILABLE_IND"

    return-object v0

    .line 1271
    :sswitch_e
    const-string v0, "UNSOL_AUTO_CALL_COMPOSER_CALL_REJECTION_IND"

    return-object v0

    .line 1269
    :sswitch_f
    const-string v0, "UNSOL_USSD_FAILED"

    return-object v0

    .line 1267
    :sswitch_10
    const-string v0, "UNSOL_MODEM_SUPPORTS_WFC_ROAMING_MODE"

    return-object v0

    .line 1265
    :sswitch_11
    const-string v0, "UNSOL_MULTI_IDENTITY_INFO_PENDING"

    return-object v0

    .line 1263
    :sswitch_12
    const-string v0, "UNSOL_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE"

    return-object v0

    .line 1261
    :sswitch_13
    const-string v0, "UNSOL_VOICE_INFO"

    return-object v0

    .line 1259
    :sswitch_14
    const-string v0, "UNSOL_AUTO_CALL_REJECTION_IND"

    return-object v0

    .line 1257
    :sswitch_15
    const-string v0, "UNSOL_INCOMING_IMS_SMS"

    return-object v0

    .line 1255
    :sswitch_16
    const-string v0, "UNSOL_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 1253
    :sswitch_17
    const-string v0, "UNSOL_ON_SS"

    return-object v0

    .line 1251
    :sswitch_18
    const-string v0, "UNSOL_RESPONSE_RTT_MSG_RECEIVED"

    return-object v0

    .line 1249
    :sswitch_19
    const-string v0, "UNSOL_RESPONSE_REGISTRATION_BLOCK_STATUS"

    return-object v0

    .line 1247
    :sswitch_1a
    const-string v0, "UNSOL_IMS_SUB_CONFIG_CHANGED"

    return-object v0

    .line 1245
    :sswitch_1b
    const-string v0, "UNSOL_PARTICIPANT_STATUS_INFO"

    return-object v0

    .line 1243
    :sswitch_1c
    const-string v0, "UNSOL_SSAC_CHANGED"

    return-object v0

    .line 1241
    :sswitch_1d
    const-string v0, "UNSOL_VOPS_CHANGED"

    return-object v0

    .line 1239
    :sswitch_1e
    const-string v0, "UNSOL_VOWIFI_CALL_QUALITY"

    return-object v0

    .line 1235
    :sswitch_1f
    const-string v0, "UNSOL_REQUEST_GEOLOCATION"

    return-object v0

    .line 1237
    :sswitch_20
    const-string v0, "UNSOL_REFRESH_VICE_INFO"

    return-object v0

    .line 1233
    :sswitch_21
    const-string v0, "UNSOL_MWI"

    return-object v0

    .line 1231
    :sswitch_22
    const-string v0, "UNSOL_RADIO_STATE_CHANGED"

    return-object v0

    .line 1229
    :sswitch_23
    const-string v0, "UNSOL_TTY_NOTIFICATION"

    return-object v0

    .line 1227
    :sswitch_24
    const-string v0, "UNSOL_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1225
    :sswitch_25
    const-string v0, "UNSOL_SRV_STATUS_UPDATE"

    return-object v0

    .line 1223
    :sswitch_26
    const-string v0, "UNSOL_REFRESH_CONF_INFO"

    return-object v0

    .line 1221
    :sswitch_27
    const-string v0, "UNSOL_RESPONSE_HANDOVER"

    return-object v0

    .line 1099
    :sswitch_28
    const-string v0, "UNSOL_MODIFY_CALL"

    return-object v0

    .line 1217
    :sswitch_29
    const-string v0, "UNSOL_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1213
    :sswitch_2a
    const-string v0, "UNSOL_ENTER_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1207
    :sswitch_2b
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 1215
    :sswitch_2c
    const-string v0, "UNSOL_RINGBACK_TONE"

    return-object v0

    .line 1211
    :sswitch_2d
    const-string v0, "UNSOL_CALL_RING"

    return-object v0

    .line 1209
    :sswitch_2e
    const-string v0, "UNSOL_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 1205
    :sswitch_2f
    const-string v0, "REQUEST_SEND_VOS_ACTION_INFO"

    return-object v0

    .line 1203
    :sswitch_30
    const-string v0, "REQUEST_SEND_VOS_SUPPORT_STATUS"

    return-object v0

    .line 1201
    :sswitch_31
    const-string v0, "REQUEST_EXIT_SCBM"

    return-object v0

    .line 1199
    :sswitch_32
    const-string v0, "REQUEST_QUERY_MULTI_SIM_VOICE_CAPABILITY"

    return-object v0

    .line 1197
    :sswitch_33
    const-string v0, "REQUEST_SET_MEDIA_CONFIG"

    return-object v0

    .line 1195
    :sswitch_34
    const-string v0, "REQUEST_SIP_DTMF"

    return-object v0

    .line 1193
    :sswitch_35
    const-string v0, "REQUEST_CANCEL_USSD"

    return-object v0

    .line 1191
    :sswitch_36
    const-string v0, "REQUEST_USSD"

    return-object v0

    .line 1189
    :sswitch_37
    const-string v0, "CALL_COMPOSER_DIAL"

    return-object v0

    .line 1187
    :sswitch_38
    const-string v0, "REQUEST_EMERGENCY_DIAL"

    return-object v0

    .line 1185
    :sswitch_39
    const-string v0, "REQUEST_QUERY_VIRTUAL_LINE_INFO"

    return-object v0

    .line 1183
    :sswitch_3a
    const-string v0, "REQUEST_REGISTER_MULTI_IDENTITY_LINES"

    return-object v0

    .line 1181
    :sswitch_3b
    const-string v0, "REQUEST_ACK_IMS_SMS_STATUS_REPORT"

    return-object v0

    .line 1179
    :sswitch_3c
    const-string v0, "REQUEST_ACK_IMS_SMS"

    return-object v0

    .line 1177
    :sswitch_3d
    const-string v0, "REQUEST_SEND_IMS_SMS"

    return-object v0

    .line 1175
    :sswitch_3e
    const-string v0, "REQUEST_CANCEL_MODIFY_CALL"

    return-object v0

    .line 1173
    :sswitch_3f
    const-string v0, "REQUEST_SEND_RTT_MSG"

    return-object v0

    .line 1171
    :sswitch_40
    const-string v0, "REQUEST_GET_IMS_SUB_CONFIG"

    return-object v0

    .line 1169
    :sswitch_41
    const-string v0, "REQUEST_SET_HANDOVER_CONFIG"

    return-object v0

    .line 1167
    :sswitch_42
    const-string v0, "REQUEST_GET_HANDOVER_CONFIG"

    return-object v0

    .line 1165
    :sswitch_43
    const-string v0, "REQUEST_GET_VOLTE_PREF"

    return-object v0

    .line 1163
    :sswitch_44
    const-string v0, "REQUEST_SET_VOLTE_PREF"

    return-object v0

    .line 1161
    :sswitch_45
    const-string v0, "REQUEST_GET_SSAC_INFO"

    return-object v0

    .line 1159
    :sswitch_46
    const-string v0, "REQUEST_GET_VOPS_INFO"

    return-object v0

    .line 1157
    :sswitch_47
    const-string v0, "REQUEST_SEND_GEOLOCATION_INFO"

    return-object v0

    .line 1155
    :sswitch_48
    const-string v0, "REQUEST_GET_IMS_CONFIG"

    return-object v0

    .line 1153
    :sswitch_49
    const-string v0, "REQUEST_SET_IMS_CONFIG"

    return-object v0

    .line 1143
    :sswitch_4a
    const-string v0, "REQUEST_SET_WIFI_CALLING_STATUS"

    return-object v0

    .line 1141
    :sswitch_4b
    const-string v0, "REQUEST_GET_WIFI_CALLING_STATUS"

    return-object v0

    .line 1139
    :sswitch_4c
    const-string v0, "REQUEST_GET_RTP_ERROR_STATISTICS"

    return-object v0

    .line 1137
    :sswitch_4d
    const-string v0, "REQUEST_GET_RTP_STATISTICS"

    return-object v0

    .line 1093
    :sswitch_4e
    const-string v0, "REQUEST_SEND_UI_TTY_MODE"

    return-object v0

    .line 1151
    :sswitch_4f
    const-string v0, "REQUEST_RESUME"

    return-object v0

    .line 1149
    :sswitch_50
    const-string v0, "REQUEST_HOLD"

    return-object v0

    .line 1147
    :sswitch_51
    const-string v0, "REQUEST_SET_COLR"

    return-object v0

    .line 1145
    :sswitch_52
    const-string v0, "REQUEST_GET_COLR"

    return-object v0

    .line 1077
    :sswitch_53
    const-string v0, "REQUEST_DEFLECT_CALL"

    return-object v0

    .line 1135
    :sswitch_54
    const-string v0, "REQUEST_SUPP_SVC_STATUS"

    return-object v0

    .line 1119
    :sswitch_55
    const-string v0, "REQUEST_SET_SERVICE_STATUS"

    return-object v0

    .line 1117
    :sswitch_56
    const-string v0, "REQUEST_QUERY_SERVICE_STATUS"

    return-object v0

    .line 1079
    :sswitch_57
    const-string v0, "REQUEST_ADD_PARTICIPANT"

    return-object v0

    .line 1133
    :sswitch_58
    const-string v0, "REQUEST_SET_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1219
    :sswitch_59
    const-string v0, "REQUEST_IMS_REG_STATE_CHANGE"

    return-object v0

    .line 1131
    :sswitch_5a
    const-string v0, "REQUEST_SET_CALL_WAITING"

    return-object v0

    .line 1129
    :sswitch_5b
    const-string v0, "REQUEST_QUERY_CALL_WAITING"

    return-object v0

    .line 1127
    :sswitch_5c
    const-string v0, "REQUEST_SET_CALL_FORWARD_STATUS"

    return-object v0

    .line 1125
    :sswitch_5d
    const-string v0, "REQUEST_QUERY_CALL_FORWARD_STATUS"

    return-object v0

    .line 1123
    :sswitch_5e
    const-string v0, "REQUEST_SET_CLIR"

    return-object v0

    .line 1121
    :sswitch_5f
    const-string v0, "REQUEST_GET_CLIR"

    return-object v0

    .line 1115
    :sswitch_60
    const-string v0, "REQUEST_QUERY_CLIP"

    return-object v0

    .line 1097
    :sswitch_61
    const-string v0, "MODIFY_CALL_CONFIRM"

    return-object v0

    .line 1095
    :sswitch_62
    const-string v0, "MODIFY_CALL_INITIATE"

    return-object v0

    .line 1091
    :sswitch_63
    const-string v0, "UDUB"

    return-object v0

    .line 1107
    :sswitch_64
    const-string v0, "DTMF_STOP"

    return-object v0

    .line 1105
    :sswitch_65
    const-string v0, "DTMF_START"

    return-object v0

    .line 1103
    :sswitch_66
    const-string v0, "DTMF"

    return-object v0

    .line 1109
    :sswitch_67
    const-string v0, "REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 1111
    :sswitch_68
    const-string v0, "REQUEST_EXIT_EMERGENCY_CALLBACK_MODE"

    return-object v0

    .line 1089
    :sswitch_69
    const-string v0, "CONFERENCE"

    return-object v0

    .line 1087
    :sswitch_6a
    const-string v0, "MessageId.REQUEST_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 1085
    :sswitch_6b
    const-string v0, "HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 1083
    :sswitch_6c
    const-string v0, "HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 1071
    :sswitch_6d
    const-string v0, "GET_CURRENT_CALLS"

    return-object v0

    .line 1101
    :sswitch_6e
    const-string v0, "LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 1081
    :sswitch_6f
    const-string v0, "HANGUP"

    return-object v0

    .line 1075
    :sswitch_70
    const-string v0, "REQUEST_ANSWER"

    return-object v0

    .line 1073
    :sswitch_71
    const-string v0, "DIAL"

    return-object v0

    .line 1113
    :sswitch_72
    const-string v0, "REQUEST_IMS_REGISTRATION_STATE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_72
        0x2 -> :sswitch_71
        0x3 -> :sswitch_70
        0x4 -> :sswitch_6f
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_6d
        0x7 -> :sswitch_6c
        0x8 -> :sswitch_6b
        0x9 -> :sswitch_6a
        0xa -> :sswitch_69
        0xb -> :sswitch_68
        0xc -> :sswitch_67
        0xd -> :sswitch_66
        0xe -> :sswitch_65
        0xf -> :sswitch_64
        0x10 -> :sswitch_63
        0x11 -> :sswitch_62
        0x12 -> :sswitch_61
        0x13 -> :sswitch_60
        0x14 -> :sswitch_5f
        0x15 -> :sswitch_5e
        0x16 -> :sswitch_5d
        0x17 -> :sswitch_5c
        0x18 -> :sswitch_5b
        0x19 -> :sswitch_5a
        0x1a -> :sswitch_59
        0x1b -> :sswitch_58
        0x1c -> :sswitch_57
        0x1d -> :sswitch_56
        0x1e -> :sswitch_55
        0x1f -> :sswitch_54
        0x20 -> :sswitch_53
        0x21 -> :sswitch_52
        0x22 -> :sswitch_51
        0x25 -> :sswitch_50
        0x26 -> :sswitch_4f
        0x27 -> :sswitch_4e
        0x28 -> :sswitch_4d
        0x29 -> :sswitch_4c
        0x2a -> :sswitch_4b
        0x2b -> :sswitch_4a
        0x2c -> :sswitch_49
        0x2d -> :sswitch_48
        0x2e -> :sswitch_47
        0x30 -> :sswitch_46
        0x31 -> :sswitch_45
        0x32 -> :sswitch_44
        0x33 -> :sswitch_43
        0x34 -> :sswitch_42
        0x35 -> :sswitch_41
        0x36 -> :sswitch_40
        0x37 -> :sswitch_3f
        0x38 -> :sswitch_3e
        0x39 -> :sswitch_3d
        0x3a -> :sswitch_3c
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3a
        0x3d -> :sswitch_39
        0x3e -> :sswitch_38
        0x3f -> :sswitch_37
        0x40 -> :sswitch_36
        0x41 -> :sswitch_35
        0x42 -> :sswitch_34
        0x43 -> :sswitch_33
        0x44 -> :sswitch_32
        0x45 -> :sswitch_31
        0x46 -> :sswitch_30
        0x47 -> :sswitch_2f
        0xc9 -> :sswitch_2e
        0xca -> :sswitch_2d
        0xcb -> :sswitch_2c
        0xcc -> :sswitch_2b
        0xcd -> :sswitch_2a
        0xce -> :sswitch_29
        0xcf -> :sswitch_28
        0xd0 -> :sswitch_27
        0xd1 -> :sswitch_26
        0xd2 -> :sswitch_25
        0xd3 -> :sswitch_24
        0xd4 -> :sswitch_23
        0xd5 -> :sswitch_22
        0xd6 -> :sswitch_21
        0xd7 -> :sswitch_20
        0xd8 -> :sswitch_1f
        0xd9 -> :sswitch_1e
        0xda -> :sswitch_1d
        0xdb -> :sswitch_1c
        0xdc -> :sswitch_1b
        0xdd -> :sswitch_1a
        0xde -> :sswitch_19
        0xdf -> :sswitch_18
        0xe0 -> :sswitch_17
        0xe1 -> :sswitch_16
        0xe2 -> :sswitch_15
        0xe3 -> :sswitch_14
        0xe4 -> :sswitch_13
        0xe5 -> :sswitch_12
        0xe6 -> :sswitch_11
        0xe7 -> :sswitch_10
        0xe8 -> :sswitch_f
        0xe9 -> :sswitch_e
        0xea -> :sswitch_d
        0xeb -> :sswitch_c
        0xec -> :sswitch_b
        0xed -> :sswitch_a
        0xee -> :sswitch_9
        0xef -> :sswitch_8
        0xf0 -> :sswitch_7
        0xf1 -> :sswitch_6
        0xf2 -> :sswitch_5
        0xf3 -> :sswitch_4
        0xf4 -> :sswitch_3
        0xf5 -> :sswitch_2
        0xf6 -> :sswitch_1
        0xf7 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyServiceDown(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceDown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 351
    return-void
.end method

.method private notifyServiceUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceName"    # Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceUp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 345
    return-void
.end method

.method private notifySipDtmfInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "configCode"    # Ljava/lang/String;

    .line 739
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 740
    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 742
    :cond_0
    return-void
.end method

.method private notifyUssdInfo(Lorg/codeaurora/ims/UssdInfo;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 3
    .param p1, "info"    # Lorg/codeaurora/ims/UssdInfo;
    .param p2, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 733
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    if-eqz v0, :cond_0

    .line 734
    new-instance v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 736
    :cond_0
    return-void
.end method

.method private queueRequest(Lorg/codeaurora/ims/IFRequest;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .line 895
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->acquireWakeLock()V

    .line 897
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 898
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 900
    monitor-exit v0

    .line 901
    return-void

    .line 900
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseWakeLockIfDone()V
    .locals 2

    .line 880
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 881
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-nez v1, :cond_0

    .line 883
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 885
    :cond_0
    monitor-exit v0

    .line 886
    return-void

    .line 885
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

    .line 746
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(II)V

    .line 747
    return-void
.end method

.method private removeFromQueueAndSendResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 763
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(IILjava/lang/Object;)V

    .line 764
    return-void
.end method

.method private removeFromQueueAndSendResponse(IILjava/lang/Object;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 767
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSenderRxr;->findAndRemoveRequestFromList(I)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    .line 769
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    if-nez v0, :cond_0

    .line 770
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

    .line 772
    return-void

    .line 774
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 775
    return-void
.end method

.method private removeFromQueueAndSendResponse(ILjava/lang/Object;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 750
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(IILjava/lang/Object;)V

    .line 751
    return-void
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 959
    if-nez p2, :cond_0

    .line 960
    const-string v0, ""

    return-object v0

    .line 965
    :cond_0
    instance-of v0, p2, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_2

    .line 966
    move-object v0, p2

    check-cast v0, [I

    .line 967
    .local v0, "intArray":[I
    array-length v4, v0

    .line 968
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 969
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_1

    .line 970
    const/4 v5, 0x0

    .line 971
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 972
    :goto_0
    if-ge v6, v4, :cond_1

    .line 973
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_0

    .line 976
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, "s":Ljava/lang/String;
    goto/16 :goto_4

    .end local v0    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_2
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 979
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 980
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 981
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 982
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_3

    .line 983
    const/4 v5, 0x0

    .line 984
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    :goto_1
    if-ge v6, v4, :cond_3

    .line 986
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_1

    .line 989
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
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

    .line 1000
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_4

    .line 993
    .end local v0    # "s":Ljava/lang/String;
    :cond_6
    :goto_2
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    .line 994
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 995
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

    .line 996
    .local v3, "dc":Lorg/codeaurora/ims/DriverCallIms;
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    .end local v3    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_3

    .line 998
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, "s":Ljava/lang/String;
    nop

    .line 1002
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_4
    return-object v0
.end method

.method private sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z
    .locals 1
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "msgIdString"    # Ljava/lang/String;

    .line 1377
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

    .line 1388
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    const/4 v0, 0x0

    return v0

    .line 1391
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

    .line 1393
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 1394
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1395
    return v0
.end method

.method private sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;
    .param p2, "error"    # I
    .param p3, "ret"    # Ljava/lang/Object;

    .line 787
    if-eqz p2, :cond_0

    .line 788
    invoke-virtual {p1, p2, p3}, Lorg/codeaurora/ims/IFRequest;->onError(ILjava/lang/Object;)V

    .line 789
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 790
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 791
    return-void

    .line 794
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

    .line 795
    invoke-direct {p0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 797
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 799
    iget-object v0, p1, Lorg/codeaurora/ims/IFRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 802
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 803
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->releaseWakeLockIfDone()V

    .line 804
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

    .line 2216
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

    .line 2220
    const/16 v16, 0x17

    .line 2221
    .local v16, "msgId":I
    const/16 v0, 0x17

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v8

    .line 2222
    .local v8, "msgIdString":Ljava/lang/String;
    move-object/from16 v7, p10

    invoke-static {v0, v7}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v6

    .line 2224
    .local v6, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v6, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2225
    return-void

    .line 2228
    :cond_0
    invoke-direct {v1, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2230
    :try_start_0
    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2231
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

    .line 2236
    goto :goto_1

    .line 2233
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

    .line 2234
    .end local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v8    # "msgIdString":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v13    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v14    # "msgIdString":Ljava/lang/String;
    :goto_0
    iget v2, v13, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2235
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

    .line 2237
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

    .line 2399
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V

    .line 2401
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;I)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .line 1521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;II)V

    .line 1522
    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "rttMode"    # I

    .line 1526
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;III)V

    .line 1527
    return-void
.end method

.method public acceptCall(Landroid/os/Message;III)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "ipPresentation"    # I
    .param p4, "rttMode"    # I

    .line 1531
    const/4 v0, 0x3

    .line 1532
    .local v0, "msgId":I
    const/4 v1, 0x3

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1534
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1536
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1537
    return-void

    .line 1540
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1542
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1543
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadio;->answer(IIII)V

    .line 1544
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

    .line 1549
    goto :goto_0

    .line 1546
    :catch_0
    move-exception v3

    .line 1547
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1548
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

    .line 1550
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public acknowledgeSms(IILandroid/os/Message;)V
    .locals 6
    .param p1, "messageRef"    # I
    .param p2, "result"    # I
    .param p3, "target"    # Landroid/os/Message;

    .line 1595
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

    .line 1597
    const/16 v0, 0x3a

    .line 1598
    .local v0, "msgId":I
    const/16 v1, 0x3a

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1601
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 1602
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1603
    return-void

    .line 1607
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1608
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->acknowledgeSms(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1611
    goto :goto_0

    .line 1609
    :catch_0
    move-exception v4

    .line 1610
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

    .line 1612
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1613
    return-void
.end method

.method public acknowledgeSmsReport(IILandroid/os/Message;)V
    .locals 6
    .param p1, "messageRef"    # I
    .param p2, "result"    # I
    .param p3, "target"    # Landroid/os/Message;

    .line 1616
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

    .line 1618
    const/16 v0, 0x3b

    .line 1619
    .local v0, "msgId":I
    const/16 v1, 0x3b

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1622
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 1624
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1625
    return-void

    .line 1629
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1630
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->acknowledgeSmsReport(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    goto :goto_0

    .line 1631
    :catch_0
    move-exception v4

    .line 1632
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

    .line 1634
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v3}, Lorg/codeaurora/ims/IFRequest;->release()V

    .line 1635
    return-void
.end method

.method public addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "result"    # Landroid/os/Message;

    .line 1355
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

    .line 1357
    const/16 v0, 0x1c

    .line 1358
    .local v0, "msgId":I
    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1359
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1361
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1362
    return-void

    .line 1365
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1368
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1369
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadio;->addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    goto :goto_0

    .line 1370
    :catch_0
    move-exception v3

    .line 1371
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1372
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

    .line 1374
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public cancelModifyCall(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1866
    const-string v0, "cancelModifyCall"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 1867
    const/16 v0, 0x38

    .line 1868
    .local v0, "msgId":I
    const/16 v1, 0x38

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1869
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1871
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1872
    return-void

    .line 1875
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1877
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1878
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

    .line 1880
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->cancelModifyCall(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    goto :goto_0

    .line 1881
    :catch_0
    move-exception v3

    .line 1882
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1883
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

    .line 1885
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1500
    const-string v0, "Cancel pending USSD"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->log(Ljava/lang/String;)V

    .line 1501
    const/16 v0, 0x41

    .line 1502
    .local v0, "msgId":I
    const/16 v1, 0x41

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1503
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1505
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1506
    return-void

    .line 1509
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1511
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1512
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->cancelPendingUssd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    goto :goto_0

    .line 1513
    :catch_0
    move-exception v3

    .line 1514
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1515
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

    .line 1517
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1950
    const/16 v0, 0xa

    .line 1951
    .local v0, "msgId":I
    const/16 v1, 0xa

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1952
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1954
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1955
    return-void

    .line 1958
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1960
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1961
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->conference(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    goto :goto_0

    .line 1962
    :catch_0
    move-exception v3

    .line 1963
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1964
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

    .line 1966
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public deflectCall(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1553
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

    .line 1554
    const/16 v0, 0x20

    .line 1555
    .local v0, "msgId":I
    const/16 v1, 0x20

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1556
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1558
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1559
    return-void

    .line 1562
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1564
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1565
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->deflectCall(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1569
    goto :goto_0

    .line 1566
    :catch_0
    move-exception v3

    .line 1567
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1568
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

    .line 1570
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
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

    .line 1401
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

    .line 1402
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

    .line 1407
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

    .line 1410
    const/4 v0, 0x2

    .line 1411
    .local v0, "msgId":I
    if-eqz p2, :cond_0

    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1412
    const/16 v0, 0x3e

    move v15, v0

    goto :goto_0

    .line 1413
    :cond_0
    if-eqz p6, :cond_1

    iget-object v2, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1414
    const/16 v0, 0x3f

    move v15, v0

    goto :goto_0

    .line 1416
    :cond_1
    move v15, v0

    .end local v0    # "msgId":I
    .local v15, "msgId":I
    :goto_0
    invoke-static {v15}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v10

    .line 1417
    .local v10, "msgIdString":Ljava/lang/String;
    move-object/from16 v9, p8

    invoke-static {v15, v9}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v8

    .line 1419
    .local v8, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v8, v10}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1420
    return-void

    .line 1423
    :cond_2
    invoke-direct {v1, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1425
    :try_start_0
    invoke-virtual {v1, v8}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1426
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

    .line 1427
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

    .line 1433
    goto :goto_2

    .line 1430
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

    .line 1431
    .end local v8    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v10    # "msgIdString":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v12    # "msgIdString":Ljava/lang/String;
    :goto_1
    iget v2, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1432
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

    .line 1434
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 293
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSenderRxr;->clearRegistrants()V

    .line 294
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-nez v0, :cond_0

    .line 295
    return-void

    .line 297
    :cond_0
    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->dispose()V

    .line 298
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2310
    const-string v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2311
    const/16 v0, 0xb

    .line 2312
    .local v0, "msgId":I
    const/16 v1, 0xb

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2313
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2315
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2316
    return-void

    .line 2319
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2321
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2322
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2326
    goto :goto_0

    .line 2323
    :catch_0
    move-exception v3

    .line 2324
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2325
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

    .line 2327
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public exitScbm(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2330
    const-string v0, "exitScbm"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2331
    const/16 v0, 0x45

    .line 2332
    .local v0, "msgId":I
    const/16 v1, 0x45

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2333
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2335
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2336
    return-void

    .line 2339
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2340
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 2341
    return-void

    .line 2344
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2346
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2347
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->exitSmsCallBackMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2351
    goto :goto_0

    .line 2348
    :catch_0
    move-exception v3

    .line 2349
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2350
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

    .line 2352
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

    .line 1970
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

    .line 1972
    const/16 v0, 0xc

    .line 1973
    .local v0, "msgId":I
    const/16 v1, 0xc

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1974
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p5}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1976
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1977
    return-void

    .line 1980
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1982
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1983
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lorg/codeaurora/ims/IImsRadio;->explicitCallTransfer(IIILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1988
    goto :goto_0

    .line 1985
    :catch_0
    move-exception v3

    .line 1986
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1987
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

    .line 1989
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2691
    const-string v0, "explicitCallTransfer : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2692
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2104
    const-string v0, "getCLIR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2105
    const/16 v0, 0x14

    .line 2106
    .local v0, "msgId":I
    const/16 v1, 0x14

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2107
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2109
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2110
    return-void

    .line 2113
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2115
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2116
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getClir(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2120
    goto :goto_0

    .line 2117
    :catch_0
    move-exception v3

    .line 2118
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2119
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

    .line 2121
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2425
    const-string v0, "getCOLR"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2426
    const/16 v0, 0x21

    .line 2427
    .local v0, "msgId":I
    const/16 v1, 0x21

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2428
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2430
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2431
    return-void

    .line 2434
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2436
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2437
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getColr(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2441
    goto :goto_0

    .line 2438
    :catch_0
    move-exception v3

    .line 2439
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2440
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

    .line 2442
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2683
    const-string v0, "getCurrentCalls : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2684
    return-void
.end method

.method public getHandoverConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .line 2573
    const-string v0, "ImsSenderRxr"

    const-string v1, "getHandoverConfig : Not supported"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1806
    const/4 v0, 0x1

    .line 1807
    .local v0, "msgId":I
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1808
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1810
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1811
    return-void

    .line 1814
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1816
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1817
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getImsRegistrationState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1821
    goto :goto_0

    .line 1818
    :catch_0
    move-exception v3

    .line 1819
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1820
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

    .line 1822
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getImsSubConfig(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2519
    const-string v0, "getImsSubConfig"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2520
    const/16 v0, 0x36

    .line 2521
    .local v0, "msgId":I
    const/16 v1, 0x36

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2522
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2524
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2525
    return-void

    .line 2528
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2530
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2531
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getImsSubConfig(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2535
    goto :goto_0

    .line 2532
    :catch_0
    move-exception v3

    .line 2533
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2534
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

    .line 2536
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getIncomingSmsRegistrant()Lorg/codeaurora/telephony/utils/Registrant;
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object v0
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2675
    const-string v0, "getLastCallFailCause : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2676
    return-void
.end method

.method public getPacketCount(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2479
    const-string v0, "getPacketCount"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2480
    const/16 v0, 0x28

    .line 2481
    .local v0, "msgId":I
    const/16 v1, 0x28

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2482
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2484
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2485
    return-void

    .line 2488
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2490
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2491
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getRtpStatistics(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2495
    goto :goto_0

    .line 2492
    :catch_0
    move-exception v3

    .line 2493
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2494
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

    .line 2496
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getPacketErrorCount(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2499
    const-string v0, "getPacketErrorCount"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2500
    const/16 v0, 0x29

    .line 2501
    .local v0, "msgId":I
    const/16 v1, 0x29

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2502
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2504
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2505
    return-void

    .line 2508
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2510
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2511
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getRtpErrorStatistics(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2515
    goto :goto_0

    .line 2512
    :catch_0
    move-exception v3

    .line 2513
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2514
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

    .line 2516
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getSendSmsStatusReportRegistrant()Lorg/codeaurora/telephony/utils/Registrant;
    .locals 1

    .line 673
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    return-object v0
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 3

    .line 1639
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1640
    :catch_0
    move-exception v0

    .line 1641
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

    .line 1643
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSuppSvc(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2368
    const/4 v0, 0x3

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2369
    return-void
.end method

.method public getWifiCallingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2564
    const-string v0, "getWifiCallingPreference : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2565
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1668
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 1669
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2695
    const-string v0, "hangupForegroundResumeBackground : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2696
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2679
    const-string v0, "hangupWaitingOrBackground : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2680
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

    .line 1674
    move-object v1, p0

    const/4 v2, 0x4

    .line 1675
    .local v2, "msgId":I
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1676
    .local v3, "msgIdString":Ljava/lang/String;
    move-object/from16 v4, p7

    invoke-static {v0, v4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v5

    .line 1678
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1679
    return-void

    .line 1682
    :cond_0
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1684
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1685
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

    .line 1690
    goto :goto_0

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    .local v0, "ex":Ljava/lang/Exception;
    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1689
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

    .line 1691
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public hold(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1908
    const/16 v0, 0x25

    .line 1909
    .local v0, "msgId":I
    const/16 v1, 0x25

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1910
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1912
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1913
    return-void

    .line 1916
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1918
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1919
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

    .line 1921
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->hold(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    goto :goto_0

    .line 1922
    :catch_0
    move-exception v3

    .line 1923
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1924
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

    .line 1926
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isCrsSupported()Z
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 362
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isSmsSupported()Z
    .locals 2

    .line 354
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1306
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

    .line 1307
    return-void
.end method

.method public logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V
    .locals 2
    .param p1, "rr"    # Lorg/codeaurora/ims/IFRequest;

    .line 1344
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

    .line 1345
    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    .line 1319
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 1320
    .local v0, "e":Ljava/lang/Exception;
    nop

    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    :catch_0
    move-exception v0

    .line 1322
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Unimplemented method. Stack trace: "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1325
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1310
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

    .line 1311
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 1888
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

    .line 1889
    const/16 v0, 0x12

    .line 1890
    .local v0, "msgId":I
    const/16 v1, 0x12

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1891
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1893
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1894
    return-void

    .line 1897
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1899
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1900
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1904
    goto :goto_0

    .line 1901
    :catch_0
    move-exception v3

    .line 1902
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1903
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

    .line 1905
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 1846
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

    .line 1847
    const/16 v0, 0x11

    .line 1848
    .local v0, "msgId":I
    const/16 v1, 0x11

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1849
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1851
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1852
    return-void

    .line 1855
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1857
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1858
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    goto :goto_0

    .line 1859
    :catch_0
    move-exception v3

    .line 1860
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1861
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

    .line 1863
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2270
    const-string v0, "queryClip"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2271
    const/16 v0, 0x13

    .line 2272
    .local v0, "msgId":I
    const/16 v1, 0x13

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2273
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2275
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2276
    return-void

    .line 2279
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2281
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2282
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->getClip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2286
    goto :goto_0

    .line 2283
    :catch_0
    move-exception v3

    .line 2284
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2285
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

    .line 2287
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

    .line 2241
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;Z)V

    .line 2243
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;Z)V
    .locals 10
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;
    .param p5, "expectMore"    # Z

    .line 2247
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

    .line 2250
    const/16 v0, 0x16

    .line 2251
    .local v0, "msgId":I
    const/16 v1, 0x16

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2252
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2254
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2255
    return-void

    .line 2258
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2260
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2261
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lorg/codeaurora/ims/IImsRadio;->queryCallForwardStatus(IIILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    goto :goto_0

    .line 2263
    :catch_0
    move-exception v3

    .line 2264
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2265
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

    .line 2267
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 6
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2144
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

    .line 2145
    const/16 v0, 0x18

    .line 2146
    .local v0, "msgId":I
    const/16 v1, 0x18

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2148
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2150
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2151
    return-void

    .line 2154
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2156
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2157
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->getCallWaiting(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    goto :goto_0

    .line 2158
    :catch_0
    move-exception v3

    .line 2159
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2160
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

    .line 2162
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

    .line 2357
    const/4 v0, 0x3

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p4}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2358
    return-void
.end method

.method public queryIncomingCallBarring(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2188
    const/4 v1, 0x3

    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 2190
    return-void
.end method

.method public queryMultiSimVoiceCapability(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2539
    const-string v0, "queryMultiSimVoiceCapability"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2540
    const/16 v0, 0x44

    .line 2541
    .local v0, "msgId":I
    const/16 v1, 0x44

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2542
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2544
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2545
    return-void

    .line 2548
    :cond_0
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2549
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 2550
    return-void

    .line 2553
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2555
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2556
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->queryMultiSimVoiceCapability(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2560
    goto :goto_0

    .line 2557
    :catch_0
    move-exception v3

    .line 2558
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2559
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

    .line 2561
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryServiceStatus(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 1694
    const/16 v0, 0x1d

    .line 1695
    .local v0, "msgId":I
    const/16 v1, 0x1d

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1696
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1698
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1699
    return-void

    .line 1702
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1704
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1705
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->queryServiceStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    goto :goto_0

    .line 1706
    :catch_0
    move-exception v3

    .line 1707
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1708
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

    .line 1710
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public querySsacStatus(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2604
    const-string v0, "querySsacStatus"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2605
    const/16 v0, 0x31

    .line 2606
    .local v0, "msgId":I
    const/16 v1, 0x31

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2607
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2609
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2610
    return-void

    .line 2613
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2615
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2616
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->querySsacStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2620
    goto :goto_0

    .line 2617
    :catch_0
    move-exception v3

    .line 2618
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2619
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

    .line 2622
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryVirtualLineInfo(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2736
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

    .line 2737
    const/16 v0, 0x3d

    .line 2738
    .local v0, "msgId":I
    const/16 v1, 0x3d

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2739
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2741
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2742
    return-void

    .line 2744
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2746
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2747
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2751
    goto :goto_0

    .line 2748
    :catch_0
    move-exception v4

    .line 2749
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2750
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

    .line 2752
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryVoltePref(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2648
    const-string v0, "queryVoltePref"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2649
    const/16 v0, 0x33

    .line 2650
    .local v0, "msgId":I
    const/16 v1, 0x33

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2651
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2653
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2654
    return-void

    .line 2657
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2659
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2660
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->queryVoltePref(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2664
    goto :goto_0

    .line 2661
    :catch_0
    move-exception v3

    .line 2662
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2663
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

    .line 2666
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public queryVopsStatus(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 2582
    const-string v0, "queryVopsStatus"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2583
    const/16 v0, 0x30

    .line 2584
    .local v0, "msgId":I
    const/16 v1, 0x30

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2585
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2587
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2588
    return-void

    .line 2591
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2593
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2594
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->queryVopsStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2598
    goto :goto_0

    .line 2595
    :catch_0
    move-exception v3

    .line 2596
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2597
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

    .line 2600
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public registerForCallAutoRejection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 537
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 538
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 539
    return-void
.end method

.method public registerForCiwlanNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 628
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 629
    return-void
.end method

.method public registerForConferenceCallStateCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 584
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 585
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 586
    return-void
.end method

.method public registerForGeoLocationDataStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 566
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 567
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 568
    return-void
.end method

.method public registerForGeolocationRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 439
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 440
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 441
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 403
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 404
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 405
    return-void
.end method

.method public registerForImsServiceDown(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 657
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    :cond_0
    sget-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceDown(Ljava/lang/String;)V

    .line 660
    :cond_1
    return-void
.end method

.method public registerForImsServiceUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 645
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 646
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadio;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lorg/codeaurora/ims/ImsSenderRxr;->IIMS_RADIO_SERVICE_NAME:[Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->notifyServiceUp(Ljava/lang/String;)V

    .line 649
    :cond_0
    return-void
.end method

.method public registerForImsSubConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 367
    return-void
.end method

.method public registerForIncomingDtmfStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 602
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 603
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 604
    return-void
.end method

.method public registerForIncomingDtmfStop(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 611
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 612
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 613
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1006
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 1007
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 1008
    return-void
.end method

.method public registerForMultiIdentityInfoPendingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 553
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 554
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 555
    return-void
.end method

.method public registerForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 547
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 548
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 549
    return-void
.end method

.method public registerForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 620
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 621
    return-void
.end method

.method public registerForMwi(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1015
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 1016
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 1017
    return-void
.end method

.method public registerForParticipantStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 457
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 458
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 459
    return-void
.end method

.method public registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 412
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 413
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 414
    return-void
.end method

.method public registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 466
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 467
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 468
    return-void
.end method

.method public registerForRttMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2700
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2701
    return-void
.end method

.method public registerForSipDtmfInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 506
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 507
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 508
    return-void
.end method

.method public registerForSmsCallbackModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 593
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 594
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 595
    return-void
.end method

.method public registerForSrtpEncryptionUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
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
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 638
    return-void
.end method

.method public registerForSrvDomainChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 575
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 576
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 577
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 421
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 422
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 423
    return-void
.end method

.method public registerForSsacStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 374
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 375
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 376
    return-void
.end method

.method public registerForSuppServiceIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 486
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 487
    return-void
.end method

.method public registerForTtyStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 430
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 431
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 432
    return-void
.end method

.method public registerForUssdInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 497
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 498
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 499
    return-void
.end method

.method public registerForVoWiFiCallQualityUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 448
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 449
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 450
    return-void
.end method

.method public registerForVoiceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2708
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2709
    return-void
.end method

.method public registerForVopsStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 383
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 384
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 385
    return-void
.end method

.method public registerForWfcRoamingModeFeatureSupport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 392
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 393
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 394
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingConfigurationSupport:Z

    .line 395
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 394
    invoke-virtual {v1, v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 396
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2670
    const-string v0, "rejectCall : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2671
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

    .line 2756
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

    .line 2757
    const/16 v0, 0x3c

    .line 2758
    .local v0, "msgId":I
    const/16 v1, 0x3c

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2759
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2761
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2762
    return-void

    .line 2765
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2767
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2768
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->registerMultiIdentityLines(ILjava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2772
    goto :goto_0

    .line 2769
    :catch_0
    move-exception v4

    .line 2770
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2771
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

    .line 2773
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public resume(Landroid/os/Message;I)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1929
    const/16 v0, 0x26

    .line 1930
    .local v0, "msgId":I
    const/16 v1, 0x26

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1931
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1933
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1934
    return-void

    .line 1937
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1939
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1940
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

    .line 1942
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p2}, Lorg/codeaurora/ims/IImsRadio;->resume(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1946
    goto :goto_0

    .line 1943
    :catch_0
    move-exception v3

    .line 1944
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1945
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

    .line 1947
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

    .line 1993
    move-object v1, p0

    move/from16 v2, p1

    invoke-static/range {p1 .. p1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1994
    .local v3, "msgIdString":Ljava/lang/String;
    move-object/from16 v4, p7

    invoke-static {v2, v4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v5

    .line 1996
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1997
    return-void

    .line 2000
    :cond_0
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2002
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2003
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

    .line 2005
    const/16 v0, 0x2d

    if-ne v2, v0, :cond_1

    .line 2006
    iget-object v6, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v7, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-interface/range {v6 .. v12}, Lorg/codeaurora/ims/IImsRadio;->getConfig(IIZILjava/lang/String;I)V

    goto :goto_0

    .line 2008
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

    .line 2013
    :goto_0
    goto :goto_1

    .line 2010
    :catch_0
    move-exception v0

    .line 2011
    .local v0, "ex":Ljava/lang/Exception;
    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2012
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

    .line 2014
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendDtmf(ICLandroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "c"    # C
    .param p3, "result"    # Landroid/os/Message;

    .line 2017
    const/16 v0, 0xd

    .line 2018
    .local v0, "msgId":I
    const/16 v1, 0xd

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2019
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2021
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2022
    return-void

    .line 2025
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2027
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2028
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->sendDtmf(IIC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2032
    goto :goto_0

    .line 2029
    :catch_0
    move-exception v3

    .line 2030
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2031
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

    .line 2033
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

    .line 1648
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

    .line 1649
    const/16 v14, 0x2e

    .line 1650
    .local v14, "msgId":I
    const/16 v0, 0x2e

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 1651
    .local v15, "msgIdString":Ljava/lang/String;
    move-object/from16 v8, p6

    invoke-static {v0, v8}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v0

    move-object v6, v0

    .line 1652
    .local v6, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v6, v15}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1653
    monitor-exit p0

    return-void

    .line 1655
    :cond_0
    :try_start_1
    invoke-direct {v1, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1658
    :try_start_2
    invoke-virtual {v1, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1659
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

    .line 1663
    goto :goto_1

    .line 1660
    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr;
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v9    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    :catch_1
    move-exception v0

    move-object v9, v6

    .line 1661
    .end local v6    # "rr":Lorg/codeaurora/ims/IFRequest;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v9    # "rr":Lorg/codeaurora/ims/IFRequest;
    :goto_0
    :try_start_4
    iget v2, v9, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1662
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

    .line 1664
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 1647
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

    .line 1825
    const/16 v0, 0x1a

    .line 1826
    .local v0, "msgId":I
    const/16 v1, 0x1a

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1827
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1829
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1830
    return-void

    .line 1833
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1835
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1836
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

    .line 1838
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->requestRegistrationChange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    goto :goto_0

    .line 1839
    :catch_0
    move-exception v3

    .line 1840
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1841
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

    .line 1843
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2716
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

    .line 2717
    const/16 v0, 0x37

    .line 2718
    .local v0, "msgId":I
    const/16 v1, 0x37

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2719
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2721
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2722
    return-void

    .line 2725
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2727
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2728
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->sendRttMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2732
    goto :goto_0

    .line 2729
    :catch_0
    move-exception v4

    .line 2730
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2731
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

    .line 2733
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendSipDtmf(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "requestCode"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1472
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

    .line 1473
    const/16 v0, 0x42

    .line 1474
    .local v0, "msgId":I
    const/16 v1, 0x42

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1475
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1476
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1477
    return-void

    .line 1480
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1481
    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1482
    return-void

    .line 1485
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1487
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1488
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    goto :goto_0

    .line 1489
    :catch_0
    move-exception v3

    .line 1490
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1491
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

    .line 1493
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

    .line 1574
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

    .line 1576
    const/16 v10, 0x39

    .line 1577
    .local v10, "msgId":I
    const/16 v11, 0x39

    invoke-static {v11}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v12

    .line 1578
    .local v12, "msgIdString":Ljava/lang/String;
    move-object/from16 v13, p6

    invoke-static {v11, v13}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v14

    .line 1580
    .local v14, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v14, v12}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    return-void

    .line 1584
    :cond_0
    invoke-direct {p0, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1586
    :try_start_0
    invoke-virtual {p0, v14}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1587
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

    .line 1591
    goto :goto_0

    .line 1588
    :catch_0
    move-exception v0

    .line 1589
    .local v0, "ex":Ljava/lang/Exception;
    iget v2, v14, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1590
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

    .line 1592
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendUssd(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1442
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

    .line 1443
    const/16 v0, 0x40

    .line 1444
    .local v0, "msgId":I
    const/16 v1, 0x40

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1445
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 1447
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1448
    return-void

    .line 1451
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1452
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    const/16 v4, 0x2f

    invoke-direct {p0, v1, v4, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 1453
    return-void

    .line 1456
    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1458
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1459
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->sendUssd(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    goto :goto_0

    .line 1460
    :catch_0
    move-exception v3

    .line 1461
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 1462
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

    .line 1464
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "vosActionInfo"    # Lorg/codeaurora/ims/VosActionInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 2835
    const/16 v0, 0x47

    .line 2836
    .local v0, "msgId":I
    const/16 v1, 0x47

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2837
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2838
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2839
    return-void

    .line 2842
    :cond_0
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2843
    const/4 v1, 0x6

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 2844
    return-void

    .line 2847
    :cond_1
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2849
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2850
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->sendVosActionInfo(ILorg/codeaurora/ims/VosActionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2854
    goto :goto_0

    .line 2851
    :catch_0
    move-exception v4

    .line 2852
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2853
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

    .line 2856
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendVosSupportStatus(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "isVosSupported"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2806
    const/16 v0, 0x46

    .line 2807
    .local v0, "msgId":I
    const/16 v1, 0x46

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2808
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2809
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2810
    return-void

    .line 2813
    :cond_0
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2814
    const/4 v1, 0x6

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 2815
    return-void

    .line 2818
    :cond_1
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2820
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2821
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->sendVosSupportStatus(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2825
    goto :goto_0

    .line 2822
    :catch_0
    move-exception v4

    .line 2823
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2824
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

    .line 2827
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2124
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

    .line 2125
    const/16 v0, 0x15

    .line 2126
    .local v0, "msgId":I
    const/16 v1, 0x15

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2127
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2129
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2130
    return-void

    .line 2133
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2135
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2136
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->setClir(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    goto :goto_0

    .line 2137
    :catch_0
    move-exception v4

    .line 2138
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2139
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

    .line 2141
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "presentationValue"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2445
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

    .line 2446
    const/16 v0, 0x22

    .line 2447
    .local v0, "msgId":I
    const/16 v1, 0x22

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2448
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2450
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2451
    return-void

    .line 2454
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2456
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2457
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->setColr(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2461
    goto :goto_0

    .line 2458
    :catch_0
    move-exception v4

    .line 2459
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2460
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

    .line 2462
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

    .line 2199
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

    .line 2202
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

    .line 2204
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

    .line 2209
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

    .line 2211
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2166
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

    .line 2168
    const/16 v0, 0x19

    .line 2169
    .local v0, "msgId":I
    const/16 v1, 0x19

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2171
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2173
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2174
    return-void

    .line 2177
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2179
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2180
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->setCallWaiting(IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2184
    goto :goto_0

    .line 2181
    :catch_0
    move-exception v3

    .line 2182
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2183
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

    .line 2185
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

    .line 2363
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2364
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2365
    return-void
.end method

.method public setHandoverConfig(ILandroid/os/Message;)V
    .locals 2
    .param p1, "hoConfig"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2577
    const-string v0, "ImsSenderRxr"

    const-string v1, "setHandoverConfig : Not supported"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    return-void
.end method

.method public setIncomingCallBarring(ILjava/lang/String;[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "operation"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2194
    invoke-static {p2}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V

    .line 2195
    return-void
.end method

.method public setMediaConfigurationRequest(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/os/Message;)V
    .locals 6
    .param p1, "screenSize"    # Landroid/graphics/Point;
    .param p2, "avcSize"    # Landroid/graphics/Point;
    .param p3, "hevcSize"    # Landroid/graphics/Point;
    .param p4, "result"    # Landroid/os/Message;

    .line 2777
    const/16 v0, 0x43

    .line 2778
    .local v0, "msgId":I
    const/16 v1, 0x43

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2779
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2780
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2781
    return-void

    .line 2784
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2785
    const/4 v1, 0x6

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->sendResponse(Lorg/codeaurora/ims/IFRequest;ILjava/lang/Object;)V

    .line 2786
    return-void

    .line 2789
    :cond_1
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2791
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2792
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadio;->setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2796
    goto :goto_0

    .line 2793
    :catch_0
    move-exception v4

    .line 2794
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2795
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

    .line 2798
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setOnImsSmsStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 526
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 527
    return-void
.end method

.method public setOnIncomingImsSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 515
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 516
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 475
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 476
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .line 1349
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

    .line 1350
    iput p1, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mPhoneType:I

    .line 1351
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

    .line 1714
    .local p2, "capabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const/16 v5, 0x1e

    .line 1715
    .local v5, "msgId":I
    const/16 v0, 0x1e

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1717
    .local v6, "msgIdString":Ljava/lang/String;
    iget-object v7, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/codeaurora/ims/IImsRadio;->isFeatureSupported(I)Z

    move-result v7

    const-string v8, "SetServiceStatus request to IImsRadio: Exception: "

    const-string v9, " to ImsRadio: token -"

    if-eqz v7, :cond_1

    .line 1718
    invoke-static {v0, v2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v7

    .line 1719
    .local v7, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v7, v6, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    return-void

    .line 1727
    :cond_0
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v10

    .line 1729
    .local v10, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v10, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1731
    iput-object v3, v10, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1733
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 1734
    .local v11, "newMsg":Landroid/os/Message;
    iput-object v10, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1740
    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1741
    invoke-direct {v1, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1742
    invoke-virtual {v1, v7}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1743
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

    .line 1746
    :try_start_0
    iget-object v0, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v9, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v9, v3, v4}, Lorg/codeaurora/ims/IImsRadio;->setServiceStatus(ILjava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    goto :goto_0

    .line 1747
    :catch_0
    move-exception v0

    .line 1749
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v7, v2}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1750
    iget v9, v7, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v9, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(ILjava/lang/Object;)V

    .line 1751
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1753
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v7    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v10    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v11    # "newMsg":Landroid/os/Message;
    :goto_0
    goto/16 :goto_2

    .line 1754
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

    .line 1755
    .local v10, "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    invoke-static {v0, v2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v11

    .line 1756
    .local v11, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {v1, v11, v6, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1757
    return-void

    .line 1765
    :cond_2
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v12

    .line 1767
    .local v12, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v13

    iput-object v13, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1770
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1771
    .local v13, "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    iput-object v13, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1776
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 1777
    .local v14, "newMsg":Landroid/os/Message;
    iput-object v12, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1783
    invoke-virtual {v11, v14}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1784
    invoke-direct {v1, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1785
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

    .line 1786
    invoke-virtual {v1, v11}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 1787
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

    .line 1790
    :try_start_1
    iget-object v0, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v15, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v0, v15, v13, v4}, Lorg/codeaurora/ims/IImsRadio;->setServiceStatus(ILjava/util/List;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1800
    nop

    .line 1801
    .end local v10    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .end local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local v12    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v13    # "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    .end local v14    # "newMsg":Landroid/os/Message;
    const/16 v0, 0x1e

    goto :goto_1

    .line 1792
    .restart local v10    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .restart local v11    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local v12    # "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local v13    # "newCapabilityStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/CapabilityStatus;>;"
    .restart local v14    # "newMsg":Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 1794
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v11, v2}, Lorg/codeaurora/ims/IFRequest;->setResult(Landroid/os/Message;)V

    .line 1795
    iget v7, v11, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {v1, v7, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(ILjava/lang/Object;)V

    .line 1796
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1799
    return-void

    .line 1803
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

    .line 2083
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

    .line 2084
    const/16 v0, 0x1b

    .line 2085
    .local v0, "msgId":I
    const/16 v1, 0x1b

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2087
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2089
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2090
    return-void

    .line 2093
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2095
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2096
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->setSuppServiceNotification(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2100
    goto :goto_0

    .line 2097
    :catch_0
    move-exception v3

    .line 2098
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2099
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

    .line 2101
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setSuppSvc(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .line 2372
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2373
    .local v0, "operation":I
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSenderRxr;->facilityStringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatus(IILandroid/os/Message;)V

    .line 2374
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 6
    .param p1, "uiTtyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2290
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

    .line 2291
    const/16 v0, 0x27

    .line 2292
    .local v0, "msgId":I
    const/16 v1, 0x27

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2293
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2295
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2296
    return-void

    .line 2299
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2301
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2302
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->setUiTtyMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2306
    goto :goto_0

    .line 2303
    :catch_0
    move-exception v4

    .line 2304
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2305
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

    .line 2307
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setWifiCallingPreference(IILandroid/os/Message;)V
    .locals 1
    .param p1, "wifiCallingStatus"    # I
    .param p2, "wifiCallingPreference"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2569
    const-string v0, "setWifiCallingPreference : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2570
    return-void
.end method

.method public startDtmf(ICLandroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "c"    # C
    .param p3, "result"    # Landroid/os/Message;

    .line 2036
    const/16 v0, 0xe

    .line 2037
    .local v0, "msgId":I
    const/16 v1, 0xe

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2038
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p3}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2040
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2041
    return-void

    .line 2044
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2046
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2047
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1, p2}, Lorg/codeaurora/ims/IImsRadio;->startDtmf(IIC)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2051
    goto :goto_0

    .line 2048
    :catch_0
    move-exception v4

    .line 2049
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2050
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

    .line 2052
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopDtmf(ILandroid/os/Message;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2055
    const/16 v0, 0xf

    .line 2056
    .local v0, "msgId":I
    const/16 v1, 0xf

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2057
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v3

    .line 2059
    .local v3, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2060
    return-void

    .line 2063
    :cond_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2065
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2066
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v4, v5, p1}, Lorg/codeaurora/ims/IImsRadio;->stopDtmf(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    goto :goto_0

    .line 2067
    :catch_0
    move-exception v4

    .line 2068
    .local v4, "ex":Ljava/lang/Exception;
    iget v5, v3, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2069
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

    .line 2071
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public suppSvcStatus(IILandroid/os/Message;)V
    .locals 8
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2384
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

    .line 2386
    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2387
    return-void
.end method

.method public suppSvcStatus(II[Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .param p1, "operationType"    # I
    .param p2, "facility"    # I
    .param p3, "icbNum"    # [Ljava/lang/String;
    .param p4, "serviceClassValue"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2378
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

    .line 2380
    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2381
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

    .line 2391
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

    .line 2393
    invoke-direct/range {p0 .. p6}, Lorg/codeaurora/ims/ImsSenderRxr;->suppSvcStatusInternal(II[Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 2395
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

    .line 2405
    move-object v1, p0

    const/16 v2, 0x1f

    .line 2406
    .local v2, "msgId":I
    const/16 v0, 0x1f

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v3

    .line 2407
    .local v3, "msgIdString":Ljava/lang/String;
    move-object/from16 v4, p6

    invoke-static {v0, v4}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v5

    .line 2409
    .local v5, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v5, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2410
    return-void

    .line 2413
    :cond_0
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2415
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2416
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

    .line 2421
    goto :goto_0

    .line 2418
    :catch_0
    move-exception v0

    .line 2419
    .local v0, "ex":Ljava/lang/Exception;
    iget v6, v5, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2420
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

    .line 2422
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 2687
    const-string v0, "switchWaitingOrHoldingAndActive : Not supported"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2688
    return-void
.end method

.method public unSetImsSmsStatusReport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 530
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSendSmsStatusReportRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 534
    :cond_0
    return-void
.end method

.method public unSetIncomingImsSms(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 519
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingSmsRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 523
    :cond_0
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 479
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 483
    :cond_0
    return-void
.end method

.method public unregisterForCallAutoRejection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 542
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mAutoRejectRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 543
    return-void
.end method

.method public unregisterForCiwlanNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 632
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mCiWlanNotificationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 633
    return-void
.end method

.method public unregisterForConferenceCallStateCompleted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 589
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mConferenceCallStateCompletedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 590
    return-void
.end method

.method public unregisterForGeoLocationDataStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 571
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeoLocationDataStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 572
    return-void
.end method

.method public unregisterForGeolocationRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 444
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mGeolocationRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 445
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 408
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mHandoverStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 409
    return-void
.end method

.method public unregisterForImsServiceDown(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 663
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceDownRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 664
    return-void
.end method

.method public unregisterForImsServiceUp(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 652
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsServiceUpRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 653
    return-void
.end method

.method public unregisterForImsSubConfigChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 370
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsSubConfigChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 371
    return-void
.end method

.method public unregisterForIncomingDtmfStart(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 607
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStartRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 608
    return-void
.end method

.method public unregisterForIncomingDtmfStop(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 616
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mIncomingDtmfStopRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 617
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1011
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mModifyCallRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1012
    return-void
.end method

.method public unregisterForMultiIdentityPendingInfoRequest(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 562
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityInfoPendingRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 563
    return-void
.end method

.method public unregisterForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 558
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiIdentityStatusChangeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 559
    return-void
.end method

.method public unregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 624
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMultiSimVoiceCapabilityChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 625
    return-void
.end method

.method public unregisterForMwi(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 1020
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mMwiRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1021
    return-void
.end method

.method public unregisterForParticipantStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 462
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mParticipantStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 463
    return-void
.end method

.method public unregisterForRefreshConfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 417
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRefreshConfInfoRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 418
    return-void
.end method

.method public unregisterForRegistrationBlockStatus(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 471
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRegistrationBlockStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 472
    return-void
.end method

.method public unregisterForRttMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2704
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mRttMessageRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2705
    return-void
.end method

.method public unregisterForSipDtmfInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 511
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSipDtmfInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 512
    return-void
.end method

.method public unregisterForSmsCallbackModeChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 598
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSmsCallbackModeChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 599
    return-void
.end method

.method public unregisterForSrtpEncryptionUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 641
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrtpEncryptionUpdateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 642
    return-void
.end method

.method public unregisterForSrvDomainChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 580
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvDomainChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 581
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 426
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSrvStatusRegistrations:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 427
    return-void
.end method

.method public unregisterForSsacStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 379
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsaccRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 380
    return-void
.end method

.method public unregisterForSuppServiceIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 490
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mSsIndicationRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 494
    :cond_0
    return-void
.end method

.method public unregisterForTtyStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 435
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mTtyStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 436
    return-void
.end method

.method public unregisterForUssdInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 502
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mUssdInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 503
    return-void
.end method

.method public unregisterForVoWiFiCallQualityUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 453
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoWiFiCallQualityRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 454
    return-void
.end method

.method public unregisterForVoiceInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2712
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVoiceInfoStatusRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2713
    return-void
.end method

.method public unregisterForVopsStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 388
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mVopsRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 389
    return-void
.end method

.method public unregisterForWfcRoamingModeFeatureSupport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 399
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mWfcRoamingModeConfigRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 400
    return-void
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 1328
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

    .line 1329
    return-void
.end method

.method public unsljLogMore(ILjava/lang/String;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "more"    # Ljava/lang/String;

    .line 1332
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

    .line 1333
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1336
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

    .line 1337
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1340
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

    .line 1341
    return-void
.end method

.method public updateVoltePref(ILandroid/os/Message;)V
    .locals 6
    .param p1, "preference"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2626
    const-string v0, "updateVoltePref"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->logv(Ljava/lang/String;)V

    .line 2627
    const/16 v0, 0x32

    .line 2628
    .local v0, "msgId":I
    const/16 v1, 0x32

    invoke-static {v1}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2629
    .local v2, "msgIdString":Ljava/lang/String;
    invoke-static {v1, p2}, Lorg/codeaurora/ims/IFRequest;->obtain(ILandroid/os/Message;)Lorg/codeaurora/ims/IFRequest;

    move-result-object v1

    .line 2631
    .local v1, "rr":Lorg/codeaurora/ims/IFRequest;
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendErrorOnImsRadioDown(Lorg/codeaurora/ims/IFRequest;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2632
    return-void

    .line 2635
    :cond_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queueRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2637
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->logSolicitedRequest(Lorg/codeaurora/ims/IFRequest;)V

    .line 2638
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr;->mImsRadioHal:Lorg/codeaurora/ims/IImsRadio;

    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-interface {v3, v4, p1}, Lorg/codeaurora/ims/IImsRadio;->updateVoltePref(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2642
    goto :goto_0

    .line 2639
    :catch_0
    move-exception v3

    .line 2640
    .local v3, "ex":Ljava/lang/Exception;
    iget v4, v1, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->removeFromQueueAndSendResponse(I)V

    .line 2641
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

    .line 2644
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
