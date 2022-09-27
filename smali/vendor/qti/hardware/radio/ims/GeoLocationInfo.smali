.class public Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
.super Ljava/lang/Object;
.source "GeoLocationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/GeoLocationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addressInfo:Lvendor/qti/hardware/radio/ims/AddressInfo;

.field public lat:D

.field public lon:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/GeoLocationInfo$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lat:D

    .line 8
    iput-wide v0, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lon:D

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 75
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 77
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->addressInfo:Lvendor/qti/hardware/radio/ims/AddressInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 70
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 45
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    .local v1, "_aidl_parcelable_size":I
    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-gez v1, :cond_1

    .line 60
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 63
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void

    .line 61
    :cond_0
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3

    .line 60
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    .line 63
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 61
    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lat:D

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_5

    .line 60
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    .line 63
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 61
    :cond_4
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lon:D

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_7

    .line 60
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    .line 63
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 61
    :cond_6
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 54
    sget-object v4, Lvendor/qti/hardware/radio/ims/AddressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/AddressInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->addressInfo:Lvendor/qti/hardware/radio/ims/AddressInfo;

    goto :goto_0

    .line 57
    :cond_8
    const/4 v4, 0x0

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->addressInfo:Lvendor/qti/hardware/radio/ims/AddressInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :goto_0
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_9

    .line 63
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    nop

    .line 65
    return-void

    .line 61
    :cond_9
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_a

    .line 61
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_a
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    throw v4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 27
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-wide v2, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lat:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    iget-wide v2, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lon:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 30
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->addressInfo:Lvendor/qti/hardware/radio/ims/AddressInfo;

    if-eqz v2, :cond_0

    .line 31
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->addressInfo:Lvendor/qti/hardware/radio/ims/AddressInfo;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/AddressInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 38
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    return-void
.end method
