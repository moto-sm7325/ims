.class public Lorg/codeaurora/ims/DriverCallIms;
.super Ljava/lang/Object;
.source "DriverCallIms.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/DriverCallIms$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/codeaurora/ims/DriverCallIms;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONF_SUPPORT_INDICATED:I = 0x1

.field public static final CONF_SUPPORT_NONE:I = 0x0

.field public static final CONF_VIDEO_SUPPORTED:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "DRIVERCALL-IMS"

.field public static final UPDATE_CALL_DETAILS:I = 0x20

.field public static final UPDATE_CALL_PROGRESS_INFO:I = 0x800

.field public static final UPDATE_CONF_SUPPORT:I = 0x200

.field public static final UPDATE_CRS_INFO:I = 0x400

.field public static final UPDATE_DIVERSION_INFO:I = 0x1000

.field public static final UPDATE_ENCRYPTION:I = 0x80

.field public static final UPDATE_HISTORY_INFO:I = 0x100

.field public static final UPDATE_INDEX:I = 0x2

.field public static final UPDATE_IS_MPTY:I = 0x10

.field public static final UPDATE_IS_MT:I = 0x8

.field public static final UPDATE_NONE:I = 0x0

.field public static final UPDATE_NUMBER:I = 0x4

.field public static final UPDATE_STATE:I = 0x1


# instance fields
.field public TOA:I

.field public additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

.field public als:I

.field public callDetails:Lorg/codeaurora/ims/CallDetails;

.field public callFailCause:Landroid/telephony/ims/ImsReasonInfo;

.field public callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

.field public crsData:Lorg/codeaurora/ims/CrsData;

.field public diversionInfo:Ljava/lang/String;

.field public historyInfo:Ljava/lang/String;

.field public index:I

.field public isEncrypted:Z

.field public isMT:Z

.field public isMpty:Z

.field public isPreparatory:Z

.field public isTirOverwriteAllowed:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field private mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

.field public mCallFailReason:I

.field public mConfSupported:I

.field public mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

.field private final mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:Lorg/codeaurora/ims/DriverCallIms$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 112
    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 153
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 154
    new-instance v0, Lorg/codeaurora/ims/VerstatInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/VerstatInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    .line 155
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/CrsData;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 156
    new-instance v0, Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallProgressInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 157
    new-instance v0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;)V
    .locals 1
    .param p1, "callComposerInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p2, "verstatInfo"    # Lorg/codeaurora/ims/VerstatInfo;

    .line 169
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/VerstatInfo;)V

    .line 170
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/CrsData;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 171
    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    .line 172
    new-instance v0, Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallProgressInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 173
    new-instance v0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 4
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 112
    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 122
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 123
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 124
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 125
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 126
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/CrsData;-><init>(Lorg/codeaurora/ims/CrsData;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 127
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 128
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 129
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 130
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 131
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 132
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 133
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->als:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 134
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 135
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 136
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 137
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 138
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 139
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 140
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 141
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 142
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    .line 143
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 144
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    .line 145
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    .line 146
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 147
    new-instance v0, Lorg/codeaurora/ims/CallProgressInfo;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/CallProgressInfo;-><init>(Lorg/codeaurora/ims/CallProgressInfo;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 148
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 149
    new-instance v0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>(Lorg/codeaurora/ims/MsimAdditionalCallInfo;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 150
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/VerstatInfo;)V
    .locals 1
    .param p1, "verstatInfo"    # Lorg/codeaurora/ims/VerstatInfo;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 112
    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 161
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 162
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/CrsData;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 163
    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    .line 164
    new-instance v0, Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallProgressInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 165
    new-instance v0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 166
    return-void
.end method

.method public static presentationFromCLIP(I)I
    .locals 3
    .param p0, "cli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 282
    packed-switch p0, :pswitch_data_0

    .line 288
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal presentation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 285
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 284
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 283
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/DriverCallIms;->compareTo(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 2
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 297
    iget v0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iget v1, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    if-ge v0, v1, :cond_0

    .line 298
    const/4 v0, -0x1

    return v0

    .line 299
    :cond_0
    if-ne v0, v1, :cond_1

    .line 300
    const/4 v0, 0x0

    return v0

    .line 302
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    return-object v0
.end method

.method public getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    return-object v0
.end method

.method public isConfSupportIndicated()Z
    .locals 2

    .line 272
    iget v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isVideoConfSupported()Z
    .locals 2

    .line 276
    iget v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",toa="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v2, :cond_0

    const-string v2, "conf"

    goto :goto_0

    :cond_0
    const-string v2, "norm"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v2, :cond_1

    const-string v2, "mt"

    goto :goto_1

    :cond_1
    const-string v2, "mo"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    if-eqz v2, :cond_2

    const-string v2, "voc"

    goto :goto_2

    :cond_2
    const-string v2, "nonvoc"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v1, :cond_3

    const-string v1, "evp"

    goto :goto_3

    :cond_3
    const-string v1, "noevp"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",,cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Call Details ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",CallFailCause Code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 314
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",CallFailCause String= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 315
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", historyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 317
    invoke-static {v1}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Conf. Support="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTirOverwriteAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPreparatory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", CRS data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Call progress Info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", diversionInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", additional call info ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    return-object v0
.end method

.method public update(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 6
    .param p1, "update"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x0

    return v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 188
    .local v0, "changed":I
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_1

    .line 189
    iput-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 190
    or-int/lit8 v0, v0, 0x1

    .line 192
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    if-eq v1, v2, :cond_2

    .line 193
    iput v2, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 194
    or-int/lit8 v0, v0, 0x2

    .line 196
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    if-eq v1, v2, :cond_3

    .line 197
    iput-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 198
    or-int/lit8 v0, v0, 0x4

    .line 200
    :cond_3
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eq v1, v2, :cond_4

    .line 201
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 202
    or-int/lit8 v0, v0, 0x8

    .line 204
    :cond_4
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eq v1, v2, :cond_5

    .line 205
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 206
    or-int/lit8 v0, v0, 0x10

    .line 208
    :cond_5
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v1, :cond_a

    .line 209
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-nez v1, :cond_6

    .line 210
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 211
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 212
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    .line 214
    :cond_6
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    .line 215
    .local v1, "imsReasonCode":I
    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    .line 216
    .local v2, "imsReasonExtraCode":I
    iget-object v3, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "imsReasonExtraMessage":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 218
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    .line 220
    :cond_7
    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 221
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    .line 223
    :cond_8
    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_9

    .line 224
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    .line 226
    :cond_9
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 230
    .end local v1    # "imsReasonCode":I
    .end local v2    # "imsReasonExtraCode":I
    .end local v3    # "imsReasonExtraMessage":Ljava/lang/String;
    :cond_a
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/CallDetails;->update(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 231
    or-int/lit8 v0, v0, 0x20

    .line 233
    :cond_b
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    if-eq v1, v2, :cond_c

    .line 234
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 235
    or-int/lit16 v0, v0, 0x80

    .line 237
    :cond_c
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 238
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 239
    or-int/lit16 v0, v0, 0x100

    .line 241
    :cond_d
    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    if-eq v1, v2, :cond_e

    .line 242
    iput v2, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 243
    or-int/lit16 v0, v0, 0x200

    .line 245
    :cond_e
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/CrsData;->update(Lorg/codeaurora/ims/CrsData;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 246
    or-int/lit16 v0, v0, 0x400

    .line 248
    :cond_f
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    if-eq v1, v2, :cond_10

    .line 249
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 250
    or-int/lit16 v0, v0, 0x400

    .line 252
    :cond_10
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 253
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 254
    or-int/lit16 v0, v0, 0x800

    .line 256
    :cond_11
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 257
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 258
    or-int/lit16 v0, v0, 0x1000

    .line 260
    :cond_12
    return v0
.end method
