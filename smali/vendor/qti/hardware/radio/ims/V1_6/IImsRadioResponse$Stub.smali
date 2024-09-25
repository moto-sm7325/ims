.class public abstract Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1378
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1381
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

    .line 1399
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1441
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1442
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1443
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1444
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1445
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1411
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

    filled-new-array/range {v2 .. v8}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1386
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.5::IImsRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v4, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v5, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    const-string v6, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    const-string v7, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1405
    const-string v0, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1429
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1451
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1453
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1481
    const-string v0, "vendor.qti.hardware.radio.ims@1.5::IImsRadioResponse"

    const-string v1, "vendor.qti.hardware.radio.ims@1.4::IImsRadioResponse"

    const-string v2, "vendor.qti.hardware.radio.ims@1.3::IImsRadioResponse"

    const-string v3, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    const/4 v4, 0x0

    const-string v5, "android.hidl.base@1.0::IBase"

    const-string v6, "vendor.qti.hardware.radio.ims@1.0::IImsRadioResponse"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2165
    :sswitch_0
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->notifySyspropsChanged()V

    .line 2168
    goto/16 :goto_1

    .line 2154
    :sswitch_1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2157
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2158
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2160
    goto/16 :goto_1

    .line 2144
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2146
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->ping()V

    .line 2147
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2148
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2149
    goto/16 :goto_1

    .line 2139
    :sswitch_3
    goto/16 :goto_1

    .line 2131
    :sswitch_4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setHALInstrumentation()V

    .line 2134
    goto/16 :goto_1

    .line 2097
    :sswitch_5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2100
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2102
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2104
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2105
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2106
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2107
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2108
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 2110
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2111
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2113
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 2117
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2118
    nop

    .line 2108
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2114
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2121
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2123
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2125
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2126
    goto/16 :goto_1

    .line 2086
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2089
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2090
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2092
    goto/16 :goto_1

    .line 2074
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2076
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2077
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2078
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2079
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2081
    goto/16 :goto_1

    .line 2063
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2066
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2067
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2068
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2069
    goto/16 :goto_1

    .line 2051
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2054
    .local v0, "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2055
    .local v1, "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 2056
    .local v2, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2057
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 2058
    goto/16 :goto_1

    .line 2039
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2042
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2043
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 2044
    .restart local v2    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2045
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 2046
    goto/16 :goto_1

    .line 2028
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2031
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2032
    .restart local v1    # "errorCode":I
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2033
    .local v2, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryServiceStatusResponse_1_6(IILjava/util/ArrayList;)V

    .line 2034
    goto/16 :goto_1

    .line 2016
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    :sswitch_c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2019
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2020
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;-><init>()V

    .line 2021
    .local v2, "registration":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2022
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getRegistrationResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    .line 2023
    goto/16 :goto_1

    .line 2004
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "registration":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    :sswitch_d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2007
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2008
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 2009
    .local v2, "config":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2010
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setConfigResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    .line 2011
    goto/16 :goto_1

    .line 1992
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    :sswitch_e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1995
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1996
    .local v1, "msgRef":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1997
    .local v2, "smsStatus":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1998
    .local v3, "reason":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendImsSmsResponse_1_5(IIII)V

    .line 1999
    goto/16 :goto_1

    .line 1980
    .end local v0    # "token":I
    .end local v1    # "msgRef":I
    .end local v2    # "smsStatus":I
    .end local v3    # "reason":I
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1983
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1984
    .local v1, "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;-><init>()V

    .line 1985
    .local v2, "callForwardStatus":Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1986
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)V

    .line 1987
    goto/16 :goto_1

    .line 1969
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "callForwardStatus":Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1972
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1973
    .local v1, "msisdn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1974
    .local v2, "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 1975
    goto/16 :goto_1

    .line 1959
    .end local v0    # "token":I
    .end local v1    # "msisdn":Ljava/lang/String;
    .end local v2    # "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_11
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1961
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1962
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1963
    .local v1, "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->registerMultiIdentityLinesResponse(II)V

    .line 1964
    goto/16 :goto_1

    .line 1947
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1950
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1951
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 1952
    .local v2, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1953
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    .line 1954
    goto/16 :goto_1

    .line 1935
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    :sswitch_13
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1938
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1939
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;-><init>()V

    .line 1940
    .local v2, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1941
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V

    .line 1942
    goto/16 :goto_1

    .line 1923
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    :sswitch_14
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadioResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1926
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1927
    .local v1, "msgeRef":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1928
    .local v2, "smsStatus":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1929
    .restart local v3    # "reason":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendImsSmsResponse(IIII)V

    .line 1930
    goto/16 :goto_1

    .line 1911
    .end local v0    # "token":I
    .end local v1    # "msgeRef":I
    .end local v2    # "smsStatus":I
    .end local v3    # "reason":I
    :sswitch_15
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1914
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1915
    .local v1, "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;-><init>()V

    .line 1916
    .local v2, "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1917
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->querySsacStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V

    .line 1918
    goto/16 :goto_1

    .line 1899
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "ssacInfo":Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;
    :sswitch_16
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1902
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1903
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;-><init>()V

    .line 1904
    .local v2, "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1905
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryVopsStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V

    .line 1906
    goto/16 :goto_1

    .line 1888
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "vopsInfo":Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;
    :sswitch_17
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1891
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1892
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1893
    .local v2, "voltePref":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryVoltePrefResponse(III)V

    .line 1894
    goto/16 :goto_1

    .line 1878
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "voltePref":I
    :sswitch_18
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1880
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1881
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1882
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->updateVoltePrefResponse(II)V

    .line 1883
    goto/16 :goto_1

    .line 1868
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_19
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1871
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1872
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    .line 1873
    goto/16 :goto_1

    .line 1858
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_1a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1861
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1862
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    .line 1863
    goto/16 :goto_1

    .line 1846
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_1b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1849
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1850
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1851
    .local v2, "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1852
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1853
    goto/16 :goto_1

    .line 1836
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "subConfigInfo":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :sswitch_1c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1839
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1840
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    .line 1841
    goto/16 :goto_1

    .line 1826
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_1d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1829
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1830
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    .line 1831
    goto/16 :goto_1

    .line 1816
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_1e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1819
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1820
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    .line 1821
    goto/16 :goto_1

    .line 1805
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_1f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1808
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1809
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1810
    .local v2, "packetErrorCount":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    .line 1811
    goto/16 :goto_1

    .line 1794
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "packetErrorCount":J
    :sswitch_20
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1797
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1798
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    .line 1799
    .local v2, "packetCount":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    .line 1800
    goto/16 :goto_1

    .line 1783
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "packetCount":J
    :sswitch_21
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1786
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1787
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1788
    .local v2, "serviceStatus":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    .line 1789
    goto/16 :goto_1

    .line 1773
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "serviceStatus":I
    :sswitch_22
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1776
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1777
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->explicitCallTransferResponse(II)V

    .line 1778
    goto/16 :goto_1

    .line 1759
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_23
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1762
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1763
    .restart local v1    # "errorCode":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 1764
    .local v8, "serviceStatus":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 1765
    .local v9, "serviceClass":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    move-object v10, v2

    .line 1766
    .local v10, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v10, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1767
    move-object v2, p0

    move v3, v0

    move v4, v1

    move v5, v8

    move v6, v9

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1768
    goto/16 :goto_1

    .line 1746
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v8    # "serviceStatus":I
    .end local v9    # "serviceClass":I
    .end local v10    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_24
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1749
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1750
    .restart local v1    # "errorCode":I
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1751
    .local v2, "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1752
    .local v3, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1753
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1754
    goto/16 :goto_1

    .line 1736
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    .end local v3    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_25
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1739
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1740
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    .line 1741
    goto/16 :goto_1

    .line 1726
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_26
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1729
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1730
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    .line 1731
    goto/16 :goto_1

    .line 1716
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_27
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1719
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1720
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    .line 1721
    goto/16 :goto_1

    .line 1706
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_28
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1709
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1710
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    .line 1711
    goto/16 :goto_1

    .line 1696
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_29
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1699
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1700
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    .line 1701
    goto/16 :goto_1

    .line 1686
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_2a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1689
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1690
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    .line 1691
    goto/16 :goto_1

    .line 1676
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_2b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1679
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1680
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    .line 1681
    goto/16 :goto_1

    .line 1664
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_2c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1667
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1668
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1669
    .local v2, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1670
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1671
    goto/16 :goto_1

    .line 1654
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :sswitch_2d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1657
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1658
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setClirResponse(II)V

    .line 1659
    goto/16 :goto_1

    .line 1641
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_2e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1644
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1645
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1646
    .local v2, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1647
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1648
    .local v3, "hasClirInfo":Z
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V

    .line 1649
    goto/16 :goto_1

    .line 1629
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    .end local v3    # "hasClirInfo":Z
    :sswitch_2f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1632
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1633
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;-><init>()V

    .line 1634
    .local v2, "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1635
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V

    .line 1636
    goto/16 :goto_1

    .line 1617
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;
    :sswitch_30
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1620
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1621
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1622
    .local v2, "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1623
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1624
    goto/16 :goto_1

    .line 1605
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "errorInfo":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_31
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1608
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1609
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;-><init>()V

    .line 1610
    .local v2, "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1611
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V

    .line 1612
    goto/16 :goto_1

    .line 1593
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    :sswitch_32
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1596
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1597
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1598
    .local v2, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1599
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1600
    goto/16 :goto_1

    .line 1581
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :sswitch_33
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1584
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1585
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1586
    .local v2, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1587
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1588
    goto/16 :goto_1

    .line 1569
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_34
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1572
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1573
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1574
    .restart local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1575
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1576
    goto/16 :goto_1

    .line 1557
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_35
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1560
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1561
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1562
    .local v2, "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1563
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1564
    goto/16 :goto_1

    .line 1545
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_36
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1548
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1549
    .restart local v1    # "errorCode":I
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1550
    .restart local v2    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v2, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1551
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1552
    goto :goto_1

    .line 1535
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "sipError":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_37
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1538
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1539
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    .line 1540
    goto :goto_1

    .line 1524
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_38
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1527
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1528
    .restart local v1    # "errorCode":I
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1529
    .local v2, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->queryServiceStatusResponse(IILjava/util/ArrayList;)V

    .line 1530
    goto :goto_1

    .line 1514
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    .end local v2    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :sswitch_39
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1517
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1518
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    .line 1519
    goto :goto_1

    .line 1504
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_3a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1507
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1508
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->hangupResponse(II)V

    .line 1509
    goto :goto_1

    .line 1494
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_3b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1497
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1498
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->answerResponse(II)V

    .line 1499
    goto :goto_1

    .line 1484
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :sswitch_3c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1487
    .restart local v0    # "token":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1488
    .restart local v1    # "errorCode":I
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->dialResponse(II)V

    .line 1489
    nop

    .line 2177
    .end local v0    # "token":I
    .end local v1    # "errorCode":I
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_39
        0x5 -> :sswitch_38
        0x6 -> :sswitch_37
        0x7 -> :sswitch_36
        0x8 -> :sswitch_35
        0x9 -> :sswitch_34
        0xa -> :sswitch_33
        0xb -> :sswitch_32
        0xc -> :sswitch_31
        0xd -> :sswitch_30
        0xe -> :sswitch_2f
        0xf -> :sswitch_2e
        0x10 -> :sswitch_2d
        0x11 -> :sswitch_2c
        0x12 -> :sswitch_2b
        0x13 -> :sswitch_2a
        0x14 -> :sswitch_29
        0x15 -> :sswitch_28
        0x16 -> :sswitch_27
        0x17 -> :sswitch_26
        0x18 -> :sswitch_25
        0x19 -> :sswitch_24
        0x1a -> :sswitch_23
        0x1b -> :sswitch_22
        0x1c -> :sswitch_21
        0x1d -> :sswitch_20
        0x1e -> :sswitch_1f
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1d
        0x21 -> :sswitch_1c
        0x22 -> :sswitch_1b
        0x23 -> :sswitch_1a
        0x24 -> :sswitch_19
        0x25 -> :sswitch_18
        0x26 -> :sswitch_17
        0x27 -> :sswitch_16
        0x28 -> :sswitch_15
        0x29 -> :sswitch_14
        0x2a -> :sswitch_13
        0x2b -> :sswitch_12
        0x2c -> :sswitch_11
        0x2d -> :sswitch_10
        0x2e -> :sswitch_f
        0x2f -> :sswitch_e
        0x30 -> :sswitch_d
        0x31 -> :sswitch_c
        0x32 -> :sswitch_b
        0x33 -> :sswitch_a
        0x34 -> :sswitch_9
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

    .line 1435
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1463
    const-string v0, "vendor.qti.hardware.radio.ims@1.6::IImsRadioResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    return-object p0

    .line 1466
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

    .line 1470
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1425
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1457
    const/4 v0, 0x1

    return v0
.end method
