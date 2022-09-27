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

    .line 196
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 197
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->markVintfStability()V

    .line 198
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadio;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 206
    if-nez p0, :cond_0

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 210
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadio;

    if-eqz v1, :cond_1

    .line 211
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/radio/ims/IImsRadio;

    return-object v1

    .line 213
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;
    .locals 1

    .line 2332
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadio;

    return-object v0
.end method

.method public static setDefaultImpl(Lvendor/qti/hardware/radio/ims/IImsRadio;)Z
    .locals 2
    .param p0, "impl"    # Lvendor/qti/hardware/radio/ims/IImsRadio;

    .line 2322
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadio;

    if-nez v0, :cond_1

    .line 2325
    if-eqz p0, :cond_0

    .line 2326
    sput-object p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadio;

    .line 2327
    const/4 v0, 0x1

    return v0

    .line 2329
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2323
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 217
    return-object p0
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

    .line 221
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 222
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 244
    packed-switch p1, :pswitch_data_0

    .line 881
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 226
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    return v1

    .line 231
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    return v1

    .line 238
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    return v1

    .line 873
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 876
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryMultiSimVoiceCapability(I)V

    .line 877
    return v1

    .line 858
    .end local v2    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 862
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 863
    sget-object v3, Lvendor/qti/hardware/radio/ims/MediaConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/MediaConfig;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/MediaConfig;
    goto :goto_0

    .line 866
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/MediaConfig;
    :cond_0
    const/4 v3, 0x0

    .line 868
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/MediaConfig;
    :goto_0
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V

    .line 869
    return v1

    .line 848
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/MediaConfig;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 852
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendSipDtmf(ILjava/lang/String;)V

    .line 854
    return v1

    .line 833
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 837
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 838
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    goto :goto_1

    .line 841
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    :cond_1
    const/4 v3, 0x0

    .line 843
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    :goto_1
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V

    .line 844
    return v1

    .line 825
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 828
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->cancelPendingUssd(I)V

    .line 829
    return v1

    .line 815
    .end local v2    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 819
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 820
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 821
    return v1

    .line 800
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 804
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 805
    sget-object v3, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    goto :goto_2

    .line 808
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    :cond_2
    const/4 v3, 0x0

    .line 810
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    :goto_2
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V

    .line 811
    return v1

    .line 790
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 794
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryVirtualLineInfo(ILjava/lang/String;)V

    .line 796
    return v1

    .line 780
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 784
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 785
    .local v3, "_arg1":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    .line 786
    return v1

    .line 772
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v2

    .line 774
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 776
    return v1

    .line 757
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 761
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 762
    sget-object v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    goto :goto_3

    .line 765
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    :cond_3
    const/4 v3, 0x0

    .line 767
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    :goto_3
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V

    .line 768
    return v1

    .line 742
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 746
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 747
    sget-object v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    goto :goto_4

    .line 750
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    :cond_4
    const/4 v3, 0x0

    .line 752
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    :goto_4
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V

    .line 753
    return v1

    .line 727
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 731
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 732
    sget-object v3, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    goto :goto_5

    .line 735
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    :cond_5
    const/4 v3, 0x0

    .line 737
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    :goto_5
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V

    .line 738
    return v1

    .line 717
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 721
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 722
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->cancelModifyCall(II)V

    .line 723
    return v1

    .line 707
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 711
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    .line 713
    return v1

    .line 699
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 702
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getImsSubConfig(I)V

    .line 703
    return v1

    .line 684
    .end local v2    # "_arg0":I
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 688
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 689
    sget-object v3, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    goto :goto_6

    .line 692
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    :cond_6
    const/4 v3, 0x0

    .line 694
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    :goto_6
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V

    .line 695
    return v1

    .line 669
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 673
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 674
    sget-object v3, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    goto :goto_7

    .line 677
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    :cond_7
    const/4 v3, 0x0

    .line 679
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    :goto_7
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V

    .line 680
    return v1

    .line 661
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 664
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    .line 665
    return v1

    .line 653
    .end local v2    # "_arg0":I
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 656
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getRtpStatistics(I)V

    .line 657
    return v1

    .line 638
    .end local v2    # "_arg0":I
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 642
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 643
    sget-object v3, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    goto :goto_8

    .line 646
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    :cond_8
    const/4 v3, 0x0

    .line 648
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    :goto_8
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V

    .line 649
    return v1

    .line 623
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 627
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 628
    sget-object v3, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    goto :goto_9

    .line 631
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    :cond_9
    const/4 v3, 0x0

    .line 633
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    :goto_9
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V

    .line 634
    return v1

    .line 613
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 617
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 618
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setSuppServiceNotification(II)V

    .line 619
    return v1

    .line 598
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 603
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    goto :goto_a

    .line 606
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    :cond_a
    const/4 v3, 0x0

    .line 608
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    :goto_a
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V

    .line 609
    return v1

    .line 588
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 592
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 593
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getCallWaiting(II)V

    .line 594
    return v1

    .line 573
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 578
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    goto :goto_b

    .line 581
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :cond_b
    const/4 v3, 0x0

    .line 583
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :goto_b
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    .line 584
    return v1

    .line 558
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 562
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 563
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    goto :goto_c

    .line 566
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :cond_c
    const/4 v3, 0x0

    .line 568
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :goto_c
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    .line 569
    return v1

    .line 543
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 547
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 548
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    goto :goto_d

    .line 551
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :cond_d
    const/4 v3, 0x0

    .line 553
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :goto_d
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 554
    return v1

    .line 528
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 532
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 533
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    goto :goto_e

    .line 536
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :cond_e
    const/4 v3, 0x0

    .line 538
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :goto_e
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 539
    return v1

    .line 513
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 517
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 518
    sget-object v3, Lvendor/qti/hardware/radio/ims/TtyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/TtyInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/TtyInfo;
    goto :goto_f

    .line 521
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :cond_f
    const/4 v3, 0x0

    .line 523
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :goto_f
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V

    .line 524
    return v1

    .line 505
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->stopDtmf(I)V

    .line 509
    return v1

    .line 490
    .end local v2    # "_arg0":I
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 494
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 495
    sget-object v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    goto :goto_10

    .line 498
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :cond_10
    const/4 v3, 0x0

    .line 500
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :goto_10
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 501
    return v1

    .line 475
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 479
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 480
    sget-object v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    goto :goto_11

    .line 483
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :cond_11
    const/4 v3, 0x0

    .line 485
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :goto_11
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 486
    return v1

    .line 467
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 471
    return v1

    .line 452
    .end local v2    # "_arg0":I
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 456
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 457
    sget-object v3, Lvendor/qti/hardware/radio/ims/ColrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ColrInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ColrInfo;
    goto :goto_12

    .line 460
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ColrInfo;
    :cond_12
    const/4 v3, 0x0

    .line 462
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ColrInfo;
    :goto_12
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V

    .line 463
    return v1

    .line 444
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ColrInfo;
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 447
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getColr(I)V

    .line 448
    return v1

    .line 429
    .end local v2    # "_arg0":I
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 433
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 434
    sget-object v3, Lvendor/qti/hardware/radio/ims/ClirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ClirInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ClirInfo;
    goto :goto_13

    .line 437
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ClirInfo;
    :cond_13
    const/4 v3, 0x0

    .line 439
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ClirInfo;
    :goto_13
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V

    .line 440
    return v1

    .line 421
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ClirInfo;
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 424
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getClir(I)V

    .line 425
    return v1

    .line 413
    .end local v2    # "_arg0":I
    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getClip(I)V

    .line 417
    return v1

    .line 405
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->conference(I)V

    .line 409
    return v1

    .line 390
    .end local v2    # "_arg0":I
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 394
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 395
    sget-object v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    goto :goto_14

    .line 398
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :cond_14
    const/4 v3, 0x0

    .line 400
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :goto_14
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 401
    return v1

    .line 375
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :pswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 380
    sget-object v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    goto :goto_15

    .line 383
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :cond_15
    const/4 v3, 0x0

    .line 385
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :goto_15
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 386
    return v1

    .line 365
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :pswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->resume(II)V

    .line 371
    return v1

    .line 355
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 360
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->hold(II)V

    .line 361
    return v1

    .line 345
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 350
    .local v3, "_arg1":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    .line 351
    return v1

    .line 337
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :pswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryServiceStatus(I)V

    .line 341
    return v1

    .line 327
    .end local v2    # "_arg0":I
    :pswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->requestRegistrationChange(II)V

    .line 333
    return v1

    .line 312
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 317
    sget-object v3, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    goto :goto_16

    .line 320
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    :cond_16
    const/4 v3, 0x0

    .line 322
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    :goto_16
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V

    .line 323
    return v1

    .line 297
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    :pswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 302
    sget-object v3, Lvendor/qti/hardware/radio/ims/AnswerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/AnswerRequest;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    goto :goto_17

    .line 305
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    :cond_17
    const/4 v3, 0x0

    .line 307
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    :goto_17
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V

    .line 308
    return v1

    .line 289
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    :pswitch_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 293
    return v1

    .line 274
    .end local v2    # "_arg0":I
    :pswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 278
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    .line 279
    sget-object v3, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DialRequest;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    goto :goto_18

    .line 282
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    :cond_18
    const/4 v3, 0x0

    .line 284
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    :goto_18
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 285
    return v1

    .line 259
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    :pswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    .line 264
    sget-object v3, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DialRequest;

    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    goto :goto_19

    .line 267
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    :cond_19
    const/4 v3, 0x0

    .line 269
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    :goto_19
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 270
    return v1

    .line 248
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    :pswitch_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    .line 252
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v3

    .line 253
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
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
