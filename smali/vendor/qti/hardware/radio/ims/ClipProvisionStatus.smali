.class public Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;
.super Ljava/lang/Object;
.source "ClipProvisionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clipStatus:I

.field public errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->clipStatus:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 71
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 73
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 66
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 45
    .local v1, "_aidl_parcelable_size":I
    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-gez v1, :cond_1

    .line 56
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    return-void

    .line 57
    :cond_0
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3

    .line 56
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void

    .line 57
    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->clipStatus:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_5

    .line 56
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 57
    :cond_4
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 50
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    goto :goto_0

    .line 53
    :cond_6
    const/4 v4, 0x0

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :goto_0
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_7

    .line 59
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    nop

    .line 61
    return-void

    .line 57
    :cond_7
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_8

    .line 57
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_8
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    throw v4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 26
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget v2, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->clipStatus:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    if-eqz v2, :cond_0

    .line 29
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 36
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    return-void
.end method
