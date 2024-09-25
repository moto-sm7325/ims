.class public abstract Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1478
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1481
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

    .line 1502
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1547
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1548
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1549
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1550
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1551
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1514
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

    filled-new-array/range {v2 .. v11}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        0x7et
        -0x61t
        0x6bt
        -0xft
        0x11t
        -0x57t
        -0x46t
        0x44t
        0x9t
        -0xft
        0x2t
        -0x39t
        0x1et
        0x1ct
        0x66t
        -0x56t
        -0x23t
        -0x6et
        0x48t
        0x47t
        -0x2et
        -0x4ct
        0x4at
        0x74t
        0x3t
        -0x34t
        -0x31t
        0x2et
        0x70t
        -0x1et
        -0x6dt
        -0x34t
    .end array-data

    :array_1
    .array-data 1
        0x7ct
        0x1bt
        0x8t
        -0x25t
        -0x4et
        -0x7dt
        -0x68t
        -0x4ft
        -0x75t
        -0x5ct
        -0x31t
        0x7at
        -0x5t
        0x26t
        0x44t
        0xdt
        0x56t
        0x4ft
        -0x2et
        -0x78t
        -0x73t
        0x69t
        -0x30t
        0x47t
        -0x41t
        -0x55t
        -0x8t
        -0x39t
        -0x6ct
        0x66t
        0x14t
        -0x8t
    .end array-data

    :array_2
    .array-data 1
        -0x75t
        0x6ft
        -0x61t
        -0x75t
        0x68t
        0x7ft
        -0x76t
        -0x5bt
        0x34t
        0x4dt
        0x24t
        0x7ct
        -0x8t
        0x5ct
        -0x6at
        0x14t
        -0x24t
        0x0t
        -0x1ft
        0x77t
        0x5bt
        -0x78t
        0x7ft
        0x2at
        -0x3t
        -0x7t
        0x3bt
        -0x78t
        -0x72t
        -0x41t
        0x3ct
        -0x3ct
    .end array-data

    :array_3
    .array-data 1
        -0x66t
        0x17t
        -0x10t
        0x5ct
        0x23t
        0x2dt
        0x5ct
        0x17t
        0x1ct
        0x55t
        0x5et
        0x71t
        -0x16t
        -0x16t
        0x41t
        -0x65t
        -0x7et
        -0x52t
        0x1et
        -0x7ft
        -0x34t
        0x26t
        -0x2ft
        0x5ct
        -0x21t
        0x10t
        0x31t
        0x31t
        0x6ft
        0x6at
        -0x2bt
        -0x5et
    .end array-data

    :array_4
    .array-data 1
        -0x1bt
        0x59t
        0x57t
        0x7at
        0x3et
        -0x6ct
        -0x77t
        0x0t
        -0x62t
        0x67t
        0x5bt
        -0x69t
        0x13t
        -0x3bt
        -0x4t
        0x4dt
        0x6ft
        -0x63t
        -0x25t
        -0x38t
        0x52t
        0x5et
        -0x36t
        -0x5t
        0x75t
        -0x17t
        0x38t
        0x72t
        -0x19t
        0x17t
        0x2et
        0x63t
    .end array-data

    :array_5
    .array-data 1
        -0x2ct
        -0x25t
        0x28t
        -0x2bt
        0x78t
        0x61t
        0x74t
        0x30t
        -0x3t
        0x13t
        -0x3t
        -0x2ct
        0x4bt
        -0x67t
        -0x26t
        0x66t
        0x4dt
        -0x5dt
        0x11t
        0x42t
        0x3dt
        -0x33t
        0x77t
        -0x46t
        0x6et
        0x13t
        0x25t
        0x6t
        0x42t
        0x2ft
        0x64t
        -0x20t
    .end array-data

    :array_6
    .array-data 1
        0x26t
        0x42t
        0x61t
        0x79t
        0x73t
        -0x72t
        0x56t
        0x2bt
        0x63t
        0x36t
        -0x3et
        0x1ft
        -0x58t
        0x7dt
        -0x2at
        0x3at
        0x61t
        -0xdt
        0x39t
        -0xdt
        -0x61t
        0x54t
        -0x23t
        -0x4et
        0x1bt
        0x6bt
        -0x71t
        -0x55t
        0x3bt
        -0x4ct
        -0x76t
        -0x6et
    .end array-data

    :array_7
    .array-data 1
        -0x4at
        0x3ct
        0x39t
        0x7ft
        -0x3bt
        0x21t
        0x65t
        0x18t
        -0x18t
        0x15t
        0x53t
        -0x6dt
        -0x38t
        -0x58t
        0x4t
        0xdt
        0x21t
        0x4et
        -0x60t
        0x5t
        -0x51t
        0x49t
        -0x46t
        0x0t
        -0x5dt
        -0x61t
        -0x17t
        -0x35t
        0x67t
        0x27t
        0x62t
        0x22t
    .end array-data

    :array_8
    .array-data 1
        0x1dt
        -0x24t
        -0x7bt
        0x29t
        -0x2at
        0x7at
        0x24t
        0x7bt
        0x60t
        -0x66t
        0x59t
        -0x41t
        -0x60t
        0x21t
        -0x25t
        0x62t
        -0x4t
        -0x1at
        0x23t
        0xdt
        0x2at
        0x3t
        0x3at
        -0x1ct
        -0x5ft
        -0x36t
        -0x52t
        -0x35t
        -0x49t
        0x26t
        -0x62t
        0x4dt
    .end array-data

    :array_9
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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1486
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.9::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.8::IImsRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.ims@1.7::IImsRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    const-string v5, "vendor.qti.hardware.radio.ims@1.5::IImsRadioResponse"

    const-string v6, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v7, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v8, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    const-string v9, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v10, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1508
    const-string v0, "vendor.qti.hardware.radio.ims@1.9::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1535
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1557
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1559
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 16
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1587
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "vendor.qti.hardware.radio.ims@1.9::IImsRadioResponse"

    const-string v1, "vendor.qti.hardware.radio.ims@1.5::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.ims@1.8::IImsRadioResponse"

    const-string v5, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    const/4 v6, 0x0

    const-string v10, "android.hidl.base@1.0::IBase"

    const-string v11, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2351
    :sswitch_0
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2353
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 2354
    goto/16 :goto_1

    .line 2340
    :sswitch_1
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2342
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2343
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2344
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2345
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2346
    goto/16 :goto_1

    .line 2330
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2332
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->ping()V

    .line 2333
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2334
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2335
    goto/16 :goto_1

    .line 2325
    :sswitch_3
    goto/16 :goto_1

    .line 2317
    :sswitch_4
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2319
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 2320
    goto/16 :goto_1

    .line 2283
    :sswitch_5
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2285
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2286
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2288
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2290
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2291
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2292
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2293
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2294
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 2296
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2297
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 2299
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 2303
    invoke-virtual {v3, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2304
    nop

    .line 2294
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2300
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2307
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2309
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2311
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2312
    goto/16 :goto_1

    .line 2272
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2275
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2276
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2277
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2278
    goto/16 :goto_1

    .line 2260
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2262
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2263
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2264
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2265
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2266
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2267
    goto/16 :goto_1

    .line 2249
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v10}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2251
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2252
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2253
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2254
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2255
    goto/16 :goto_1

    .line 2239
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2242
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2243
    .local v1, "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendVosActionInfoResponse(II)V

    .line 2244
    goto/16 :goto_1

    .line 2229
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_a
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2232
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2233
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendVosSupportStatusResponse(II)V

    .line 2234
    goto/16 :goto_1

    .line 2217
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2220
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2221
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 2222
    .local v2, "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2223
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->explicitCallTransferResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 2224
    goto/16 :goto_1

    .line 2205
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_c
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2207
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2208
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2209
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2210
    .local v2, "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2211
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    .line 2212
    goto/16 :goto_1

    .line 2193
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    :sswitch_d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2195
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2196
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2197
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2198
    .restart local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2199
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    .line 2200
    goto/16 :goto_1

    .line 2179
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    :sswitch_e
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 2182
    .local v10, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 2183
    .local v11, "msgRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 2184
    .local v12, "smsStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2185
    .local v13, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 2186
    .local v14, "networkErrorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 2187
    .local v15, "transportErrorCode":I
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendImsSmsResponse_1_8(IIIIII)V

    .line 2188
    goto/16 :goto_1

    .line 2169
    .end local v10    # "token":I
    .end local v11    # "msgRef":I
    .end local v12    # "smsStatus":I
    .end local v13    # "reason":I
    .end local v14    # "networkErrorCode":I
    .end local v15    # "transportErrorCode":I
    :sswitch_f
    const-string v0, "vendor.qti.hardware.radio.ims@1.7::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2171
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2172
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2173
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendSipDtmfResponse(II)V

    .line 2174
    goto/16 :goto_1

    .line 2157
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_10
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2160
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2161
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 2162
    .local v2, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2163
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 2164
    goto/16 :goto_1

    .line 2145
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_11
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2147
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2148
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2149
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 2150
    .restart local v2    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2151
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 2152
    goto/16 :goto_1

    .line 2134
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_12
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2136
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2137
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2138
    .restart local v1    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2139
    .local v2, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryServiceStatusResponse_1_6(IILjava/util/ArrayList;)V

    .line 2140
    goto/16 :goto_1

    .line 2122
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    :sswitch_13
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2125
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2126
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;-><init>()V

    .line 2127
    .local v2, "registration":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2128
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getRegistrationResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    .line 2129
    goto/16 :goto_1

    .line 2110
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "registration":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    :sswitch_14
    invoke-virtual {v8, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2113
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2114
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 2115
    .local v2, "config":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2116
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setConfigResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    .line 2117
    goto/16 :goto_1

    .line 2098
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    :sswitch_15
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2101
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2102
    .local v1, "msgRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2103
    .local v2, "smsStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2104
    .local v3, "reason":I
    invoke-virtual {v7, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendImsSmsResponse_1_5(IIII)V

    .line 2105
    goto/16 :goto_1

    .line 2086
    .end local v0    # "token":I
    .end local v1    # "msgRef":I
    .end local v2    # "smsStatus":I
    .end local v3    # "reason":I
    :sswitch_16
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2088
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2089
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2090
    .local v1, "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;-><init>()V

    .line 2091
    .local v2, "callForwardStatus":Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2092
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)V

    .line 2093
    goto/16 :goto_1

    .line 2075
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "callForwardStatus":Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;
    :sswitch_17
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2078
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2079
    .local v1, "msisdn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 2080
    .local v2, "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 2081
    goto/16 :goto_1

    .line 2065
    .end local v0    # "token":I
    .end local v1    # "msisdn":Ljava/lang/String;
    .end local v2    # "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_18
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2067
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2068
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2069
    .local v1, "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->registerMultiIdentityLinesResponse(II)V

    .line 2070
    goto/16 :goto_1

    .line 2053
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_19
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2055
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2056
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2057
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 2058
    .local v2, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2059
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    .line 2060
    goto/16 :goto_1

    .line 2041
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    :sswitch_1a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2044
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2045
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;-><init>()V

    .line 2046
    .local v2, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2047
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V

    .line 2048
    goto/16 :goto_1

    .line 2029
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    :sswitch_1b
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2031
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2032
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2033
    .local v1, "msgeRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2034
    .local v2, "smsStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2035
    .restart local v3    # "reason":I
    invoke-virtual {v7, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendImsSmsResponse(IIII)V

    .line 2036
    goto/16 :goto_1

    .line 2017
    .end local v0    # "token":I
    .end local v1    # "msgeRef":I
    .end local v2    # "smsStatus":I
    .end local v3    # "reason":I
    :sswitch_1c
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2019
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2020
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2021
    .local v1, "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 2022
    .local v2, "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2023
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->querySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    .line 2024
    goto/16 :goto_1

    .line 2005
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    :sswitch_1d
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2007
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2008
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2009
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 2010
    .local v2, "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2011
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    .line 2012
    goto/16 :goto_1

    .line 1994
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    :sswitch_1e
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1996
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1997
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1998
    .restart local v1    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1999
    .local v2, "voltePref":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryVoltePrefResponse(III)V

    .line 2000
    goto/16 :goto_1

    .line 1984
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "voltePref":I
    :sswitch_1f
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1987
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1988
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->updateVoltePrefResponse(II)V

    .line 1989
    goto/16 :goto_1

    .line 1974
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_20
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1977
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1978
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    .line 1979
    goto/16 :goto_1

    .line 1964
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_21
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1966
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1967
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1968
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    .line 1969
    goto/16 :goto_1

    .line 1952
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_22
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1955
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1956
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1957
    .local v2, "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1958
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1959
    goto/16 :goto_1

    .line 1942
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :sswitch_23
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1945
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1946
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    .line 1947
    goto/16 :goto_1

    .line 1932
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_24
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1934
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1935
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1936
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    .line 1937
    goto/16 :goto_1

    .line 1922
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_25
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1924
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1925
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1926
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    .line 1927
    goto/16 :goto_1

    .line 1911
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_26
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1914
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1915
    .restart local v1    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1916
    .local v2, "packetErrorCount":J
    invoke-virtual {v7, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    .line 1917
    goto/16 :goto_1

    .line 1900
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "packetErrorCount":J
    :sswitch_27
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1902
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1903
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1904
    .restart local v1    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1905
    .local v2, "packetCount":J
    invoke-virtual {v7, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    .line 1906
    goto/16 :goto_1

    .line 1889
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "packetCount":J
    :sswitch_28
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1891
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1892
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1893
    .restart local v1    # "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1894
    .local v2, "serviceStatus":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    .line 1895
    goto/16 :goto_1

    .line 1879
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "serviceStatus":I
    :sswitch_29
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1882
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1883
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->explicitCallTransferResponse(II)V

    .line 1884
    goto/16 :goto_1

    .line 1865
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_2a
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1867
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 1868
    .local v6, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1869
    .local v10, "errorCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1870
    .local v11, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1871
    .local v12, "serviceClass":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    move-object v13, v0

    .line 1872
    .local v13, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v13, v8}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1873
    move-object/from16 v0, p0

    move v1, v6

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1874
    goto/16 :goto_1

    .line 1852
    .end local v6    # "token":I
    .end local v10    # "errorCode":I
    .end local v11    # "serviceStatus":I
    .end local v12    # "serviceClass":I
    .end local v13    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_2b
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1854
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1855
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1856
    .restart local v1    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1857
    .local v2, "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1858
    .local v3, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, v8}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1859
    invoke-virtual {v7, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1860
    goto/16 :goto_1

    .line 1842
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    .end local v3    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_2c
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1845
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1846
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    .line 1847
    goto/16 :goto_1

    .line 1832
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_2d
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1835
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1836
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    .line 1837
    goto/16 :goto_1

    .line 1822
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_2e
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1824
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1825
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1826
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    .line 1827
    goto/16 :goto_1

    .line 1812
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_2f
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1815
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1816
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    .line 1817
    goto/16 :goto_1

    .line 1802
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_30
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1805
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1806
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    .line 1807
    goto/16 :goto_1

    .line 1792
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_31
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1795
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1796
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    .line 1797
    goto/16 :goto_1

    .line 1782
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_32
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1784
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1785
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1786
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    .line 1787
    goto/16 :goto_1

    .line 1770
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_33
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1773
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1774
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1775
    .local v2, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1776
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1777
    goto/16 :goto_1

    .line 1760
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :sswitch_34
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1763
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1764
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setClirResponse(II)V

    .line 1765
    goto/16 :goto_1

    .line 1747
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_35
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1750
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1751
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1752
    .local v2, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1753
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1754
    .local v3, "hasClirInfo":Z
    invoke-virtual {v7, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V

    .line 1755
    goto/16 :goto_1

    .line 1735
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    .end local v3    # "hasClirInfo":Z
    :sswitch_36
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1737
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1738
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1739
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;-><init>()V

    .line 1740
    .local v2, "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1741
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V

    .line 1742
    goto/16 :goto_1

    .line 1723
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    :sswitch_37
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1725
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1726
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1727
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1728
    .local v2, "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1729
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1730
    goto/16 :goto_1

    .line 1711
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_38
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1714
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1715
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;-><init>()V

    .line 1716
    .local v2, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1717
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V

    .line 1718
    goto/16 :goto_1

    .line 1699
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    :sswitch_39
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1702
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1703
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1704
    .local v2, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1705
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1706
    goto/16 :goto_1

    .line 1687
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :sswitch_3a
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1690
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1691
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1692
    .local v2, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1693
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1694
    goto/16 :goto_1

    .line 1675
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_3b
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1678
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1679
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1680
    .restart local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1681
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1682
    goto/16 :goto_1

    .line 1663
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_3c
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1666
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1667
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1668
    .local v2, "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1669
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1670
    goto/16 :goto_1

    .line 1651
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_3d
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1654
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1655
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1656
    .restart local v2    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, v8}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1657
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1658
    goto :goto_1

    .line 1641
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_3e
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1644
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1645
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    .line 1646
    goto :goto_1

    .line 1630
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_3f
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1632
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1633
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1634
    .restart local v1    # "errorCode":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1635
    .local v2, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->queryServiceStatusResponse(IILjava/util/ArrayList;)V

    .line 1636
    goto :goto_1

    .line 1620
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :sswitch_40
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1623
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1624
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    .line 1625
    goto :goto_1

    .line 1610
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_41
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1612
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1613
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1614
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->hangupResponse(II)V

    .line 1615
    goto :goto_1

    .line 1600
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_42
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1603
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1604
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->answerResponse(II)V

    .line 1605
    goto :goto_1

    .line 1590
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_43
    invoke-virtual {v8, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1592
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1593
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1594
    .restart local v1    # "errorCode":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->dialResponse(II)V

    .line 1595
    nop

    .line 2363
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_42
        0x3 -> :sswitch_41
        0x4 -> :sswitch_40
        0x5 -> :sswitch_3f
        0x6 -> :sswitch_3e
        0x7 -> :sswitch_3d
        0x8 -> :sswitch_3c
        0x9 -> :sswitch_3b
        0xa -> :sswitch_3a
        0xb -> :sswitch_39
        0xc -> :sswitch_38
        0xd -> :sswitch_37
        0xe -> :sswitch_36
        0xf -> :sswitch_35
        0x10 -> :sswitch_34
        0x11 -> :sswitch_33
        0x12 -> :sswitch_32
        0x13 -> :sswitch_31
        0x14 -> :sswitch_30
        0x15 -> :sswitch_2f
        0x16 -> :sswitch_2e
        0x17 -> :sswitch_2d
        0x18 -> :sswitch_2c
        0x19 -> :sswitch_2b
        0x1a -> :sswitch_2a
        0x1b -> :sswitch_29
        0x1c -> :sswitch_28
        0x1d -> :sswitch_27
        0x1e -> :sswitch_26
        0x1f -> :sswitch_25
        0x20 -> :sswitch_24
        0x21 -> :sswitch_23
        0x22 -> :sswitch_22
        0x23 -> :sswitch_21
        0x24 -> :sswitch_20
        0x25 -> :sswitch_1f
        0x26 -> :sswitch_1e
        0x27 -> :sswitch_1d
        0x28 -> :sswitch_1c
        0x29 -> :sswitch_1b
        0x2a -> :sswitch_1a
        0x2b -> :sswitch_19
        0x2c -> :sswitch_18
        0x2d -> :sswitch_17
        0x2e -> :sswitch_16
        0x2f -> :sswitch_15
        0x30 -> :sswitch_14
        0x31 -> :sswitch_13
        0x32 -> :sswitch_12
        0x33 -> :sswitch_11
        0x34 -> :sswitch_10
        0x35 -> :sswitch_f
        0x36 -> :sswitch_e
        0x37 -> :sswitch_d
        0x38 -> :sswitch_c
        0x39 -> :sswitch_b
        0x3a -> :sswitch_a
        0x3b -> :sswitch_9
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

    .line 1541
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1569
    const-string v0, "vendor.qti.hardware.radio.ims@1.9::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    return-object p0

    .line 1572
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

    .line 1576
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 1577
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1531
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1563
    const/4 v0, 0x1

    return v0
.end method
