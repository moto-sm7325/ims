.class public Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
.super Ljava/lang/Object;
.source "StkCcUnsolSsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

.field public cfData:[Lvendor/qti/hardware/radio/ims/CfData;

.field public requestType:I

.field public result:I

.field public serviceClass:I

.field public serviceType:I

.field public ssInfoData:[Lvendor/qti/hardware/radio/ims/SsInfoData;

.field public teleserviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceType:I

    .line 8
    iput v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->requestType:I

    .line 9
    iput v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->teleserviceType:I

    .line 10
    iput v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceClass:I

    .line 11
    iput v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->result:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 7
    .param p1, "_v"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 86
    .local v1, "_clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, "_mask":I
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 89
    .local v5, "o":Ljava/lang/Object;
    invoke-direct {p0, v5}, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->describeContents(Ljava/lang/Object;)I

    move-result v6

    or-int/2addr v2, v6

    .line 88
    .end local v5    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return v2

    .line 93
    .end local v2    # "_mask":I
    :cond_2
    instance-of v2, p1, Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    .line 94
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 96
    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->ssInfoData:[Lvendor/qti/hardware/radio/ims/SsInfoData;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cfData:[Lvendor/qti/hardware/radio/ims/CfData;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 80
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 81
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5
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

    .line 69
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 70
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

    .line 69
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 70
    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceType:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_5

    .line 69
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 70
    :cond_4
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->requestType:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_7

    .line 69
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_6

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 70
    :cond_6
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->teleserviceType:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_9

    .line 69
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_8

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 70
    :cond_8
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_9
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceClass:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_b

    .line 69
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_a

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 70
    :cond_a
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_b
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->result:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_d

    .line 69
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_c

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 70
    :cond_c
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_d
    :try_start_6
    sget-object v4, Lvendor/qti/hardware/radio/ims/SsInfoData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/hardware/radio/ims/SsInfoData;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->ssInfoData:[Lvendor/qti/hardware/radio/ims/SsInfoData;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_f

    .line 69
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_e

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 70
    :cond_e
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_f
    :try_start_7
    sget-object v4, Lvendor/qti/hardware/radio/ims/CfData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/hardware/radio/ims/CfData;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cfData:[Lvendor/qti/hardware/radio/ims/CfData;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_11

    .line 69
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_10

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 70
    :cond_10
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_11
    :try_start_8
    sget-object v4, Lvendor/qti/hardware/radio/ims/CbNumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/hardware/radio/ims/CbNumInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 69
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_12

    .line 72
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    nop

    .line 74
    return-void

    .line 70
    :cond_12
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_13

    .line 70
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_13
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    throw v4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 32
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v2, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v2, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v2, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v2, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceClass:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v2, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->result:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->ssInfoData:[Lvendor/qti/hardware/radio/ims/SsInfoData;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 39
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cfData:[Lvendor/qti/hardware/radio/ims/CfData;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 40
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 41
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
