.class public abstract Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1689
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1692
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

    .line 1714
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1760
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1761
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1762
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1763
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1764
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1726
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

    filled-new-array/range {v2 .. v12}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0xdt
        0x1ft
        -0x41t
        -0x6et
        0x2bt
        -0x75t
        -0x45t
        -0x47t
        -0x4t
        0x48t
        0x5dt
        -0x5ft
        0x19t
        -0x4t
        0x78t
        -0x7bt
        0x38t
        0x9t
        -0x6et
        0x25t
        0x68t
        -0x4t
        0x64t
        0x19t
        -0x53t
        -0x40t
        -0x1dt
        0xct
        -0x2et
        -0x15t
        0x5dt
        0x62t
    .end array-data

    :array_1
    .array-data 1
        -0x3ct
        0x57t
        -0x14t
        -0x4at
        -0x3t
        0x27t
        -0x31t
        0x48t
        0x77t
        -0x59t
        -0x5t
        -0xct
        -0x16t
        -0x1t
        0x2bt
        0x71t
        0x28t
        -0x14t
        -0x27t
        -0x42t
        0x7et
        0x6dt
        0x49t
        0x2bt
        0x5ft
        -0xft
        0x37t
        -0x40t
        -0x73t
        0x7dt
        -0x6at
        -0x46t
    .end array-data

    :array_2
    .array-data 1
        0x43t
        0x29t
        -0x49t
        -0x30t
        -0x7ct
        0x56t
        0x45t
        -0x7et
        -0x29t
        0x11t
        0x39t
        0x24t
        -0x35t
        0x78t
        -0x69t
        -0x65t
        0x3et
        0x7t
        0x62t
        0x1t
        -0x22t
        -0x80t
        -0x26t
        0x45t
        0x77t
        -0x8t
        0xct
        0x1bt
        0x2t
        -0xft
        0x2bt
        0x6t
    .end array-data

    :array_3
    .array-data 1
        0xct
        0x52t
        -0xct
        0x2et
        -0x62t
        -0x43t
        -0x76t
        0x2ft
        0x1et
        0x4ct
        -0x3at
        -0x7et
        -0x68t
        0x7dt
        0x13t
        -0x38t
        0x2at
        -0x7ct
        0x59t
        -0xct
        -0x1t
        0x4ft
        -0x3ft
        0x7t
        0x6ft
        0x19t
        -0x47t
        -0x2t
        -0x14t
        0x79t
        0x7ft
        -0x2t
    .end array-data

    :array_4
    .array-data 1
        -0x79t
        -0x25t
        0x1bt
        0x3bt
        -0x22t
        0x57t
        -0x79t
        -0x6ft
        -0x22t
        0x61t
        0x3at
        0x35t
        -0x7ft
        -0x60t
        0x1ft
        0x5dt
        -0x68t
        -0x5ct
        0x45t
        0x3ct
        -0x6t
        -0x2dt
        0x74t
        0x54t
        0x16t
        0x76t
        -0x3at
        0x53t
        0x11t
        0x26t
        -0x7t
        -0x16t
    .end array-data

    :array_5
    .array-data 1
        -0x47t
        -0x50t
        0x2et
        -0x22t
        0x9t
        -0x54t
        0x3ct
        -0x67t
        -0x6ft
        -0x7t
        0x42t
        0x22t
        -0x49t
        -0x61t
        -0xbt
        -0x3t
        -0x74t
        -0x4ft
        -0x56t
        -0x7ct
        0x62t
        0x4dt
        -0x8t
        -0x5t
        -0x57t
        0x61t
        0x33t
        -0x5at
        0x3bt
        -0x1at
        -0x60t
        0xet
    .end array-data

    :array_6
    .array-data 1
        0x4t
        -0xft
        -0x3t
        -0x25t
        -0x58t
        -0x36t
        -0x17t
        -0x5et
        0x5ct
        -0x67t
        0x4ft
        -0x6t
        -0x25t
        -0x6ft
        -0x22t
        -0x20t
        -0x58t
        0x1dt
        0x3bt
        0x25t
        0x49t
        0x17t
        0x75t
        0x4et
        0x3ct
        0x14t
        0x5t
        -0x2at
        0x6ft
        -0x3ct
        -0xdt
        0x4ct
    .end array-data

    :array_7
    .array-data 1
        -0x6ct
        0x44t
        -0x35t
        0x5at
        -0x25t
        -0x5et
        0x1ft
        -0x20t
        -0x38t
        -0x53t
        -0x14t
        0x26t
        -0x73t
        -0x69t
        -0x5dt
        0x4et
        -0x21t
        -0x1et
        -0x2t
        -0x62t
        0x1t
        -0x77t
        -0x43t
        0x3ft
        0x5bt
        0x5ft
        -0x70t
        0x40t
        -0x7dt
        0xat
        -0x21t
        -0x45t
    .end array-data

    :array_8
    .array-data 1
        0x2ft
        0x49t
        -0x57t
        0x31t
        0x13t
        0x1et
        -0x13t
        0x53t
        0x26t
        0x5ft
        -0x1bt
        -0x66t
        0x68t
        0x61t
        -0x3et
        -0x43t
        0x47t
        0x6bt
        -0x11t
        0x50t
        0x40t
        0x34t
        0x49t
        -0xbt
        0x56t
        -0x51t
        0x8t
        -0x7dt
        0x57t
        0x3dt
        0x7ft
        -0xft
    .end array-data

    :array_9
    .array-data 1
        -0x53t
        -0x17t
        0x0t
        -0x8t
        -0x1et
        0x77t
        0x5ct
        0x1at
        -0x1dt
        -0x42t
        0x7t
        0x27t
        -0x45t
        0x51t
        0x17t
        0x18t
        -0x2ft
        0x62t
        -0x40t
        -0x50t
        0x3ct
        -0x74t
        0x66t
        -0x1ft
        -0x36t
        -0x31t
        0x53t
        0xbt
        0x12t
        -0x52t
        -0xbt
        0x3dt
    .end array-data

    :array_a
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
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1697
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.9::IImsRadio"

    const-string v2, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    const-string v3, "vendor.qti.hardware.radio.ims@1.7::IImsRadio"

    const-string v4, "vendor.qti.hardware.radio.ims@1.6::IImsRadio"

    const-string v5, "vendor.qti.hardware.radio.ims@1.5::IImsRadio"

    const-string v6, "vendor.qti.hardware.radio.ims@1.4::IImsRadio"

    const-string v7, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    const-string v8, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v9, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    const-string v10, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    const-string v11, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1720
    const-string v0, "vendor.qti.hardware.radio.ims@1.9::IImsRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1748
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1770
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1772
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 18
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1800
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v0, "vendor.qti.hardware.radio.ims@1.9::IImsRadio"

    const-string v1, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    const-string v2, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    const-string v3, "vendor.qti.hardware.radio.ims@1.5::IImsRadio"

    const-string v4, "vendor.qti.hardware.radio.ims@1.4::IImsRadio"

    const-string v5, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v6, "android.hidl.base@1.0::IBase"

    const-string v7, "vendor.qti.hardware.radio.ims@1.6::IImsRadio"

    const/4 v11, 0x0

    const-string v12, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2687
    :sswitch_0
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2689
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->notifySyspropsChanged()V

    .line 2690
    goto/16 :goto_1

    .line 2676
    :sswitch_1
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2678
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2679
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2680
    invoke-virtual {v0, v10}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2681
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2682
    goto/16 :goto_1

    .line 2666
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2668
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->ping()V

    .line 2669
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2670
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2671
    goto/16 :goto_1

    .line 2661
    :sswitch_3
    goto/16 :goto_1

    .line 2653
    :sswitch_4
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2655
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setHALInstrumentation()V

    .line 2656
    goto/16 :goto_1

    .line 2619
    :sswitch_5
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2621
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2622
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2624
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2626
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2627
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2628
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2629
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2630
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 2632
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2633
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2635
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v11, v7

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 2639
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2640
    nop

    .line 2630
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2636
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2643
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2645
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2647
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2648
    goto/16 :goto_1

    .line 2608
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2610
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2611
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2612
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2613
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2614
    goto/16 :goto_1

    .line 2596
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2598
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2599
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2600
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2601
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2602
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2603
    goto/16 :goto_1

    .line 2585
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2587
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2588
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2589
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2590
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2591
    goto/16 :goto_1

    .line 2574
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2577
    .local v0, "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;-><init>()V

    .line 2578
    .local v1, "vosActionInfo":Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2579
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendVosActionInfo(ILvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;)V

    .line 2580
    goto/16 :goto_1

    .line 2564
    .end local v0    # "token":I
    .end local v1    # "vosActionInfo":Lvendor/qti/hardware/radio/ims/V1_9/VosActionInfo;
    :sswitch_a
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2566
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2567
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2568
    .local v1, "isVosSupported":Z
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendVosSupportStatus(IZ)V

    .line 2569
    goto/16 :goto_1

    .line 2553
    .end local v0    # "token":I
    .end local v1    # "isVosSupported":Z
    :sswitch_b
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2555
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2556
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2557
    .local v1, "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2558
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    .line 2559
    goto/16 :goto_1

    .line 2542
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    :sswitch_c
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2544
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2545
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2546
    .restart local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2547
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    .line 2548
    goto/16 :goto_1

    .line 2532
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    :sswitch_d
    const-string v0, "vendor.qti.hardware.radio.ims@1.7::IImsRadio"

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2535
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2536
    .local v1, "requestCode":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendSipDtmf(ILjava/lang/String;)V

    .line 2537
    goto/16 :goto_1

    .line 2519
    .end local v0    # "token":I
    .end local v1    # "requestCode":Ljava/lang/String;
    :sswitch_e
    invoke-virtual {v9, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2521
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2522
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 2523
    .local v1, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2524
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 2525
    .local v2, "callComposerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    invoke-virtual {v2, v9}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2526
    invoke-virtual {v8, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->callComposerDial(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    .line 2527
    goto/16 :goto_1

    .line 2510
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .end local v2    # "callComposerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    :sswitch_f
    invoke-virtual {v9, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2512
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2513
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->cancelPendingUssd(I)V

    .line 2514
    goto/16 :goto_1

    .line 2500
    .end local v0    # "token":I
    :sswitch_10
    invoke-virtual {v9, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2502
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2503
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2504
    .local v1, "ussd":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 2505
    goto/16 :goto_1

    .line 2486
    .end local v0    # "token":I
    .end local v1    # "ussd":Ljava/lang/String;
    :sswitch_11
    invoke-virtual {v9, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2489
    .local v6, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 2490
    .local v7, "operationType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 2491
    .local v11, "facilityType":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    move-object v12, v0

    .line 2492
    .local v12, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-virtual {v12, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2493
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2494
    .local v13, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->suppServiceStatus_1_6(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;Ljava/lang/String;)V

    .line 2495
    goto/16 :goto_1

    .line 2476
    .end local v6    # "token":I
    .end local v7    # "operationType":I
    .end local v11    # "facilityType":I
    .end local v12    # "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .end local v13    # "password":Ljava/lang/String;
    :sswitch_12
    invoke-virtual {v9, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2479
    .restart local v0    # "token":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2480
    .local v1, "srvStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setServiceStatus_1_6(ILjava/util/ArrayList;)V

    .line 2481
    goto/16 :goto_1

    .line 2460
    .end local v0    # "token":I
    .end local v1    # "srvStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    :sswitch_13
    invoke-virtual {v9, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2462
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 2463
    .local v11, "token":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    move-object v12, v0

    .line 2464
    .local v12, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    invoke-virtual {v12, v9}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2465
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2466
    .local v13, "categories":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v14

    .line 2467
    .local v14, "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 2468
    .local v15, "route":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 2469
    .local v16, "hasKnownUserIntentEmergency":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 2470
    .local v17, "isTesting":Z
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->emergencyDial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;ILjava/util/ArrayList;IZZ)V

    .line 2471
    goto/16 :goto_1

    .line 2449
    .end local v11    # "token":I
    .end local v12    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .end local v13    # "categories":I
    .end local v14    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "route":I
    .end local v16    # "hasKnownUserIntentEmergency":Z
    .end local v17    # "isTesting":Z
    :sswitch_14
    invoke-virtual {v9, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2451
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2452
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 2453
    .local v1, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2454
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->dial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;)V

    .line 2455
    goto/16 :goto_1

    .line 2438
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    :sswitch_15
    invoke-virtual {v9, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2440
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2441
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 2442
    .local v1, "config":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2443
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setConfig_1_6(ILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    .line 2444
    goto/16 :goto_1

    .line 2427
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    :sswitch_16
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2429
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2430
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2431
    .local v1, "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2432
    .local v2, "smsResult":I
    invoke-virtual {v8, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->acknowledgeSms_1_5(III)V

    .line 2433
    goto/16 :goto_1

    .line 2411
    .end local v0    # "token":I
    .end local v1    # "messageRef":I
    .end local v2    # "smsResult":I
    :sswitch_17
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2413
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 2414
    .restart local v11    # "token":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    move-object v12, v0

    .line 2415
    .local v12, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    invoke-virtual {v12, v9}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2416
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2417
    .restart local v13    # "categories":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v14

    .line 2418
    .restart local v14    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 2419
    .restart local v15    # "route":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 2420
    .restart local v16    # "hasKnownUserIntentEmergency":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 2421
    .restart local v17    # "isTesting":Z
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->emergencyDial(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;ILjava/util/ArrayList;IZZ)V

    .line 2422
    goto/16 :goto_1

    .line 2400
    .end local v11    # "token":I
    .end local v12    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    .end local v13    # "categories":I
    .end local v14    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "route":I
    .end local v16    # "hasKnownUserIntentEmergency":Z
    .end local v17    # "isTesting":Z
    :sswitch_18
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2402
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2403
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;-><init>()V

    .line 2404
    .local v1, "config":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2405
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setConfig_1_5(ILvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)V

    .line 2406
    goto/16 :goto_1

    .line 2389
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    :sswitch_19
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2391
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2392
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 2393
    .local v1, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2394
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->addParticipant_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    .line 2395
    goto/16 :goto_1

    .line 2378
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    :sswitch_1a
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2380
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2381
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 2382
    .restart local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2383
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->dial_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    .line 2384
    goto/16 :goto_1

    .line 2368
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    :sswitch_1b
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2370
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2371
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2372
    .local v1, "msisdn":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->queryVirtualLineInfo(ILjava/lang/String;)V

    .line 2373
    goto/16 :goto_1

    .line 2358
    .end local v0    # "token":I
    .end local v1    # "msisdn":Ljava/lang/String;
    :sswitch_1c
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2360
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2361
    .restart local v0    # "token":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2362
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->registerMultiIdentityLines(ILjava/util/ArrayList;)V

    .line 2363
    goto/16 :goto_1

    .line 2347
    .end local v0    # "token":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    :sswitch_1d
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2349
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2350
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 2351
    .local v1, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2352
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setColr_1_3(ILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    .line 2353
    goto/16 :goto_1

    .line 2336
    .end local v0    # "token":I
    .end local v1    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    :sswitch_1e
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2338
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2339
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;-><init>()V

    .line 2340
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2341
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->hangup_1_3(ILvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)V

    .line 2342
    goto/16 :goto_1

    .line 2323
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    :sswitch_1f
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2325
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 2326
    .local v7, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v11

    .line 2327
    .local v11, "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v13

    .line 2328
    .local v13, "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    move-object v15, v0

    .line 2329
    .local v15, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    invoke-virtual {v15, v9}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2330
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v11

    move-wide v4, v13

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V

    .line 2331
    goto/16 :goto_1

    .line 2312
    .end local v7    # "token":I
    .end local v11    # "lat":D
    .end local v13    # "lon":D
    .end local v15    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :sswitch_20
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2314
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 2315
    .local v0, "_hidl_out_format":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2316
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2317
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2318
    goto/16 :goto_1

    .line 2301
    .end local v0    # "_hidl_out_format":Ljava/lang/String;
    :sswitch_21
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2303
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2304
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2305
    .local v1, "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2306
    .local v2, "smsReport":I
    invoke-virtual {v8, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->acknowledgeSmsReport(III)V

    .line 2307
    goto/16 :goto_1

    .line 2290
    .end local v0    # "token":I
    .end local v1    # "messageRef":I
    .end local v2    # "smsReport":I
    :sswitch_22
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2293
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2294
    .restart local v1    # "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2295
    .local v2, "smsResult":I
    invoke-virtual {v8, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->acknowledgeSms(III)V

    .line 2296
    goto/16 :goto_1

    .line 2279
    .end local v0    # "token":I
    .end local v1    # "messageRef":I
    .end local v2    # "smsResult":I
    :sswitch_23
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2281
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2282
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 2283
    .local v1, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2284
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V

    .line 2285
    goto/16 :goto_1

    .line 2268
    .end local v0    # "token":I
    .end local v1    # "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    :sswitch_24
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2271
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;-><init>()V

    .line 2272
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2273
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->hangup_1_2(ILvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;)V

    .line 2274
    goto/16 :goto_1

    .line 2257
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;
    :sswitch_25
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2259
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2260
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;-><init>()V

    .line 2261
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2262
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->hangup_1_1(ILvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;)V

    .line 2263
    goto/16 :goto_1

    .line 2248
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
    :sswitch_26
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2251
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->querySsacStatus(I)V

    .line 2252
    goto/16 :goto_1

    .line 2239
    .end local v0    # "token":I
    :sswitch_27
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2241
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2242
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->queryVopsStatus(I)V

    .line 2243
    goto/16 :goto_1

    .line 2230
    .end local v0    # "token":I
    :sswitch_28
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2233
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->queryVoltePref(I)V

    .line 2234
    goto/16 :goto_1

    .line 2220
    .end local v0    # "token":I
    :sswitch_29
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2222
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2223
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2224
    .local v1, "preference":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->updateVoltePref(II)V

    .line 2225
    goto/16 :goto_1

    .line 2210
    .end local v0    # "token":I
    .end local v1    # "preference":I
    :sswitch_2a
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2212
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2213
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2214
    .local v1, "callId":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->cancelModifyCall(II)V

    .line 2215
    goto/16 :goto_1

    .line 2200
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_2b
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2203
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2204
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    .line 2205
    goto/16 :goto_1

    .line 2191
    .end local v0    # "token":I
    .end local v1    # "message":Ljava/lang/String;
    :sswitch_2c
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2193
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2194
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getImsSubConfig(I)V

    .line 2195
    goto/16 :goto_1

    .line 2178
    .end local v0    # "token":I
    :sswitch_2d
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2180
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 2181
    .restart local v7    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v11

    .line 2182
    .restart local v11    # "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v13

    .line 2183
    .restart local v13    # "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    move-object v15, v0

    .line 2184
    .local v15, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    invoke-virtual {v15, v9}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2185
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v11

    move-wide v4, v13

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    .line 2186
    goto/16 :goto_1

    .line 2167
    .end local v7    # "token":I
    .end local v11    # "lat":D
    .end local v13    # "lon":D
    .end local v15    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    :sswitch_2e
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2170
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 2171
    .local v1, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2172
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    .line 2173
    goto/16 :goto_1

    .line 2158
    .end local v0    # "token":I
    .end local v1    # "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    :sswitch_2f
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2161
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    .line 2162
    goto/16 :goto_1

    .line 2149
    .end local v0    # "token":I
    :sswitch_30
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2152
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getRtpStatistics(I)V

    .line 2153
    goto/16 :goto_1

    .line 2136
    .end local v0    # "token":I
    :sswitch_31
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2139
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2140
    .local v1, "operationType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2141
    .local v2, "facilityType":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 2142
    .local v3, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-virtual {v3, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2143
    invoke-virtual {v8, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    .line 2144
    goto/16 :goto_1

    .line 2125
    .end local v0    # "token":I
    .end local v1    # "operationType":I
    .end local v2    # "facilityType":I
    .end local v3    # "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    :sswitch_32
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2127
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2128
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 2129
    .local v1, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2130
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    .line 2131
    goto/16 :goto_1

    .line 2115
    .end local v0    # "token":I
    .end local v1    # "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    :sswitch_33
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2118
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2119
    .local v1, "status":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setSuppServiceNotification(II)V

    .line 2120
    goto/16 :goto_1

    .line 2104
    .end local v0    # "token":I
    .end local v1    # "status":I
    :sswitch_34
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2107
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2108
    .local v1, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2109
    .local v2, "serviceClass":I
    invoke-virtual {v8, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setCallWaiting(III)V

    .line 2110
    goto/16 :goto_1

    .line 2094
    .end local v0    # "token":I
    .end local v1    # "serviceStatus":I
    .end local v2    # "serviceClass":I
    :sswitch_35
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2097
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2098
    .local v1, "serviceClass":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getCallWaiting(II)V

    .line 2099
    goto/16 :goto_1

    .line 2083
    .end local v0    # "token":I
    .end local v1    # "serviceClass":I
    :sswitch_36
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2085
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2086
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 2087
    .local v1, "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2088
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 2089
    goto/16 :goto_1

    .line 2072
    .end local v0    # "token":I
    .end local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :sswitch_37
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2074
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2075
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 2076
    .restart local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2077
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 2078
    goto/16 :goto_1

    .line 2061
    .end local v0    # "token":I
    .end local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :sswitch_38
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2064
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 2065
    .local v1, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2066
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 2067
    goto/16 :goto_1

    .line 2050
    .end local v0    # "token":I
    .end local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_39
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2052
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2053
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 2054
    .restart local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2055
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 2056
    goto/16 :goto_1

    .line 2039
    .end local v0    # "token":I
    .end local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_3a
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2041
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2042
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 2043
    .local v1, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2044
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 2045
    goto/16 :goto_1

    .line 2030
    .end local v0    # "token":I
    .end local v1    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :sswitch_3b
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2032
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2033
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->stopDtmf(I)V

    .line 2034
    goto/16 :goto_1

    .line 2019
    .end local v0    # "token":I
    :sswitch_3c
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2021
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2022
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 2023
    .local v1, "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2024
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 2025
    goto/16 :goto_1

    .line 2008
    .end local v0    # "token":I
    .end local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :sswitch_3d
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2010
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2011
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 2012
    .restart local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2013
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 2014
    goto/16 :goto_1

    .line 1999
    .end local v0    # "token":I
    .end local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :sswitch_3e
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2001
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2002
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 2003
    goto/16 :goto_1

    .line 1988
    .end local v0    # "token":I
    :sswitch_3f
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1990
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1991
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1992
    .local v1, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1993
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1994
    goto/16 :goto_1

    .line 1979
    .end local v0    # "token":I
    .end local v1    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :sswitch_40
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1982
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getColr(I)V

    .line 1983
    goto/16 :goto_1

    .line 1968
    .end local v0    # "token":I
    :sswitch_41
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1971
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1972
    .local v1, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1973
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    .line 1974
    goto/16 :goto_1

    .line 1959
    .end local v0    # "token":I
    .end local v1    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    :sswitch_42
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1962
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getClir(I)V

    .line 1963
    goto/16 :goto_1

    .line 1950
    .end local v0    # "token":I
    :sswitch_43
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1953
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getClip(I)V

    .line 1954
    goto/16 :goto_1

    .line 1941
    .end local v0    # "token":I
    :sswitch_44
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1944
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->conference(I)V

    .line 1945
    goto/16 :goto_1

    .line 1930
    .end local v0    # "token":I
    :sswitch_45
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1933
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1934
    .local v1, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1935
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1936
    goto/16 :goto_1

    .line 1919
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_46
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1922
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1923
    .restart local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1924
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1925
    goto/16 :goto_1

    .line 1909
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_47
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1911
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1912
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1913
    .local v1, "callId":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->resume(II)V

    .line 1914
    goto/16 :goto_1

    .line 1899
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_48
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1902
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1903
    .restart local v1    # "callId":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->hold(II)V

    .line 1904
    goto/16 :goto_1

    .line 1888
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_49
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1891
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 1892
    .local v1, "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1893
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    .line 1894
    goto/16 :goto_1

    .line 1879
    .end local v0    # "token":I
    .end local v1    # "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :sswitch_4a
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1882
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->queryServiceStatus(I)V

    .line 1883
    goto/16 :goto_1

    .line 1869
    .end local v0    # "token":I
    :sswitch_4b
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1871
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1872
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1873
    .local v1, "state":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->requestRegistrationChange(II)V

    .line 1874
    goto/16 :goto_1

    .line 1858
    .end local v0    # "token":I
    .end local v1    # "state":I
    :sswitch_4c
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1860
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1861
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 1862
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1863
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    .line 1864
    goto :goto_1

    .line 1846
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    :sswitch_4d
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1849
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1850
    .local v1, "callType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1851
    .local v2, "presentation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1852
    .local v3, "mode":I
    invoke-virtual {v8, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->answer(IIII)V

    .line 1853
    goto :goto_1

    .line 1837
    .end local v0    # "token":I
    .end local v1    # "callType":I
    .end local v2    # "presentation":I
    .end local v3    # "mode":I
    :sswitch_4e
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1840
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 1841
    goto :goto_1

    .line 1826
    .end local v0    # "token":I
    :sswitch_4f
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1829
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1830
    .local v1, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1831
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1832
    goto :goto_1

    .line 1815
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :sswitch_50
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1818
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1819
    .restart local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1820
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1821
    goto :goto_1

    .line 1803
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :sswitch_51
    invoke-virtual {v9, v12}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v0

    .line 1806
    .local v0, "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v1

    .line 1807
    .local v1, "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 1808
    invoke-virtual {v10, v11}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1809
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1810
    nop

    .line 2699
    .end local v0    # "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    .end local v1    # "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_51
        0x2 -> :sswitch_50
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_4d
        0x6 -> :sswitch_4c
        0x7 -> :sswitch_4b
        0x8 -> :sswitch_4a
        0x9 -> :sswitch_49
        0xa -> :sswitch_48
        0xb -> :sswitch_47
        0xc -> :sswitch_46
        0xd -> :sswitch_45
        0xe -> :sswitch_44
        0xf -> :sswitch_43
        0x10 -> :sswitch_42
        0x11 -> :sswitch_41
        0x12 -> :sswitch_40
        0x13 -> :sswitch_3f
        0x14 -> :sswitch_3e
        0x15 -> :sswitch_3d
        0x16 -> :sswitch_3c
        0x17 -> :sswitch_3b
        0x18 -> :sswitch_3a
        0x19 -> :sswitch_39
        0x1a -> :sswitch_38
        0x1b -> :sswitch_37
        0x1c -> :sswitch_36
        0x1d -> :sswitch_35
        0x1e -> :sswitch_34
        0x1f -> :sswitch_33
        0x20 -> :sswitch_32
        0x21 -> :sswitch_31
        0x22 -> :sswitch_30
        0x23 -> :sswitch_2f
        0x24 -> :sswitch_2e
        0x25 -> :sswitch_2d
        0x26 -> :sswitch_2c
        0x27 -> :sswitch_2b
        0x28 -> :sswitch_2a
        0x29 -> :sswitch_29
        0x2a -> :sswitch_28
        0x2b -> :sswitch_27
        0x2c -> :sswitch_26
        0x2d -> :sswitch_25
        0x2e -> :sswitch_24
        0x2f -> :sswitch_23
        0x30 -> :sswitch_22
        0x31 -> :sswitch_21
        0x32 -> :sswitch_20
        0x33 -> :sswitch_1f
        0x34 -> :sswitch_1e
        0x35 -> :sswitch_1d
        0x36 -> :sswitch_1c
        0x37 -> :sswitch_1b
        0x38 -> :sswitch_1a
        0x39 -> :sswitch_19
        0x3a -> :sswitch_18
        0x3b -> :sswitch_17
        0x3c -> :sswitch_16
        0x3d -> :sswitch_15
        0x3e -> :sswitch_14
        0x3f -> :sswitch_13
        0x40 -> :sswitch_12
        0x41 -> :sswitch_11
        0x42 -> :sswitch_10
        0x43 -> :sswitch_f
        0x44 -> :sswitch_e
        0x45 -> :sswitch_d
        0x46 -> :sswitch_c
        0x47 -> :sswitch_b
        0x48 -> :sswitch_a
        0x49 -> :sswitch_9
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

    .line 1754
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1782
    const-string v0, "vendor.qti.hardware.radio.ims@1.9::IImsRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    return-object p0

    .line 1785
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

    .line 1789
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 1790
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1744
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_9/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1776
    const/4 v0, 0x1

    return v0
.end method
