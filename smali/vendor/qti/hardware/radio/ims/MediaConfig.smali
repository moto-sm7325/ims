.class public Lvendor/qti/hardware/radio/ims/MediaConfig;
.super Ljava/lang/Object;
.source "MediaConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/MediaConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public maxAvcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

.field public maxHevcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

.field public screenSize:Lvendor/qti/hardware/radio/ims/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lvendor/qti/hardware/radio/ims/MediaConfig$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/MediaConfig$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/MediaConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 99
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 101
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxAvcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/MediaConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 92
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxHevcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/MediaConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 93
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->screenSize:Lvendor/qti/hardware/radio/ims/Size;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/MediaConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 94
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

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 57
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_aidl_parcelable_size":I
    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-gez v1, :cond_1

    .line 82
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 83
    :cond_0
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3

    .line 82
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 83
    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 62
    sget-object v4, Lvendor/qti/hardware/radio/ims/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/Size;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxAvcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    goto :goto_0

    .line 65
    :cond_4
    iput-object v5, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxAvcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    .line 67
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_6

    .line 82
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_5

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 83
    :cond_5
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 69
    sget-object v4, Lvendor/qti/hardware/radio/ims/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/Size;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxHevcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    goto :goto_1

    .line 72
    :cond_7
    iput-object v5, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxHevcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    .line 74
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_9

    .line 82
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_8

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 83
    :cond_8
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_9
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 76
    sget-object v4, Lvendor/qti/hardware/radio/ims/Size;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/Size;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->screenSize:Lvendor/qti/hardware/radio/ims/Size;

    goto :goto_2

    .line 79
    :cond_a
    iput-object v5, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->screenSize:Lvendor/qti/hardware/radio/ims/Size;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :goto_2
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_b

    .line 85
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    nop

    .line 87
    return-void

    .line 83
    :cond_b
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_c

    .line 83
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_c
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
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
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxAvcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxAvcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/Size;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxHevcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxHevcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/Size;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    :goto_1
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->screenSize:Lvendor/qti/hardware/radio/ims/Size;

    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MediaConfig;->screenSize:Lvendor/qti/hardware/radio/ims/Size;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/Size;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 50
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void
.end method
