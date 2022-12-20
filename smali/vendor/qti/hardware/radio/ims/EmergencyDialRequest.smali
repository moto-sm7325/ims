.class public Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
.super Ljava/lang/Object;
.source "EmergencyDialRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public categories:I

.field public dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

.field public hasKnownUserIntentEmergency:Z

.field public isTesting:Z

.field public route:I

.field public urns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->categories:I

    .line 10
    iput v0, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->route:I

    .line 11
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->hasKnownUserIntentEmergency:Z

    .line 12
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->isTesting:Z

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 89
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 82
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_aidl_parcelable_size":I
    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-gez v1, :cond_1

    .line 72
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 75
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 73
    :cond_0
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3

    .line 72
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    .line 75
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 73
    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 56
    sget-object v4, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/DialRequest;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    goto :goto_0

    .line 59
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 61
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_6

    .line 72
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_5

    .line 75
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 73
    :cond_5
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->categories:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_8

    .line 72
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_7

    .line 75
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 73
    :cond_7
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_8
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->urns:[Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_a

    .line 72
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_9

    .line 75
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 73
    :cond_9
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_a
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->route:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_c

    .line 72
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_b

    .line 75
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 73
    :cond_b
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_c
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_d

    move v4, v5

    goto :goto_1

    :cond_d
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->hasKnownUserIntentEmergency:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_f

    .line 72
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_e

    .line 75
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 73
    :cond_e
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_f
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_2

    :cond_10
    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->isTesting:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_11

    .line 75
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    nop

    .line 77
    return-void

    .line 73
    :cond_11
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_12

    .line 73
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_12
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    throw v4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 30
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    if-eqz v2, :cond_0

    .line 32
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/DialRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    :goto_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->categories:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->urns:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 40
    iget v1, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->route:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->hasKnownUserIntentEmergency:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->isTesting:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 44
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void
.end method
