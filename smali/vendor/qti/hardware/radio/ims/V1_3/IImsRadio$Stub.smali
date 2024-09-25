.class public abstract Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1328
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1331
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

    .line 1347
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1387
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1388
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1389
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1390
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1391
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1359
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

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    filled-new-array {v2, v3, v4, v5, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1336
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    const-string v4, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v5, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1353
    const-string v0, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1375
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1397
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1399
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

    .line 1427
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    const-string v1, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x0

    const-string v4, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2087
    :sswitch_0
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2089
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->notifySyspropsChanged()V

    .line 2090
    goto/16 :goto_1

    .line 2076
    :sswitch_1
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2078
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2079
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2080
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2081
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2082
    goto/16 :goto_1

    .line 2066
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2068
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->ping()V

    .line 2069
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2070
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2071
    goto/16 :goto_1

    .line 2061
    :sswitch_3
    goto/16 :goto_1

    .line 2053
    :sswitch_4
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2055
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setHALInstrumentation()V

    .line 2056
    goto/16 :goto_1

    .line 2019
    :sswitch_5
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2021
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2022
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2024
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2026
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2027
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2028
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2029
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2030
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 2032
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2033
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 2035
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 2039
    invoke-virtual {v3, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2040
    nop

    .line 2030
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2036
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2043
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2045
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2047
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2048
    goto/16 :goto_1

    .line 2008
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2010
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2011
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2012
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2013
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2014
    goto/16 :goto_1

    .line 1996
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1998
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1999
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2000
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2001
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2002
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2003
    goto/16 :goto_1

    .line 1985
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1987
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1988
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1989
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1990
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1991
    goto/16 :goto_1

    .line 1974
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1976
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1977
    .local v0, "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 1978
    .local v1, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1979
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setColr_1_3(ILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    .line 1980
    goto/16 :goto_1

    .line 1963
    .end local v0    # "token":I
    .end local v1    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    :sswitch_a
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1966
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;-><init>()V

    .line 1967
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1968
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->hangup_1_3(ILvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)V

    .line 1969
    goto/16 :goto_1

    .line 1950
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    :sswitch_b
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1953
    .local v10, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v11

    .line 1954
    .local v11, "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v13

    .line 1955
    .local v13, "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    move-object v15, v0

    .line 1956
    .local v15, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    invoke-virtual {v15, v8}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1957
    move-object/from16 v0, p0

    move v1, v10

    move-wide v2, v11

    move-wide v4, v13

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V

    .line 1958
    goto/16 :goto_1

    .line 1939
    .end local v10    # "token":I
    .end local v11    # "lat":D
    .end local v13    # "lon":D
    .end local v15    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :sswitch_c
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1941
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 1942
    .local v0, "_hidl_out_format":Ljava/lang/String;
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1943
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1944
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1945
    goto/16 :goto_1

    .line 1928
    .end local v0    # "_hidl_out_format":Ljava/lang/String;
    :sswitch_d
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1931
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1932
    .local v1, "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1933
    .local v2, "smsReport":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->acknowledgeSmsReport(III)V

    .line 1934
    goto/16 :goto_1

    .line 1917
    .end local v0    # "token":I
    .end local v1    # "messageRef":I
    .end local v2    # "smsReport":I
    :sswitch_e
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1920
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1921
    .restart local v1    # "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1922
    .local v2, "smsResult":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->acknowledgeSms(III)V

    .line 1923
    goto/16 :goto_1

    .line 1906
    .end local v0    # "token":I
    .end local v1    # "messageRef":I
    .end local v2    # "smsResult":I
    :sswitch_f
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1908
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1909
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 1910
    .local v1, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1911
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V

    .line 1912
    goto/16 :goto_1

    .line 1895
    .end local v0    # "token":I
    .end local v1    # "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    :sswitch_10
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1898
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;-><init>()V

    .line 1899
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1900
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->hangup_1_2(ILvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;)V

    .line 1901
    goto/16 :goto_1

    .line 1884
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;
    :sswitch_11
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1886
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1887
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;-><init>()V

    .line 1888
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1889
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->hangup_1_1(ILvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;)V

    .line 1890
    goto/16 :goto_1

    .line 1875
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
    :sswitch_12
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1878
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->querySsacStatus(I)V

    .line 1879
    goto/16 :goto_1

    .line 1866
    .end local v0    # "token":I
    :sswitch_13
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1869
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->queryVopsStatus(I)V

    .line 1870
    goto/16 :goto_1

    .line 1857
    .end local v0    # "token":I
    :sswitch_14
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1859
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1860
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->queryVoltePref(I)V

    .line 1861
    goto/16 :goto_1

    .line 1847
    .end local v0    # "token":I
    :sswitch_15
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1849
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1850
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1851
    .local v1, "preference":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->updateVoltePref(II)V

    .line 1852
    goto/16 :goto_1

    .line 1837
    .end local v0    # "token":I
    .end local v1    # "preference":I
    :sswitch_16
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1840
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1841
    .local v1, "callId":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->cancelModifyCall(II)V

    .line 1842
    goto/16 :goto_1

    .line 1827
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_17
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1830
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1831
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    .line 1832
    goto/16 :goto_1

    .line 1818
    .end local v0    # "token":I
    .end local v1    # "message":Ljava/lang/String;
    :sswitch_18
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1821
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getImsSubConfig(I)V

    .line 1822
    goto/16 :goto_1

    .line 1805
    .end local v0    # "token":I
    :sswitch_19
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1808
    .restart local v10    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v11

    .line 1809
    .restart local v11    # "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v13

    .line 1810
    .restart local v13    # "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    move-object v15, v0

    .line 1811
    .local v15, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    invoke-virtual {v15, v8}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1812
    move-object/from16 v0, p0

    move v1, v10

    move-wide v2, v11

    move-wide v4, v13

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    .line 1813
    goto/16 :goto_1

    .line 1794
    .end local v10    # "token":I
    .end local v11    # "lat":D
    .end local v13    # "lon":D
    .end local v15    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    :sswitch_1a
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1796
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1797
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 1798
    .local v1, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1799
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    .line 1800
    goto/16 :goto_1

    .line 1785
    .end local v0    # "token":I
    .end local v1    # "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    :sswitch_1b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1788
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    .line 1789
    goto/16 :goto_1

    .line 1776
    .end local v0    # "token":I
    :sswitch_1c
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1779
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getRtpStatistics(I)V

    .line 1780
    goto/16 :goto_1

    .line 1763
    .end local v0    # "token":I
    :sswitch_1d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1766
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1767
    .local v1, "operationType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1768
    .local v2, "facilityType":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 1769
    .local v3, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-virtual {v3, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1770
    invoke-virtual {v7, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    .line 1771
    goto/16 :goto_1

    .line 1752
    .end local v0    # "token":I
    .end local v1    # "operationType":I
    .end local v2    # "facilityType":I
    .end local v3    # "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    :sswitch_1e
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1755
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 1756
    .local v1, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1757
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    .line 1758
    goto/16 :goto_1

    .line 1742
    .end local v0    # "token":I
    .end local v1    # "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    :sswitch_1f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1745
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1746
    .local v1, "status":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setSuppServiceNotification(II)V

    .line 1747
    goto/16 :goto_1

    .line 1731
    .end local v0    # "token":I
    .end local v1    # "status":I
    :sswitch_20
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1733
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1734
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1735
    .local v1, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1736
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setCallWaiting(III)V

    .line 1737
    goto/16 :goto_1

    .line 1721
    .end local v0    # "token":I
    .end local v1    # "serviceStatus":I
    .end local v2    # "serviceClass":I
    :sswitch_21
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1723
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1724
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1725
    .local v1, "serviceClass":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getCallWaiting(II)V

    .line 1726
    goto/16 :goto_1

    .line 1710
    .end local v0    # "token":I
    .end local v1    # "serviceClass":I
    :sswitch_22
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1713
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1714
    .local v1, "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1715
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1716
    goto/16 :goto_1

    .line 1699
    .end local v0    # "token":I
    .end local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :sswitch_23
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1702
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1703
    .restart local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1704
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1705
    goto/16 :goto_1

    .line 1688
    .end local v0    # "token":I
    .end local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :sswitch_24
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1691
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1692
    .local v1, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1693
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1694
    goto/16 :goto_1

    .line 1677
    .end local v0    # "token":I
    .end local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_25
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1679
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1680
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1681
    .restart local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1682
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1683
    goto/16 :goto_1

    .line 1666
    .end local v0    # "token":I
    .end local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_26
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1668
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1669
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1670
    .local v1, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1671
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1672
    goto/16 :goto_1

    .line 1657
    .end local v0    # "token":I
    .end local v1    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :sswitch_27
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1659
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1660
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->stopDtmf(I)V

    .line 1661
    goto/16 :goto_1

    .line 1646
    .end local v0    # "token":I
    :sswitch_28
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1649
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1650
    .local v1, "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1651
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1652
    goto/16 :goto_1

    .line 1635
    .end local v0    # "token":I
    .end local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :sswitch_29
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1638
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1639
    .restart local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1640
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1641
    goto/16 :goto_1

    .line 1626
    .end local v0    # "token":I
    .end local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :sswitch_2a
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1629
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 1630
    goto/16 :goto_1

    .line 1615
    .end local v0    # "token":I
    :sswitch_2b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1618
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1619
    .local v1, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1620
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1621
    goto/16 :goto_1

    .line 1606
    .end local v0    # "token":I
    .end local v1    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :sswitch_2c
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1609
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getColr(I)V

    .line 1610
    goto/16 :goto_1

    .line 1595
    .end local v0    # "token":I
    :sswitch_2d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1598
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1599
    .local v1, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1600
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    .line 1601
    goto/16 :goto_1

    .line 1586
    .end local v0    # "token":I
    .end local v1    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    :sswitch_2e
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1589
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getClir(I)V

    .line 1590
    goto/16 :goto_1

    .line 1577
    .end local v0    # "token":I
    :sswitch_2f
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1579
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1580
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getClip(I)V

    .line 1581
    goto/16 :goto_1

    .line 1568
    .end local v0    # "token":I
    :sswitch_30
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1571
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->conference(I)V

    .line 1572
    goto/16 :goto_1

    .line 1557
    .end local v0    # "token":I
    :sswitch_31
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1560
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1561
    .local v1, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1562
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1563
    goto/16 :goto_1

    .line 1546
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_32
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1549
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1550
    .restart local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1551
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1552
    goto/16 :goto_1

    .line 1536
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_33
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1539
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1540
    .local v1, "callId":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->resume(II)V

    .line 1541
    goto/16 :goto_1

    .line 1526
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_34
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1529
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1530
    .restart local v1    # "callId":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->hold(II)V

    .line 1531
    goto/16 :goto_1

    .line 1515
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_35
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1518
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 1519
    .local v1, "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1520
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    .line 1521
    goto/16 :goto_1

    .line 1506
    .end local v0    # "token":I
    .end local v1    # "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :sswitch_36
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1509
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->queryServiceStatus(I)V

    .line 1510
    goto/16 :goto_1

    .line 1496
    .end local v0    # "token":I
    :sswitch_37
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1499
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1500
    .local v1, "state":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->requestRegistrationChange(II)V

    .line 1501
    goto/16 :goto_1

    .line 1485
    .end local v0    # "token":I
    .end local v1    # "state":I
    :sswitch_38
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1488
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 1489
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1490
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    .line 1491
    goto :goto_1

    .line 1473
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    :sswitch_39
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1476
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1477
    .local v1, "callType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1478
    .local v2, "presentation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1479
    .local v3, "mode":I
    invoke-virtual {v7, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->answer(IIII)V

    .line 1480
    goto :goto_1

    .line 1464
    .end local v0    # "token":I
    .end local v1    # "callType":I
    .end local v2    # "presentation":I
    .end local v3    # "mode":I
    :sswitch_3a
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1467
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 1468
    goto :goto_1

    .line 1453
    .end local v0    # "token":I
    :sswitch_3b
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1455
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1456
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1457
    .local v1, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1458
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1459
    goto :goto_1

    .line 1442
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :sswitch_3c
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1445
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1446
    .restart local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1447
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1448
    goto :goto_1

    .line 1430
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :sswitch_3d
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v0

    .line 1433
    .local v0, "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v1

    .line 1434
    .local v1, "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 1435
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1436
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1437
    nop

    .line 2099
    .end local v0    # "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    .end local v1    # "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3d
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_3a
        0x5 -> :sswitch_39
        0x6 -> :sswitch_38
        0x7 -> :sswitch_37
        0x8 -> :sswitch_36
        0x9 -> :sswitch_35
        0xa -> :sswitch_34
        0xb -> :sswitch_33
        0xc -> :sswitch_32
        0xd -> :sswitch_31
        0xe -> :sswitch_30
        0xf -> :sswitch_2f
        0x10 -> :sswitch_2e
        0x11 -> :sswitch_2d
        0x12 -> :sswitch_2c
        0x13 -> :sswitch_2b
        0x14 -> :sswitch_2a
        0x15 -> :sswitch_29
        0x16 -> :sswitch_28
        0x17 -> :sswitch_27
        0x18 -> :sswitch_26
        0x19 -> :sswitch_25
        0x1a -> :sswitch_24
        0x1b -> :sswitch_23
        0x1c -> :sswitch_22
        0x1d -> :sswitch_21
        0x1e -> :sswitch_20
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_1e
        0x21 -> :sswitch_1d
        0x22 -> :sswitch_1c
        0x23 -> :sswitch_1b
        0x24 -> :sswitch_1a
        0x25 -> :sswitch_19
        0x26 -> :sswitch_18
        0x27 -> :sswitch_17
        0x28 -> :sswitch_16
        0x29 -> :sswitch_15
        0x2a -> :sswitch_14
        0x2b -> :sswitch_13
        0x2c -> :sswitch_12
        0x2d -> :sswitch_11
        0x2e -> :sswitch_10
        0x2f -> :sswitch_f
        0x30 -> :sswitch_e
        0x31 -> :sswitch_d
        0x32 -> :sswitch_c
        0x33 -> :sswitch_b
        0x34 -> :sswitch_a
        0x35 -> :sswitch_9
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

    .line 1381
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1409
    const-string v0, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    return-object p0

    .line 1412
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

    .line 1416
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 1417
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1371
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1403
    const/4 v0, 0x1

    return v0
.end method
