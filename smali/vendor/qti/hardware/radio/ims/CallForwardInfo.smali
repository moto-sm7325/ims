.class public Lvendor/qti/hardware/radio/ims/CallForwardInfo;
.super Ljava/lang/Object;
.source "CallForwardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/CallForwardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

.field public callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

.field public expectMore:Z

.field public number:Ljava/lang/String;

.field public reason:I

.field public serviceClass:I

.field public status:I

.field public timeSeconds:I

.field public toa:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallForwardInfo$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    .line 8
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    .line 9
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    .line 10
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    .line 15
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->expectMore:Z

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 110
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 111
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 113
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 105
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 106
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 63
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "_aidl_parcelable_size":I
    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-gez v1, :cond_1

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 96
    :cond_0
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 96
    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_5

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 96
    :cond_4
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_7

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 96
    :cond_6
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_9

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_8

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 96
    :cond_8
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_9
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_b

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_a

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 96
    :cond_a
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_b
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_d

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_c

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 96
    :cond_c
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_d
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_f

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_e

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 96
    :cond_e
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_f
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_10

    .line 80
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    goto :goto_0

    .line 83
    :cond_10
    iput-object v5, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 85
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_12

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_11

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 96
    :cond_11
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_12
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 87
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    goto :goto_1

    .line 90
    :cond_13
    iput-object v5, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 92
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_15

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_14

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 96
    :cond_14
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_15
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    goto :goto_2

    :cond_16
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->expectMore:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 95
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_17

    .line 98
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    nop

    .line 100
    return-void

    .line 96
    :cond_17
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_18

    .line 96
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_18
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    throw v4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    :goto_1
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->expectMore:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 56
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void
.end method
