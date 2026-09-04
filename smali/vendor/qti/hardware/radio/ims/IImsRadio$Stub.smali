.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;
.super Landroid/os/Binder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acknowledgeSms:I = 0x2a

.field static final TRANSACTION_acknowledgeSmsReport:I = 0x2b

.field static final TRANSACTION_addParticipant:I = 0x3

.field static final TRANSACTION_answer:I = 0x5

.field static final TRANSACTION_callComposerDial:I = 0x32

.field static final TRANSACTION_cancelModifyCall:I = 0x28

.field static final TRANSACTION_cancelPendingUssd:I = 0x31

.field static final TRANSACTION_conference:I = 0xe

.field static final TRANSACTION_deflectCall:I = 0x24

.field static final TRANSACTION_dial:I = 0x2

.field static final TRANSACTION_emergencyDial:I = 0x2f

.field static final TRANSACTION_exitEmergencyCallbackMode:I = 0x14

.field static final TRANSACTION_exitSmsCallBackMode:I = 0x36

.field static final TRANSACTION_explicitCallTransfer:I = 0x20

.field static final TRANSACTION_getCallWaiting:I = 0x1d

.field static final TRANSACTION_getClip:I = 0xf

.field static final TRANSACTION_getClir:I = 0x10

.field static final TRANSACTION_getColr:I = 0x12

.field static final TRANSACTION_getConfig:I = 0xd

.field static final TRANSACTION_getImsRegistrationState:I = 0x4

.field static final TRANSACTION_getImsSubConfig:I = 0x26

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getRtpErrorStatistics:I = 0x23

.field static final TRANSACTION_getRtpStatistics:I = 0x22

.field static final TRANSACTION_getSmsFormat:I = 0x2c

.field static final TRANSACTION_hangup:I = 0x6

.field static final TRANSACTION_hold:I = 0xa

.field static final TRANSACTION_modifyCallConfirm:I = 0x1a

.field static final TRANSACTION_modifyCallInitiate:I = 0x19

.field static final TRANSACTION_queryCallForwardStatus:I = 0x1b

.field static final TRANSACTION_queryMultiSimVoiceCapability:I = 0x35

.field static final TRANSACTION_queryServiceStatus:I = 0x8

.field static final TRANSACTION_queryVirtualLineInfo:I = 0x2e

.field static final TRANSACTION_registerMultiIdentityLines:I = 0x2d

.field static final TRANSACTION_requestRegistrationChange:I = 0x7

.field static final TRANSACTION_resume:I = 0xb

.field static final TRANSACTION_sendDtmf:I = 0x15

.field static final TRANSACTION_sendGeolocationInfo:I = 0x25

.field static final TRANSACTION_sendRttMessage:I = 0x27

.field static final TRANSACTION_sendSipDtmf:I = 0x33

.field static final TRANSACTION_sendSms:I = 0x29

.field static final TRANSACTION_sendUssd:I = 0x30

.field static final TRANSACTION_sendVosActionInfo:I = 0x38

.field static final TRANSACTION_sendVosSupportStatus:I = 0x37

.field static final TRANSACTION_setCallForwardStatus:I = 0x1c

.field static final TRANSACTION_setCallWaiting:I = 0x1e

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setClir:I = 0x11

.field static final TRANSACTION_setColr:I = 0x13

.field static final TRANSACTION_setConfig:I = 0xc

.field static final TRANSACTION_setMediaConfiguration:I = 0x34

.field static final TRANSACTION_setServiceStatus:I = 0x9

.field static final TRANSACTION_setSuppServiceNotification:I = 0x1f

.field static final TRANSACTION_setUiTtyMode:I = 0x18

.field static final TRANSACTION_startDtmf:I = 0x16

.field static final TRANSACTION_stopDtmf:I = 0x17

.field static final TRANSACTION_suppServiceStatus:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 205
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 206
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->markVintfStability()V

    .line 207
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadio;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 215
    if-nez p0, :cond_0

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 219
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadio;

    if-eqz v1, :cond_1

    .line 220
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/radio/ims/IImsRadio;

    return-object v1

    .line 222
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 231
    sparse-switch p0, :sswitch_data_0

    .line 467
    const/4 v0, 0x0

    return-object v0

    .line 459
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 463
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 455
    :sswitch_2
    const-string v0, "sendVosActionInfo"

    return-object v0

    .line 451
    :sswitch_3
    const-string v0, "sendVosSupportStatus"

    return-object v0

    .line 447
    :sswitch_4
    const-string v0, "exitSmsCallBackMode"

    return-object v0

    .line 443
    :sswitch_5
    const-string v0, "queryMultiSimVoiceCapability"

    return-object v0

    .line 439
    :sswitch_6
    const-string v0, "setMediaConfiguration"

    return-object v0

    .line 435
    :sswitch_7
    const-string v0, "sendSipDtmf"

    return-object v0

    .line 431
    :sswitch_8
    const-string v0, "callComposerDial"

    return-object v0

    .line 427
    :sswitch_9
    const-string v0, "cancelPendingUssd"

    return-object v0

    .line 423
    :sswitch_a
    const-string v0, "sendUssd"

    return-object v0

    .line 419
    :sswitch_b
    const-string v0, "emergencyDial"

    return-object v0

    .line 415
    :sswitch_c
    const-string v0, "queryVirtualLineInfo"

    return-object v0

    .line 411
    :sswitch_d
    const-string v0, "registerMultiIdentityLines"

    return-object v0

    .line 407
    :sswitch_e
    const-string v0, "getSmsFormat"

    return-object v0

    .line 403
    :sswitch_f
    const-string v0, "acknowledgeSmsReport"

    return-object v0

    .line 399
    :sswitch_10
    const-string v0, "acknowledgeSms"

    return-object v0

    .line 395
    :sswitch_11
    const-string v0, "sendSms"

    return-object v0

    .line 391
    :sswitch_12
    const-string v0, "cancelModifyCall"

    return-object v0

    .line 387
    :sswitch_13
    const-string v0, "sendRttMessage"

    return-object v0

    .line 383
    :sswitch_14
    const-string v0, "getImsSubConfig"

    return-object v0

    .line 379
    :sswitch_15
    const-string v0, "sendGeolocationInfo"

    return-object v0

    .line 375
    :sswitch_16
    const-string v0, "deflectCall"

    return-object v0

    .line 371
    :sswitch_17
    const-string v0, "getRtpErrorStatistics"

    return-object v0

    .line 367
    :sswitch_18
    const-string v0, "getRtpStatistics"

    return-object v0

    .line 363
    :sswitch_19
    const-string v0, "suppServiceStatus"

    return-object v0

    .line 359
    :sswitch_1a
    const-string v0, "explicitCallTransfer"

    return-object v0

    .line 355
    :sswitch_1b
    const-string v0, "setSuppServiceNotification"

    return-object v0

    .line 351
    :sswitch_1c
    const-string v0, "setCallWaiting"

    return-object v0

    .line 347
    :sswitch_1d
    const-string v0, "getCallWaiting"

    return-object v0

    .line 343
    :sswitch_1e
    const-string v0, "setCallForwardStatus"

    return-object v0

    .line 339
    :sswitch_1f
    const-string v0, "queryCallForwardStatus"

    return-object v0

    .line 335
    :sswitch_20
    const-string v0, "modifyCallConfirm"

    return-object v0

    .line 331
    :sswitch_21
    const-string v0, "modifyCallInitiate"

    return-object v0

    .line 327
    :sswitch_22
    const-string v0, "setUiTtyMode"

    return-object v0

    .line 323
    :sswitch_23
    const-string v0, "stopDtmf"

    return-object v0

    .line 319
    :sswitch_24
    const-string v0, "startDtmf"

    return-object v0

    .line 315
    :sswitch_25
    const-string v0, "sendDtmf"

    return-object v0

    .line 311
    :sswitch_26
    const-string v0, "exitEmergencyCallbackMode"

    return-object v0

    .line 307
    :sswitch_27
    const-string v0, "setColr"

    return-object v0

    .line 303
    :sswitch_28
    const-string v0, "getColr"

    return-object v0

    .line 299
    :sswitch_29
    const-string v0, "setClir"

    return-object v0

    .line 295
    :sswitch_2a
    const-string v0, "getClir"

    return-object v0

    .line 291
    :sswitch_2b
    const-string v0, "getClip"

    return-object v0

    .line 287
    :sswitch_2c
    const-string v0, "conference"

    return-object v0

    .line 283
    :sswitch_2d
    const-string v0, "getConfig"

    return-object v0

    .line 279
    :sswitch_2e
    const-string v0, "setConfig"

    return-object v0

    .line 275
    :sswitch_2f
    const-string v0, "resume"

    return-object v0

    .line 271
    :sswitch_30
    const-string v0, "hold"

    return-object v0

    .line 267
    :sswitch_31
    const-string v0, "setServiceStatus"

    return-object v0

    .line 263
    :sswitch_32
    const-string v0, "queryServiceStatus"

    return-object v0

    .line 259
    :sswitch_33
    const-string v0, "requestRegistrationChange"

    return-object v0

    .line 255
    :sswitch_34
    const-string v0, "hangup"

    return-object v0

    .line 251
    :sswitch_35
    const-string v0, "answer"

    return-object v0

    .line 247
    :sswitch_36
    const-string v0, "getImsRegistrationState"

    return-object v0

    .line 243
    :sswitch_37
    const-string v0, "addParticipant"

    return-object v0

    .line 239
    :sswitch_38
    const-string v0, "dial"

    return-object v0

    .line 235
    :sswitch_39
    const-string v0, "setCallback"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_39
        0x2 -> :sswitch_38
        0x3 -> :sswitch_37
        0x4 -> :sswitch_36
        0x5 -> :sswitch_35
        0x6 -> :sswitch_34
        0x7 -> :sswitch_33
        0x8 -> :sswitch_32
        0x9 -> :sswitch_31
        0xa -> :sswitch_30
        0xb -> :sswitch_2f
        0xc -> :sswitch_2e
        0xd -> :sswitch_2d
        0xe -> :sswitch_2c
        0xf -> :sswitch_2b
        0x10 -> :sswitch_2a
        0x11 -> :sswitch_29
        0x12 -> :sswitch_28
        0x13 -> :sswitch_27
        0x14 -> :sswitch_26
        0x15 -> :sswitch_25
        0x16 -> :sswitch_24
        0x17 -> :sswitch_23
        0x18 -> :sswitch_22
        0x19 -> :sswitch_21
        0x1a -> :sswitch_20
        0x1b -> :sswitch_1f
        0x1c -> :sswitch_1e
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1c
        0x1f -> :sswitch_1b
        0x20 -> :sswitch_1a
        0x21 -> :sswitch_19
        0x22 -> :sswitch_18
        0x23 -> :sswitch_17
        0x24 -> :sswitch_16
        0x25 -> :sswitch_15
        0x26 -> :sswitch_14
        0x27 -> :sswitch_13
        0x28 -> :sswitch_12
        0x29 -> :sswitch_11
        0x2a -> :sswitch_10
        0x2b -> :sswitch_f
        0x2c -> :sswitch_e
        0x2d -> :sswitch_d
        0x2e -> :sswitch_c
        0x2f -> :sswitch_b
        0x30 -> :sswitch_a
        0x31 -> :sswitch_9
        0x32 -> :sswitch_8
        0x33 -> :sswitch_7
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 226
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 2043
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 474
    invoke-static {p1}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 479
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 480
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 502
    packed-switch p1, :pswitch_data_0

    .line 1036
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 486
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    return v1

    .line 491
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    return v1

    .line 497
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    return v1

    .line 1027
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1029
    .local v2, "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/VosActionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/VosActionInfo;

    .line 1030
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/VosActionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendVosActionInfo(ILvendor/qti/hardware/radio/ims/VosActionInfo;)V

    .line 1032
    goto/16 :goto_0

    .line 1017
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/VosActionInfo;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1019
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1020
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendVosSupportStatus(IZ)V

    .line 1022
    goto/16 :goto_0

    .line 1009
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1010
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->exitSmsCallBackMode(I)V

    .line 1012
    goto/16 :goto_0

    .line 1001
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1002
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryMultiSimVoiceCapability(I)V

    .line 1004
    goto/16 :goto_0

    .line 991
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 993
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/MediaConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/MediaConfig;

    .line 994
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/MediaConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V

    .line 996
    goto/16 :goto_0

    .line 981
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/MediaConfig;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 983
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendSipDtmf(ILjava/lang/String;)V

    .line 986
    goto/16 :goto_0

    .line 971
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 973
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    .line 974
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V

    .line 976
    goto/16 :goto_0

    .line 963
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 964
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->cancelPendingUssd(I)V

    .line 966
    goto/16 :goto_0

    .line 953
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 955
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 958
    goto/16 :goto_0

    .line 943
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 945
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    .line 946
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V

    .line 948
    goto/16 :goto_0

    .line 933
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 935
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 936
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryVirtualLineInfo(ILjava/lang/String;)V

    .line 938
    goto/16 :goto_0

    .line 923
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 925
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 926
    .local v3, "_arg1":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 927
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    .line 928
    goto/16 :goto_0

    .line 915
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    :pswitch_c
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v2

    .line 916
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 918
    goto/16 :goto_0

    .line 906
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 908
    .local v2, "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    .line 909
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V

    .line 911
    goto/16 :goto_0

    .line 896
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 898
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    .line 899
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V

    .line 901
    goto/16 :goto_0

    .line 886
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 888
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    .line 889
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V

    .line 891
    goto/16 :goto_0

    .line 876
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 878
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 879
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 880
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->cancelModifyCall(II)V

    .line 881
    goto/16 :goto_0

    .line 866
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 868
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    .line 871
    goto/16 :goto_0

    .line 858
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 859
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getImsSubConfig(I)V

    .line 861
    goto/16 :goto_0

    .line 848
    .end local v2    # "_arg0":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 850
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    .line 851
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V

    .line 853
    goto/16 :goto_0

    .line 838
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 840
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    .line 841
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V

    .line 843
    goto/16 :goto_0

    .line 830
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 831
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    .line 833
    goto/16 :goto_0

    .line 822
    .end local v2    # "_arg0":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 824
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getRtpStatistics(I)V

    .line 825
    goto/16 :goto_0

    .line 812
    .end local v2    # "_arg0":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 814
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    .line 815
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V

    .line 817
    goto/16 :goto_0

    .line 802
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 804
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    .line 805
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V

    .line 807
    goto/16 :goto_0

    .line 792
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 795
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setSuppServiceNotification(II)V

    .line 797
    goto/16 :goto_0

    .line 782
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 784
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .line 785
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V

    .line 787
    goto/16 :goto_0

    .line 772
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 774
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 775
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getCallWaiting(II)V

    .line 777
    goto/16 :goto_0

    .line 762
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 764
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 765
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    .line 767
    goto/16 :goto_0

    .line 752
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 754
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 755
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    .line 757
    goto/16 :goto_0

    .line 742
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 744
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 745
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 747
    goto/16 :goto_0

    .line 732
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 734
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 735
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 737
    goto/16 :goto_0

    .line 722
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 724
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/TtyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/TtyInfo;

    .line 725
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/TtyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V

    .line 727
    goto/16 :goto_0

    .line 714
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 715
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->stopDtmf(I)V

    .line 717
    goto/16 :goto_0

    .line 704
    .end local v2    # "_arg0":I
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 707
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 709
    goto/16 :goto_0

    .line 694
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 696
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 697
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 699
    goto/16 :goto_0

    .line 686
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 687
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 689
    goto/16 :goto_0

    .line 676
    .end local v2    # "_arg0":I
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 678
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ColrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 679
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ColrInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V

    .line 681
    goto/16 :goto_0

    .line 668
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ColrInfo;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 669
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getColr(I)V

    .line 671
    goto/16 :goto_0

    .line 658
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 660
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ClirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ClirInfo;

    .line 661
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ClirInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V

    .line 663
    goto/16 :goto_0

    .line 650
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ClirInfo;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 651
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getClir(I)V

    .line 653
    goto/16 :goto_0

    .line 642
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 643
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getClip(I)V

    .line 645
    goto/16 :goto_0

    .line 634
    .end local v2    # "_arg0":I
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 635
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->conference(I)V

    .line 637
    goto/16 :goto_0

    .line 624
    .end local v2    # "_arg0":I
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 626
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 627
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 629
    goto/16 :goto_0

    .line 614
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 616
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 617
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 619
    goto/16 :goto_0

    .line 604
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 606
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 607
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->resume(II)V

    .line 609
    goto/16 :goto_0

    .line 594
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 597
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->hold(II)V

    .line 599
    goto/16 :goto_0

    .line 584
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 586
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 587
    .local v3, "_arg1":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    .line 589
    goto/16 :goto_0

    .line 576
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryServiceStatus(I)V

    .line 579
    goto/16 :goto_0

    .line 566
    .end local v2    # "_arg0":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 568
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 569
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->requestRegistrationChange(II)V

    .line 571
    goto :goto_0

    .line 556
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 558
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    .line 559
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V

    .line 561
    goto :goto_0

    .line 546
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/AnswerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/AnswerRequest;

    .line 549
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V

    .line 551
    goto :goto_0

    .line 538
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 541
    goto :goto_0

    .line 528
    .end local v2    # "_arg0":I
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 530
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 531
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 533
    goto :goto_0

    .line 518
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 520
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 521
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 523
    goto :goto_0

    .line 507
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    .line 509
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v3

    .line 510
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    nop

    .line 1039
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
