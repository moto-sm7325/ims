.class public abstract Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1315
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1318
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

    .line 1339
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1384
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1385
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1386
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1387
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1388
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

    .line 1351
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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

    :array_7
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

    :array_8
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

    .line 1323
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.8::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.7::IImsRadioIndication"

    const-string v3, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    const-string v4, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    const-string v5, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v6, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v7, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const-string v8, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    const-string v9, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

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

    .line 1345
    const-string v0, "vendor.qti.hardware.radio.ims@1.8::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1372
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1394
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1396
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1424
    const-string v0, "vendor.qti.hardware.radio.ims@1.7::IImsRadioIndication"

    const-string v1, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v3, "vendor.qti.hardware.radio.ims@1.8::IImsRadioIndication"

    const-string v4, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    const-string v5, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const/4 v6, 0x0

    const-string v7, "android.hidl.base@1.0::IBase"

    const-string v8, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    const-string v9, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2045
    :sswitch_0
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 2048
    goto/16 :goto_1

    .line 2034
    :sswitch_1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2037
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2038
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2040
    goto/16 :goto_1

    .line 2024
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->ping()V

    .line 2027
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2029
    goto/16 :goto_1

    .line 2019
    :sswitch_3
    goto/16 :goto_1

    .line 2011
    :sswitch_4
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 2014
    goto/16 :goto_1

    .line 1977
    :sswitch_5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1980
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1982
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1984
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1985
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1986
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1987
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1988
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1990
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1991
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1993
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1997
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1998
    nop

    .line 1988
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1994
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2001
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2003
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2005
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2006
    goto/16 :goto_1

    .line 1966
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1969
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1970
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1972
    goto/16 :goto_1

    .line 1954
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1957
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1958
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1959
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1961
    goto/16 :goto_1

    .line 1943
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1946
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1947
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1948
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1949
    goto/16 :goto_1

    .line 1935
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onConferenceCallStateCompleted()V

    .line 1938
    goto/16 :goto_1

    .line 1926
    :sswitch_a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1928
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1929
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_8(Ljava/util/ArrayList;)V

    .line 1930
    goto/16 :goto_1

    .line 1917
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;>;"
    :sswitch_b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1920
    .local v0, "mode":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onSmsCallBackModeChanged(I)V

    .line 1921
    goto/16 :goto_1

    .line 1908
    .end local v0    # "mode":I
    :sswitch_c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1911
    .local v0, "domain":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onServiceDomainChanged(I)V

    .line 1912
    goto/16 :goto_1

    .line 1899
    .end local v0    # "domain":I
    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1902
    .local v0, "configCode":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onSipDtmfReceived(Ljava/lang/String;)V

    .line 1903
    goto/16 :goto_1

    .line 1890
    .end local v0    # "configCode":Ljava/lang/String;
    :sswitch_e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1893
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_7(Ljava/util/ArrayList;)V

    .line 1894
    goto/16 :goto_1

    .line 1881
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;>;"
    :sswitch_f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1884
    .local v0, "geoLocationDataStatus":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRetrievingGeoLocationDataStatus(I)V

    .line 1885
    goto/16 :goto_1

    .line 1871
    .end local v0    # "geoLocationDataStatus":I
    :sswitch_10
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;-><init>()V

    .line 1874
    .local v0, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1875
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onIncomingCallAutoRejected_1_6(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;)V

    .line 1876
    goto/16 :goto_1

    .line 1859
    .end local v0    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    :sswitch_11
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1861
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;-><init>()V

    .line 1862
    .restart local v0    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1863
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 1864
    .local v1, "callComposerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1865
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    .line 1866
    goto/16 :goto_1

    .line 1849
    .end local v0    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    .end local v1    # "callComposerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    :sswitch_12
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 1852
    .local v0, "info":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1853
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    .line 1854
    goto/16 :goto_1

    .line 1837
    .end local v0    # "info":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    :sswitch_13
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1840
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1841
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1842
    .local v2, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1843
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1844
    goto/16 :goto_1

    .line 1827
    .end local v0    # "type":I
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_14
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;-><init>()V

    .line 1830
    .local v0, "handover":Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1831
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onHandover_1_6(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)V

    .line 1832
    goto/16 :goto_1

    .line 1817
    .end local v0    # "handover":Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;
    :sswitch_15
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1819
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;-><init>()V

    .line 1820
    .local v0, "regInfo":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1821
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRegistrationChanged_1_6(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    .line 1822
    goto/16 :goto_1

    .line 1808
    .end local v0    # "regInfo":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    :sswitch_16
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1810
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1811
    .local v0, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onServiceStatusChanged_1_6(Ljava/util/ArrayList;)V

    .line 1812
    goto/16 :goto_1

    .line 1799
    .end local v0    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    :sswitch_17
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1801
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1802
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_6(Ljava/util/ArrayList;)V

    .line 1803
    goto/16 :goto_1

    .line 1788
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;>;"
    :sswitch_18
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1791
    .local v0, "type":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1792
    .local v1, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1793
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1794
    goto/16 :goto_1

    .line 1779
    .end local v0    # "type":I
    .end local v1    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_19
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1781
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1782
    .local v0, "wfcRoamingConfigurationSupport":Z
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    .line 1783
    goto/16 :goto_1

    .line 1769
    .end local v0    # "wfcRoamingConfigurationSupport":Z
    :sswitch_1a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1771
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;-><init>()V

    .line 1772
    .local v0, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1773
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onIncomingCallAutoRejected_1_5(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)V

    .line 1774
    goto/16 :goto_1

    .line 1760
    .end local v0    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    :sswitch_1b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1763
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_5(Ljava/util/ArrayList;)V

    .line 1764
    goto/16 :goto_1

    .line 1751
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    :sswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1754
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_4(Ljava/util/ArrayList;)V

    .line 1755
    goto/16 :goto_1

    .line 1743
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    :sswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onMultiIdentityInfoPending()V

    .line 1746
    goto/16 :goto_1

    .line 1734
    :sswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1737
    .local v0, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onMultiIdentityRegistrationStatusChange(Ljava/util/ArrayList;)V

    .line 1738
    goto/16 :goto_1

    .line 1725
    .end local v0    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    :sswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1728
    .local v0, "voiceInfo":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onVoiceInfoChanged(I)V

    .line 1729
    goto/16 :goto_1

    .line 1715
    .end local v0    # "voiceInfo":I
    :sswitch_20
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;-><init>()V

    .line 1718
    .local v0, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1719
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)V

    .line 1720
    goto/16 :goto_1

    .line 1706
    .end local v0    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;
    :sswitch_21
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1709
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_3(Ljava/util/ArrayList;)V

    .line 1710
    goto/16 :goto_1

    .line 1697
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    :sswitch_22
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1700
    .local v0, "isVopsEnabled":Z
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onVopsChanged(Z)V

    .line 1701
    goto/16 :goto_1

    .line 1687
    .end local v0    # "isVopsEnabled":Z
    :sswitch_23
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;-><init>()V

    .line 1690
    .local v0, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1691
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onIncomingImsSms(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)V

    .line 1692
    goto/16 :goto_1

    .line 1677
    .end local v0    # "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;
    :sswitch_24
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1679
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;-><init>()V

    .line 1680
    .local v0, "smsStatusReport":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1681
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onImsSmsStatusReport(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)V

    .line 1682
    goto/16 :goto_1

    .line 1668
    .end local v0    # "smsStatusReport":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;
    :sswitch_25
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1671
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_2(Ljava/util/ArrayList;)V

    .line 1672
    goto/16 :goto_1

    .line 1659
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    :sswitch_26
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1662
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged_1_1(Ljava/util/ArrayList;)V

    .line 1663
    goto/16 :goto_1

    .line 1649
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    :sswitch_27
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 1652
    .local v0, "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1653
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onSsacStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    .line 1654
    goto/16 :goto_1

    .line 1639
    .end local v0    # "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    :sswitch_28
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 1642
    .local v0, "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1643
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onVopsStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    .line 1644
    goto/16 :goto_1

    .line 1629
    .end local v0    # "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    :sswitch_29
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1632
    .local v0, "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1633
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V

    .line 1634
    goto/16 :goto_1

    .line 1620
    .end local v0    # "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    :sswitch_2a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1623
    .local v0, "voWiFiCallQualityInfo":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    .line 1624
    goto/16 :goto_1

    .line 1611
    .end local v0    # "voWiFiCallQualityInfo":I
    :sswitch_2b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1614
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    .line 1615
    goto/16 :goto_1

    .line 1597
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_2c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1600
    .local v0, "hasBlockStatusOnWwan":Z
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1601
    .local v1, "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1602
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1603
    .local v2, "hasBlockStatusOnWlan":Z
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1604
    .local v3, "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1605
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V

    .line 1606
    goto/16 :goto_1

    .line 1587
    .end local v0    # "hasBlockStatusOnWwan":Z
    .end local v1    # "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .end local v2    # "hasBlockStatusOnWlan":Z
    .end local v3    # "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    :sswitch_2d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;-><init>()V

    .line 1590
    .local v0, "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1591
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V

    .line 1592
    goto/16 :goto_1

    .line 1577
    .end local v0    # "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    :sswitch_2e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1580
    .local v0, "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1581
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1582
    goto/16 :goto_1

    .line 1567
    .end local v0    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :sswitch_2f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v0

    .line 1570
    .local v0, "lat":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 1571
    .local v2, "lon":D
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    .line 1572
    goto/16 :goto_1

    .line 1557
    .end local v0    # "lat":D
    .end local v2    # "lon":D
    :sswitch_30
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;-><init>()V

    .line 1560
    .local v0, "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1561
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V

    .line 1562
    goto/16 :goto_1

    .line 1547
    .end local v0    # "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    :sswitch_31
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;-><init>()V

    .line 1550
    .local v0, "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1551
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V

    .line 1552
    goto/16 :goto_1

    .line 1537
    .end local v0    # "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    :sswitch_32
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1540
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1541
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1542
    goto/16 :goto_1

    .line 1527
    .end local v0    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_33
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;-><init>()V

    .line 1530
    .local v0, "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1531
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V

    .line 1532
    goto/16 :goto_1

    .line 1517
    .end local v0    # "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    :sswitch_34
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;-><init>()V

    .line 1520
    .local v0, "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1521
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V

    .line 1522
    goto/16 :goto_1

    .line 1507
    .end local v0    # "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    :sswitch_35
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1510
    .local v0, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1511
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1512
    goto :goto_1

    .line 1499
    .end local v0    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :sswitch_36
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onExitEmergencyCallBackMode()V

    .line 1502
    goto :goto_1

    .line 1491
    :sswitch_37
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onEnterEmergencyCallBackMode()V

    .line 1494
    goto :goto_1

    .line 1482
    :sswitch_38
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1485
    .local v0, "radioState":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    .line 1486
    goto :goto_1

    .line 1473
    .end local v0    # "radioState":I
    :sswitch_39
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1476
    .local v0, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onServiceStatusChanged(Ljava/util/ArrayList;)V

    .line 1477
    goto :goto_1

    .line 1463
    .end local v0    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :sswitch_3a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;-><init>()V

    .line 1466
    .local v0, "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1467
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V

    .line 1468
    goto :goto_1

    .line 1453
    .end local v0    # "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    :sswitch_3b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1455
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1456
    .local v0, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1457
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1458
    goto :goto_1

    .line 1444
    .end local v0    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :sswitch_3c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1447
    .local v0, "tone":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRingbackTone(I)V

    .line 1448
    goto :goto_1

    .line 1436
    .end local v0    # "tone":I
    :sswitch_3d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onRing()V

    .line 1439
    goto :goto_1

    .line 1427
    :sswitch_3e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1430
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->onCallStateChanged(Ljava/util/ArrayList;)V

    .line 1431
    nop

    .line 2057
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3e
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_3b
        0x5 -> :sswitch_3a
        0x6 -> :sswitch_39
        0x7 -> :sswitch_38
        0x8 -> :sswitch_37
        0x9 -> :sswitch_36
        0xa -> :sswitch_35
        0xb -> :sswitch_34
        0xc -> :sswitch_33
        0xd -> :sswitch_32
        0xe -> :sswitch_31
        0xf -> :sswitch_30
        0x10 -> :sswitch_2f
        0x11 -> :sswitch_2e
        0x12 -> :sswitch_2d
        0x13 -> :sswitch_2c
        0x14 -> :sswitch_2b
        0x15 -> :sswitch_2a
        0x16 -> :sswitch_29
        0x17 -> :sswitch_28
        0x18 -> :sswitch_27
        0x19 -> :sswitch_26
        0x1a -> :sswitch_25
        0x1b -> :sswitch_24
        0x1c -> :sswitch_23
        0x1d -> :sswitch_22
        0x1e -> :sswitch_21
        0x1f -> :sswitch_20
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_1e
        0x22 -> :sswitch_1d
        0x23 -> :sswitch_1c
        0x24 -> :sswitch_1b
        0x25 -> :sswitch_1a
        0x26 -> :sswitch_19
        0x27 -> :sswitch_18
        0x28 -> :sswitch_17
        0x29 -> :sswitch_16
        0x2a -> :sswitch_15
        0x2b -> :sswitch_14
        0x2c -> :sswitch_13
        0x2d -> :sswitch_12
        0x2e -> :sswitch_11
        0x2f -> :sswitch_10
        0x30 -> :sswitch_f
        0x31 -> :sswitch_e
        0x32 -> :sswitch_d
        0x33 -> :sswitch_c
        0x34 -> :sswitch_b
        0x35 -> :sswitch_a
        0x36 -> :sswitch_9
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

    .line 1378
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1406
    const-string v0, "vendor.qti.hardware.radio.ims@1.8::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    return-object p0

    .line 1409
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

    .line 1413
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1414
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1368
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1400
    const/4 v0, 0x1

    return v0
.end method
