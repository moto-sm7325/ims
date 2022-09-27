.class public Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
.super Ljava/lang/Object;
.source "CallComposerDialRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

.field public dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 81
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 83
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 85
    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 78
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 49
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_aidl_parcelable_size":I
    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-gez v1, :cond_1

    .line 67
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 68
    :cond_0
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3

    .line 67
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 68
    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 54
    sget-object v4, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/DialRequest;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    goto :goto_0

    .line 57
    :cond_4
    iput-object v5, p0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 59
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_6

    .line 67
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_5

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 68
    :cond_5
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 61
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    goto :goto_1

    .line 64
    :cond_7
    iput-object v5, p0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :goto_1
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_8

    .line 70
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    nop

    .line 72
    return-void

    .line 68
    :cond_8
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_9

    .line 68
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_9
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    throw v4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
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
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/DialRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-virtual {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 42
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    return-void
.end method
