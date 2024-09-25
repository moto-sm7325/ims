.class public final Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;
.super Ljava/lang/Object;
.source "VosTouchInfo.java"


# instance fields
.field public touch:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

.field public touchDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touch:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touchDuration:I

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 61
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 62
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0xc

    int-to-long v5, v3

    .line 63
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    .line 62
    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 66
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 68
    new-instance v5, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    invoke-direct {v5}, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;-><init>()V

    .line 69
    .local v5, "_hidl_vec_element":Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;
    mul-int/lit8 v6, v4, 0xc

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 70
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v5    # "_hidl_vec_element":Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 93
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 94
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 95
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 96
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0xc

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 97
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 98
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    mul-int/lit8 v5, v3, 0xc

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 103
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 104
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 13
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 14
    return v0

    .line 16
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 17
    return v1

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    if-eq v2, v3, :cond_2

    .line 20
    return v1

    .line 22
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;

    .line 23
    .local v2, "other":Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touch:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touch:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 24
    return v1

    .line 26
    :cond_3
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touchDuration:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touchDuration:I

    if-eq v3, v4, :cond_4

    .line 27
    return v1

    .line 29
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 34
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touch:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    .line 35
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touchDuration:I

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 79
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touch:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 80
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touchDuration:I

    .line 81
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 52
    const-wide/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 53
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 54
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ".touch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touch:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", .touchDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touchDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 108
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touch:Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/Coordinate2D;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 109
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->touchDuration:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 110
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 84
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 85
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/VosTouchInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 87
    return-void
.end method
