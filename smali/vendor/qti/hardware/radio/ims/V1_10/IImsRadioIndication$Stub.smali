.class public abstract Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1365
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1368
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1391
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1438
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1439
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1440
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1441
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1442
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    new-array v4, v1, [B

    fill-array-data v4, :array_2

    new-array v5, v1, [B

    fill-array-data v5, :array_3

    new-array v6, v1, [B

    fill-array-data v6, :array_4

    new-array v7, v1, [B

    fill-array-data v7, :array_5

    new-array v8, v1, [B

    fill-array-data v8, :array_6

    new-array v9, v1, [B

    fill-array-data v9, :array_7

    new-array v10, v1, [B

    fill-array-data v10, :array_8

    new-array v11, v1, [B

    fill-array-data v11, :array_9

    new-array v12, v1, [B

    fill-array-data v12, :array_a

    new-array v13, v1, [B

    fill-array-data v13, :array_b

    filled-new-array/range {v2 .. v13}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        0x7ct
        0x75t
        0x33t
        -0x57t
        0x20t
        0x6t
        0x3t
        0x38t
        -0x41t
        -0x18t
        0x35t
        -0x32t
        0x1at
        0x79t
        0x31t
        -0x63t
        -0x2at
        -0x61t
        0x5ft
        0x33t
        0x34t
        0x64t
        0xct
        -0x48t
        0x6at
        0x52t
        0x3t
        -0x59t
        -0x27t
        0x6t
        0x1dt
        0x7bt
    .end array-data

    :array_1
    .array-data 1
        0x62t
        0x34t
        -0x2ct
        -0x2dt
        0x0t
        0x57t
        0x68t
        0x4bt
        -0x6bt
        -0x76t
        -0x46t
        0x1et
        0x78t
        0x6et
        -0x59t
        0x71t
        -0x6bt
        0x14t
        -0x73t
        -0x64t
        -0x52t
        0x46t
        0x23t
        -0x1ct
        0x1t
        -0x4et
        0x30t
        0x53t
        -0x44t
        -0x2t
        0x4ct
        -0x79t
    .end array-data

    :array_2
    .array-data 1
        -0x2ft
        0x6bt
        -0x7ft
        -0x6bt
        -0x40t
        0xdt
        0x20t
        0xbt
        0x6bt
        0x23t
        -0xdt
        -0x46t
        -0x6ct
        0x20t
        0x59t
        0xft
        0x6dt
        0xdt
        -0x78t
        -0x11t
        -0x68t
        0x2t
        -0x40t
        -0x49t
        0x1et
        0x4et
        0x15t
        -0x4ct
        0x0t
        -0x6bt
        0x5et
        0x77t
    .end array-data

    :array_3
    .array-data 1
        -0x67t
        -0x34t
        0xdt
        0xft
        0x18t
        -0x4t
        0x72t
        0x34t
        -0x45t
        0x50t
        -0x4bt
        -0x17t
        -0x6et
        -0x4dt
        -0x57t
        -0x45t
        0x1bt
        -0x80t
        0xbt
        0x72t
        0x2ct
        0x70t
        -0x2ct
        0x63t
        0x60t
        0x49t
        0x1ct
        -0x77t
        -0x29t
        -0x14t
        0x30t
        -0x7ft
    .end array-data

    :array_4
    .array-data 1
        0x2ct
        0x5ft
        0x8t
        -0x77t
        0x4ct
        0x3dt
        -0x6ft
        0x7ct
        0x7dt
        0x61t
        -0x5t
        0x55t
        -0x13t
        -0x78t
        -0x64t
        -0x7t
        -0x3ct
        -0x72t
        -0x5ft
        0x76t
        0x11t
        -0x70t
        -0x3t
        -0x22t
        0x69t
        0x78t
        -0x4ct
        -0x4dt
        -0x27t
        -0x69t
        0x73t
        0x74t
    .end array-data

    :array_5
    .array-data 1
        -0x6et
        -0x20t
        -0x70t
        -0x69t
        -0x12t
        -0x13t
        0x18t
        0x37t
        -0x23t
        -0xft
        0x54t
        0x68t
        -0x5at
        -0x15t
        0x3at
        -0x2ct
        0x15t
        -0x45t
        0x7et
        -0x64t
        0x6bt
        -0x2ft
        0x0t
        -0x71t
        0x49t
        0x34t
        -0x72t
        0x25t
        0x24t
        -0x26t
        -0x9t
        0xet
    .end array-data

    :array_6
    .array-data 1
        0x20t
        0x1et
        0x57t
        -0x52t
        0x68t
        0x16t
        -0x3dt
        -0x33t
        0x6dt
        -0x41t
        0x6et
        -0x23t
        0x79t
        0x7t
        0x44t
        0x65t
        -0x3ft
        0x71t
        -0x80t
        -0x4t
        -0xat
        -0x34t
        0x2t
        -0x37t
        -0x6at
        0x5bt
        0x23t
        0x26t
        -0x24t
        0x2t
        -0x4ft
        0x1dt
    .end array-data

    :array_7
    .array-data 1
        -0x6ct
        -0x1dt
        0x1et
        -0x60t
        -0x45t
        0xbt
        -0x1ct
        0x2bt
        0x12t
        0x1at
        -0x18t
        0x54t
        -0x6ct
        -0x5dt
        -0x40t
        -0x68t
        0x72t
        0x22t
        0x29t
        0x7dt
        -0x3ct
        0x5bt
        -0x5ft
        -0x43t
        0x27t
        -0xet
        0x38t
        0x7dt
        -0x37t
        -0x7ct
        0x20t
        -0x16t
    .end array-data

    :array_8
    .array-data 1
        0x50t
        -0xbt
        0x58t
        -0x3et
        0x73t
        -0x11t
        0x7ft
        0x78t
        -0x12t
        -0x15t
        -0x3bt
        -0x11t
        -0x61t
        -0x1ct
        -0x28t
        -0x5ft
        0x18t
        0x74t
        0x65t
        0x5t
        -0x4ft
        -0x1t
        0x5dt
        0x74t
        0x7ct
        -0x2ct
        -0x4bt
        -0x2et
        -0x1ct
        -0x7dt
        0x77t
        0x20t
    .end array-data

    :array_9
    .array-data 1
        -0x5t
        0x32t
        -0xbt
        0x0t
        0x37t
        -0x23t
        0xdt
        -0x54t
        0x15t
        -0x29t
        0x38t
        -0x43t
        0x5bt
        0x2et
        0x44t
        0x37t
        0x60t
        -0x38t
        -0x60t
        -0x20t
        0x41t
        -0x55t
        -0x52t
        -0x74t
        0x6at
        -0x7dt
        -0x1at
        -0x4t
        -0xbt
        0xat
        0x23t
        -0x7ct
    .end array-data

    :array_a
    .array-data 1
        0x3bt
        0x14t
        -0x1ct
        -0x45t
        -0x7ft
        0xft
        0x2ft
        -0xct
        -0x7et
        -0x6ct
        0x22t
        0x4et
        0x3ct
        -0x6ft
        -0x16t
        -0x28t
        -0x53t
        -0x9t
        -0xft
        0x4dt
        0x6at
        -0x6ct
        0x5et
        0xft
        0x50t
        0xbt
        -0x14t
        0x78t
        -0x6et
        -0x3et
        0x76t
        0x7et
    .end array-data

    :array_b
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1373
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.10::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.9::IImsRadioIndication"

    const-string v3, "vendor.qti.hardware.radio.ims@1.8::IImsRadioIndication"

    const-string v4, "vendor.qti.hardware.radio.ims@1.7::IImsRadioIndication"

    const-string v5, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    const-string v6, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    const-string v7, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v8, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v9, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const-string v10, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    const-string v11, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    const-string v12, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1397
    const-string v0, "vendor.qti.hardware.radio.ims@1.10::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1426
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1448
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1450
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1478
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "vendor.qti.hardware.radio.ims@1.10::IImsRadioIndication"

    const-string v4, "vendor.qti.hardware.radio.ims@1.9::IImsRadioIndication"

    const-string v5, "vendor.qti.hardware.radio.ims@1.7::IImsRadioIndication"

    const-string v6, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v7, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v8, "vendor.qti.hardware.radio.ims@1.8::IImsRadioIndication"

    const-string v9, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    const-string v10, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const/4 v11, 0x0

    const-string v12, "android.hidl.base@1.0::IBase"

    const-string v13, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    const-string v14, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2138
    :sswitch_0
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2140
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2141
    goto/16 :goto_1

    .line 2127
    :sswitch_1
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v3

    .line 2130
    .local v3, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2131
    invoke-virtual {v3, v2}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2132
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2133
    goto/16 :goto_1

    .line 2117
    .end local v3    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->ping()V

    .line 2120
    invoke-virtual {v2, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2121
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2122
    goto/16 :goto_1

    .line 2112
    :sswitch_3
    goto/16 :goto_1

    .line 2104
    :sswitch_4
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 2107
    goto/16 :goto_1

    .line 2070
    :sswitch_5
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v3

    .line 2073
    .local v3, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v2, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2075
    new-instance v4, Landroid/os/HwBlob;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 2077
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2078
    .local v5, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2079
    const-wide/16 v6, 0xc

    invoke-virtual {v4, v6, v7, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2080
    new-instance v6, Landroid/os/HwBlob;

    mul-int/lit8 v7, v5, 0x20

    invoke-direct {v6, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 2081
    .local v6, "childBlob":Landroid/os/HwBlob;
    const/4 v7, 0x0

    .local v7, "_hidl_index_0":I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 2083
    mul-int/lit8 v8, v7, 0x20

    int-to-long v8, v8

    .line 2084
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 2086
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 2090
    invoke-virtual {v6, v8, v9, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2091
    nop

    .line 2081
    .end local v8    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2087
    .restart local v8    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2094
    .end local v7    # "_hidl_index_0":I
    .end local v8    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8, v6}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2096
    .end local v5    # "_hidl_vec_size":I
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2098
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2099
    goto/16 :goto_1

    .line 2059
    .end local v3    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 2062
    .local v3, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v2, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2063
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2064
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2065
    goto/16 :goto_1

    .line 2047
    .end local v3    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2049
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 2050
    .local v3, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 2051
    .local v4, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2052
    invoke-virtual {v2, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2053
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2054
    goto/16 :goto_1

    .line 2036
    .end local v3    # "fd":Landroid/os/NativeHandle;
    .end local v4    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    .line 2039
    .local v3, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2040
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2041
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2042
    goto/16 :goto_1

    .line 2026
    .end local v3    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2028
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;-><init>()V

    .line 2029
    .local v3, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2030
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onIncomingCallAutoRejected_1_10(Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;)V

    .line 2031
    goto/16 :goto_1

    .line 2016
    .end local v3    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;
    :sswitch_a
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2018
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;-><init>()V

    .line 2019
    .local v3, "info":Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2020
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onPreAlertingCallInfoAvailable(Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;)V

    .line 2021
    goto/16 :goto_1

    .line 2006
    .end local v3    # "info":Lvendor/qti/hardware/radio/ims/V1_10/PreAlertingCallInfo;
    :sswitch_b
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;-><init>()V

    .line 2009
    .local v3, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2010
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onModifyCall_1_9(Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;)V

    .line 2011
    goto/16 :goto_1

    .line 1997
    .end local v3    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_9/CallModifyInfo;
    :sswitch_c
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1999
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2000
    .local v3, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallStateChanged_1_9(Ljava/util/ArrayList;)V

    .line 2001
    goto/16 :goto_1

    .line 1989
    .end local v3    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_9/CallInfo;>;"
    :sswitch_d
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onConferenceCallStateCompleted()V

    .line 1992
    goto/16 :goto_1

    .line 1980
    :sswitch_e
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1983
    .local v3, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallStateChanged_1_8(Ljava/util/ArrayList;)V

    .line 1984
    goto/16 :goto_1

    .line 1971
    .end local v3    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;>;"
    :sswitch_f
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1973
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1974
    .local v3, "mode":I
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onSmsCallBackModeChanged(I)V

    .line 1975
    goto/16 :goto_1

    .line 1962
    .end local v3    # "mode":I
    :sswitch_10
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1964
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1965
    .local v3, "domain":I
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onServiceDomainChanged(I)V

    .line 1966
    goto/16 :goto_1

    .line 1953
    .end local v3    # "domain":I
    :sswitch_11
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1955
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1956
    .local v3, "configCode":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onSipDtmfReceived(Ljava/lang/String;)V

    .line 1957
    goto/16 :goto_1

    .line 1944
    .end local v3    # "configCode":Ljava/lang/String;
    :sswitch_12
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1946
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1947
    .local v3, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallStateChanged_1_7(Ljava/util/ArrayList;)V

    .line 1948
    goto/16 :goto_1

    .line 1935
    .end local v3    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;>;"
    :sswitch_13
    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1938
    .local v3, "geoLocationDataStatus":I
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onRetrievingGeoLocationDataStatus(I)V

    .line 1939
    goto/16 :goto_1

    .line 1925
    .end local v3    # "geoLocationDataStatus":I
    :sswitch_14
    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1927
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;-><init>()V

    .line 1928
    .local v3, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1929
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onIncomingCallAutoRejected_1_6(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;)V

    .line 1930
    goto/16 :goto_1

    .line 1913
    .end local v3    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    :sswitch_15
    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1915
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;-><init>()V

    .line 1916
    .restart local v3    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1917
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 1918
    .local v4, "callComposerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    invoke-virtual {v4, v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1919
    invoke-virtual {p0, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    .line 1920
    goto/16 :goto_1

    .line 1903
    .end local v3    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    .end local v4    # "callComposerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    :sswitch_16
    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 1906
    .local v3, "info":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1907
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    .line 1908
    goto/16 :goto_1

    .line 1891
    .end local v3    # "info":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    :sswitch_17
    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1894
    .local v3, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1895
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v5}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1896
    .local v5, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v5, v1}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1897
    invoke-virtual {p0, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1898
    goto/16 :goto_1

    .line 1881
    .end local v3    # "type":I
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_18
    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;-><init>()V

    .line 1884
    .local v3, "handover":Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1885
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onHandover_1_6(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)V

    .line 1886
    goto/16 :goto_1

    .line 1871
    .end local v3    # "handover":Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;
    :sswitch_19
    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;-><init>()V

    .line 1874
    .local v3, "regInfo":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1875
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onRegistrationChanged_1_6(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    .line 1876
    goto/16 :goto_1

    .line 1862
    .end local v3    # "regInfo":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    :sswitch_1a
    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1864
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1865
    .local v3, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onServiceStatusChanged_1_6(Ljava/util/ArrayList;)V

    .line 1866
    goto/16 :goto_1

    .line 1853
    .end local v3    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    :sswitch_1b
    invoke-virtual {v1, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1855
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1856
    .local v3, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallStateChanged_1_6(Ljava/util/ArrayList;)V

    .line 1857
    goto/16 :goto_1

    .line 1842
    .end local v3    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;>;"
    :sswitch_1c
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1845
    .local v3, "type":I
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1846
    .local v4, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v4, v1}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1847
    invoke-virtual {p0, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1848
    goto/16 :goto_1

    .line 1833
    .end local v3    # "type":I
    .end local v4    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_1d
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1836
    .local v3, "wfcRoamingConfigurationSupport":Z
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    .line 1837
    goto/16 :goto_1

    .line 1823
    .end local v3    # "wfcRoamingConfigurationSupport":Z
    :sswitch_1e
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;-><init>()V

    .line 1826
    .local v3, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1827
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onIncomingCallAutoRejected_1_5(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)V

    .line 1828
    goto/16 :goto_1

    .line 1814
    .end local v3    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    :sswitch_1f
    invoke-virtual {v1, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1816
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1817
    .local v3, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallStateChanged_1_5(Ljava/util/ArrayList;)V

    .line 1818
    goto/16 :goto_1

    .line 1805
    .end local v3    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    :sswitch_20
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1808
    .local v3, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallStateChanged_1_4(Ljava/util/ArrayList;)V

    .line 1809
    goto/16 :goto_1

    .line 1797
    .end local v3    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    :sswitch_21
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onMultiIdentityInfoPending()V

    .line 1800
    goto/16 :goto_1

    .line 1788
    :sswitch_22
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1790
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1791
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onMultiIdentityRegistrationStatusChange(Ljava/util/ArrayList;)V

    .line 1792
    goto/16 :goto_1

    .line 1779
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    :sswitch_23
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1781
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1782
    .local v3, "voiceInfo":I
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onVoiceInfoChanged(I)V

    .line 1783
    goto/16 :goto_1

    .line 1769
    .end local v3    # "voiceInfo":I
    :sswitch_24
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;-><init>()V

    .line 1772
    .local v3, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1773
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)V

    .line 1774
    goto/16 :goto_1

    .line 1760
    .end local v3    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;
    :sswitch_25
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1763
    .local v3, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallStateChanged_1_3(Ljava/util/ArrayList;)V

    .line 1764
    goto/16 :goto_1

    .line 1751
    .end local v3    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    :sswitch_26
    invoke-virtual {v1, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1754
    .local v3, "isVopsEnabled":Z
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onVopsChanged(Z)V

    .line 1755
    goto/16 :goto_1

    .line 1741
    .end local v3    # "isVopsEnabled":Z
    :sswitch_27
    invoke-virtual {v1, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;-><init>()V

    .line 1744
    .local v3, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1745
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onIncomingImsSms(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)V

    .line 1746
    goto/16 :goto_1

    .line 1731
    .end local v3    # "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;
    :sswitch_28
    invoke-virtual {v1, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1733
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;-><init>()V

    .line 1734
    .local v3, "smsStatusReport":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1735
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onImsSmsStatusReport(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)V

    .line 1736
    goto/16 :goto_1

    .line 1722
    .end local v3    # "smsStatusReport":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;
    :sswitch_29
    invoke-virtual {v1, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1724
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1725
    .local v3, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallStateChanged_1_2(Ljava/util/ArrayList;)V

    .line 1726
    goto/16 :goto_1

    .line 1713
    .end local v3    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    :sswitch_2a
    const-string v3, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1716
    .local v3, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallStateChanged_1_1(Ljava/util/ArrayList;)V

    .line 1717
    goto/16 :goto_1

    .line 1703
    .end local v3    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    :sswitch_2b
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 1706
    .local v3, "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1707
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onSsacStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    .line 1708
    goto/16 :goto_1

    .line 1693
    .end local v3    # "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    :sswitch_2c
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 1696
    .local v3, "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1697
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onVopsStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    .line 1698
    goto/16 :goto_1

    .line 1683
    .end local v3    # "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    :sswitch_2d
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1685
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1686
    .local v3, "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1687
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V

    .line 1688
    goto/16 :goto_1

    .line 1674
    .end local v3    # "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    :sswitch_2e
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1677
    .local v3, "voWiFiCallQualityInfo":I
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    .line 1678
    goto/16 :goto_1

    .line 1665
    .end local v3    # "voWiFiCallQualityInfo":I
    :sswitch_2f
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1667
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1668
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    .line 1669
    goto/16 :goto_1

    .line 1651
    .end local v3    # "message":Ljava/lang/String;
    :sswitch_30
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1654
    .local v3, "hasBlockStatusOnWwan":Z
    new-instance v4, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v4}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1655
    .local v4, "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v4, v1}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1656
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 1657
    .local v5, "hasBlockStatusOnWlan":Z
    new-instance v6, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v6}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1658
    .local v6, "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v6, v1}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1659
    invoke-virtual {p0, v3, v4, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V

    .line 1660
    goto/16 :goto_1

    .line 1641
    .end local v3    # "hasBlockStatusOnWwan":Z
    .end local v4    # "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .end local v5    # "hasBlockStatusOnWlan":Z
    .end local v6    # "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    :sswitch_31
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1643
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;-><init>()V

    .line 1644
    .local v3, "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1645
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V

    .line 1646
    goto/16 :goto_1

    .line 1631
    .end local v3    # "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    :sswitch_32
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1633
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1634
    .local v3, "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1635
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1636
    goto/16 :goto_1

    .line 1621
    .end local v3    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :sswitch_33
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v3

    .line 1624
    .local v3, "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v5

    .line 1625
    .local v5, "lon":D
    invoke-virtual {p0, v3, v4, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    .line 1626
    goto/16 :goto_1

    .line 1611
    .end local v3    # "lat":D
    .end local v5    # "lon":D
    :sswitch_34
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;-><init>()V

    .line 1614
    .local v3, "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1615
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V

    .line 1616
    goto/16 :goto_1

    .line 1601
    .end local v3    # "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    :sswitch_35
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1603
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;-><init>()V

    .line 1604
    .local v3, "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1605
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V

    .line 1606
    goto/16 :goto_1

    .line 1591
    .end local v3    # "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    :sswitch_36
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1594
    .local v3, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1595
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1596
    goto/16 :goto_1

    .line 1581
    .end local v3    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_37
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;-><init>()V

    .line 1584
    .local v3, "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1585
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V

    .line 1586
    goto/16 :goto_1

    .line 1571
    .end local v3    # "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    :sswitch_38
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1573
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;-><init>()V

    .line 1574
    .local v3, "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1575
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V

    .line 1576
    goto/16 :goto_1

    .line 1561
    .end local v3    # "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    :sswitch_39
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1564
    .local v3, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1565
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1566
    goto :goto_1

    .line 1553
    .end local v3    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :sswitch_3a
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onExitEmergencyCallBackMode()V

    .line 1556
    goto :goto_1

    .line 1545
    :sswitch_3b
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onEnterEmergencyCallBackMode()V

    .line 1548
    goto :goto_1

    .line 1536
    :sswitch_3c
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1539
    .local v3, "radioState":I
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    .line 1540
    goto :goto_1

    .line 1527
    .end local v3    # "radioState":I
    :sswitch_3d
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1530
    .local v3, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onServiceStatusChanged(Ljava/util/ArrayList;)V

    .line 1531
    goto :goto_1

    .line 1517
    .end local v3    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :sswitch_3e
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;-><init>()V

    .line 1520
    .local v3, "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1521
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V

    .line 1522
    goto :goto_1

    .line 1507
    .end local v3    # "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    :sswitch_3f
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1510
    .local v3, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v3, v1}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1511
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1512
    goto :goto_1

    .line 1498
    .end local v3    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :sswitch_40
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1501
    .local v3, "tone":I
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onRingbackTone(I)V

    .line 1502
    goto :goto_1

    .line 1490
    .end local v3    # "tone":I
    :sswitch_41
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onRing()V

    .line 1493
    goto :goto_1

    .line 1481
    :sswitch_42
    invoke-virtual {v1, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1484
    .local v3, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    invoke-virtual {p0, v3}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->onCallStateChanged(Ljava/util/ArrayList;)V

    .line 1485
    nop

    .line 2150
    .end local v3    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_42
        0x2 -> :sswitch_41
        0x3 -> :sswitch_40
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_3e
        0x6 -> :sswitch_3d
        0x7 -> :sswitch_3c
        0x8 -> :sswitch_3b
        0x9 -> :sswitch_3a
        0xa -> :sswitch_39
        0xb -> :sswitch_38
        0xc -> :sswitch_37
        0xd -> :sswitch_36
        0xe -> :sswitch_35
        0xf -> :sswitch_34
        0x10 -> :sswitch_33
        0x11 -> :sswitch_32
        0x12 -> :sswitch_31
        0x13 -> :sswitch_30
        0x14 -> :sswitch_2f
        0x15 -> :sswitch_2e
        0x16 -> :sswitch_2d
        0x17 -> :sswitch_2c
        0x18 -> :sswitch_2b
        0x19 -> :sswitch_2a
        0x1a -> :sswitch_29
        0x1b -> :sswitch_28
        0x1c -> :sswitch_27
        0x1d -> :sswitch_26
        0x1e -> :sswitch_25
        0x1f -> :sswitch_24
        0x20 -> :sswitch_23
        0x21 -> :sswitch_22
        0x22 -> :sswitch_21
        0x23 -> :sswitch_20
        0x24 -> :sswitch_1f
        0x25 -> :sswitch_1e
        0x26 -> :sswitch_1d
        0x27 -> :sswitch_1c
        0x28 -> :sswitch_1b
        0x29 -> :sswitch_1a
        0x2a -> :sswitch_19
        0x2b -> :sswitch_18
        0x2c -> :sswitch_17
        0x2d -> :sswitch_16
        0x2e -> :sswitch_15
        0x2f -> :sswitch_14
        0x30 -> :sswitch_13
        0x31 -> :sswitch_12
        0x32 -> :sswitch_11
        0x33 -> :sswitch_10
        0x34 -> :sswitch_f
        0x35 -> :sswitch_e
        0x36 -> :sswitch_d
        0x37 -> :sswitch_c
        0x38 -> :sswitch_b
        0x39 -> :sswitch_a
        0x3a -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1432
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1460
    const-string v0, "vendor.qti.hardware.radio.ims@1.10::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    return-object p0

    .line 1463
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1468
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1422
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_10/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1454
    const/4 v0, 0x1

    return v0
.end method
