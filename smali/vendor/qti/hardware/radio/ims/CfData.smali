.class public Lvendor/qti/hardware/radio/ims/CfData;
.super Ljava/lang/Object;
.source "CfData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/CfData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cfInfo:[Lvendor/qti/hardware/radio/ims/CallForwardInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lvendor/qti/hardware/radio/ims/CfData$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CfData$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/CfData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 7
    .param p1, "_v"    # Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 56
    .local v1, "_clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "_mask":I
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 59
    .local v5, "o":Ljava/lang/Object;
    invoke-direct {p0, v5}, Lvendor/qti/hardware/radio/ims/CfData;->describeContents(Ljava/lang/Object;)I

    move-result v6

    or-int/2addr v2, v6

    .line 58
    .end local v5    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return v2

    .line 63
    .end local v2    # "_mask":I
    :cond_2
    instance-of v2, p1, Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    .line 64
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 66
    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CfData;->cfInfo:[Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CfData;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 51
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 37
    .local v1, "_aidl_parcelable_size":I
    const-string v2, "Overflow in the size of parcelable"

    const v3, 0x7fffffff

    if-gez v1, :cond_1

    .line 41
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 44
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    return-void

    .line 42
    :cond_0
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 38
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, v0

    if-lt v4, v1, :cond_3

    .line 41
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_2

    .line 44
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 38
    return-void

    .line 42
    :cond_2
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 39
    :cond_3
    :try_start_1
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    iput-object v4, p0, Lvendor/qti/hardware/radio/ims/CfData;->cfInfo:[Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_4

    .line 44
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    nop

    .line 46
    return-void

    .line 42
    :cond_4
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    :catchall_0
    move-exception v4

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_5

    .line 42
    new-instance v3, Landroid/os/BadParcelableException;

    invoke-direct {v3, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 44
    :cond_5
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    throw v4
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 25
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CfData;->cfInfo:[Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 28
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    return-void
.end method
