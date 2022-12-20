.class public Lvendor/qti/hardware/radio/ims/CallInfo;
.super Ljava/lang/Object;
.source "CallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/CallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

.field public als:I

.field public callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

.field public callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

.field public crsData:Lvendor/qti/hardware/radio/ims/CrsData;

.field public diversionInfo:Ljava/lang/String;

.field public failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

.field public historyInfo:Ljava/lang/String;

.field public index:I

.field public isCalledPartyRinging:Z

.field public isEncrypted:Z

.field public isMT:Z

.field public isMpty:Z

.field public isPreparatory:Z

.field public isVideoConfSupported:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:I

.field public tirMode:I

.field public toa:I

.field public verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallInfo$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallInfo$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/CallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    .line 8
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    .line 9
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    .line 10
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMpty:Z

    .line 11
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMT:Z

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    .line 14
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoice:Z

    .line 15
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoicePrivacy:Z

    .line 17
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->numberPresentation:I

    .line 19
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->namePresentation:I

    .line 22
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEncrypted:Z

    .line 23
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isCalledPartyRinging:Z

    .line 25
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVideoConfSupported:Z

    .line 27
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->tirMode:I

    .line 28
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isPreparatory:Z

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 237
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 238
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 239
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 241
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 228
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 229
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 230
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 231
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 232
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 233
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 234
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 127
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .local v1, "_aidl_parcelable_size":I
    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-gez v1, :cond_1

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 129
    return-void

    .line 219
    :cond_0
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 130
    return-void

    .line 219
    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_5

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 132
    return-void

    .line 219
    :cond_4
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_7

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 134
    return-void

    .line 219
    :cond_6
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_9

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_8

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 136
    return-void

    .line 219
    :cond_8
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_9
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_a

    move v4, v5

    goto :goto_0

    :cond_a
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMpty:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_c

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_b

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 138
    return-void

    .line 219
    :cond_b
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_c
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    goto :goto_1

    :cond_d
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMT:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_f

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_e

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    return-void

    .line 219
    :cond_e
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_f
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_10

    .line 142
    sget-object v4, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    goto :goto_2

    .line 145
    :cond_10
    iput-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 147
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_12

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_11

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 147
    return-void

    .line 219
    :cond_11
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_12
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_14

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_13

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    return-void

    .line 219
    :cond_13
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :cond_14
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    move v4, v5

    goto :goto_3

    :cond_15
    move v4, v6

    :goto_3
    iput-boolean v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoice:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_17

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_16

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    return-void

    .line 219
    :cond_16
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_17
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    move v4, v5

    goto :goto_4

    :cond_18
    move v4, v6

    :goto_4
    iput-boolean v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoicePrivacy:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_1a

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_19

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 153
    return-void

    .line 219
    :cond_19
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_1a
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->number:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_1c

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_1b

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 155
    return-void

    .line 219
    :cond_1b
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_1c
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->numberPresentation:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_1e

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_1d

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 157
    return-void

    .line 219
    :cond_1d
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_1e
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->name:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_20

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_1f

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 159
    return-void

    .line 219
    :cond_1f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_20
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->namePresentation:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_22

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_21

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 161
    return-void

    .line 219
    :cond_21
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_22
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    .line 163
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CallDetails;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    goto :goto_5

    .line 166
    :cond_23
    iput-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    .line 168
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_25

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_24

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 168
    return-void

    .line 219
    :cond_24
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :cond_25
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 170
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    goto :goto_6

    .line 173
    :cond_26
    iput-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    .line 175
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_28

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_27

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 175
    return-void

    .line 219
    :cond_27
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_28
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    move v4, v5

    goto :goto_7

    :cond_29
    move v4, v6

    :goto_7
    iput-boolean v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEncrypted:Z

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_2b

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2a

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 177
    return-void

    .line 219
    :cond_2a
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_2b
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    move v4, v5

    goto :goto_8

    :cond_2c
    move v4, v6

    :goto_8
    iput-boolean v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isCalledPartyRinging:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_2e

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2d

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 179
    return-void

    .line 219
    :cond_2d
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    :cond_2e
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->historyInfo:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_30

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2f

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 181
    return-void

    .line 219
    :cond_2f
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    :cond_30
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    move v4, v5

    goto :goto_9

    :cond_31
    move v4, v6

    :goto_9
    iput-boolean v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVideoConfSupported:Z

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_33

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_32

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 183
    return-void

    .line 219
    :cond_32
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    :cond_33
    :try_start_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    .line 185
    sget-object v4, Lvendor/qti/hardware/radio/ims/VerstatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/VerstatInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    goto :goto_a

    .line 188
    :cond_34
    iput-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    .line 190
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_36

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_35

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 190
    return-void

    .line 219
    :cond_35
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_36
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->tirMode:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_38

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_37

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 192
    return-void

    .line 219
    :cond_37
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_38
    :try_start_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_b

    :cond_39
    move v5, v6

    :goto_b
    iput-boolean v5, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isPreparatory:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3b

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_3a

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 194
    return-void

    .line 219
    :cond_3a
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_3b
    :try_start_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 196
    sget-object v4, Lvendor/qti/hardware/radio/ims/CrsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CrsData;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    goto :goto_c

    .line 199
    :cond_3c
    iput-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    .line 201
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3e

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_3d

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 201
    return-void

    .line 219
    :cond_3d
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    :cond_3e
    :try_start_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    .line 203
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    goto :goto_d

    .line 206
    :cond_3f
    iput-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    .line 208
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_41

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_40

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 208
    return-void

    .line 219
    :cond_40
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :cond_41
    :try_start_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->diversionInfo:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_43

    .line 218
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_42

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 210
    return-void

    .line 219
    :cond_42
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_43
    :try_start_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    .line 212
    sget-object v4, Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    goto :goto_e

    .line 215
    :cond_44
    iput-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 218
    :goto_e
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_45

    .line 221
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 222
    nop

    .line 223
    return-void

    .line 219
    :cond_45
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_46

    .line 219
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_46
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 222
    throw v4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMpty:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMT:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    :goto_0
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoice:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoicePrivacy:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->numberPresentation:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->namePresentation:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/CallDetails;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    :goto_1
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    :goto_2
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEncrypted:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isCalledPartyRinging:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVideoConfSupported:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/VerstatInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 93
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    :goto_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->tirMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isPreparatory:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/CrsData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 102
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    :goto_4
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    if-eqz v2, :cond_5

    .line 105
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 109
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    :goto_5
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->diversionInfo:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    if-eqz v2, :cond_6

    .line 113
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 117
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 120
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 121
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    return-void
.end method
