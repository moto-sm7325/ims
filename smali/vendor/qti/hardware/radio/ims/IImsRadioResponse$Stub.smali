.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;
.super Landroid/os/Binder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addParticipantResponse:I = 0x1f

.field static final TRANSACTION_answerResponse:I = 0x2

.field static final TRANSACTION_cancelModifyCallResponse:I = 0x24

.field static final TRANSACTION_cancelPendingUssdResponse:I = 0x2a

.field static final TRANSACTION_conferenceResponse:I = 0xd

.field static final TRANSACTION_deflectCallResponse:I = 0x20

.field static final TRANSACTION_dialResponse:I = 0x1

.field static final TRANSACTION_exitEmergencyCallbackModeResponse:I = 0x12

.field static final TRANSACTION_explicitCallTransferResponse:I = 0x1b

.field static final TRANSACTION_getCallWaitingResponse:I = 0x1a

.field static final TRANSACTION_getClipResponse:I = 0xe

.field static final TRANSACTION_getClirResponse:I = 0xf

.field static final TRANSACTION_getColrResponse:I = 0x11

.field static final TRANSACTION_getConfigResponse:I = 0xa

.field static final TRANSACTION_getImsRegistrationStateResponse:I = 0xb

.field static final TRANSACTION_getImsSubConfigResponse:I = 0x22

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getRtpErrorStatisticsResponse:I = 0x1e

.field static final TRANSACTION_getRtpStatisticsResponse:I = 0x1d

.field static final TRANSACTION_hangupResponse:I = 0x3

.field static final TRANSACTION_holdResponse:I = 0x7

.field static final TRANSACTION_modifyCallConfirmResponse:I = 0x18

.field static final TRANSACTION_modifyCallInitiateResponse:I = 0x17

.field static final TRANSACTION_queryCallForwardStatusResponse:I = 0x19

.field static final TRANSACTION_queryMultiSimVoiceCapabilityResponse:I = 0x2d

.field static final TRANSACTION_queryServiceStatusResponse:I = 0x5

.field static final TRANSACTION_queryVirtualLineInfoResponse:I = 0x27

.field static final TRANSACTION_registerMultiIdentityLinesResponse:I = 0x26

.field static final TRANSACTION_requestRegistrationChangeResponse:I = 0x4

.field static final TRANSACTION_resumeResponse:I = 0x8

.field static final TRANSACTION_sendDtmfResponse:I = 0x13

.field static final TRANSACTION_sendGeolocationInfoResponse:I = 0x21

.field static final TRANSACTION_sendRttMessageResponse:I = 0x23

.field static final TRANSACTION_sendSipDtmfResponse:I = 0x2b

.field static final TRANSACTION_sendSmsResponse:I = 0x25

.field static final TRANSACTION_sendUssdResponse:I = 0x29

.field static final TRANSACTION_setCallForwardStatusResponse:I = 0x28

.field static final TRANSACTION_setClirResponse:I = 0x10

.field static final TRANSACTION_setConfigResponse:I = 0x9

.field static final TRANSACTION_setMediaConfigurationResponse:I = 0x2c

.field static final TRANSACTION_setServiceStatusResponse:I = 0x6

.field static final TRANSACTION_setSuppServiceNotificationResponse:I = 0x1c

.field static final TRANSACTION_setUiTTYModeResponse:I = 0x16

.field static final TRANSACTION_startDtmfResponse:I = 0x14

.field static final TRANSACTION_stopDtmfResponse:I = 0x15

.field static final TRANSACTION_suppServiceStatusResponse:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 172
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->markVintfStability()V

    .line 173
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 181
    if-nez p0, :cond_0

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 185
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    if-eqz v1, :cond_1

    .line 186
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    return-object v1

    .line 188
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .locals 1

    .line 2078
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    return-object v0
.end method

.method public static setDefaultImpl(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;)Z
    .locals 2
    .param p0, "impl"    # Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    .line 2068
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    if-nez v0, :cond_1

    .line 2071
    if-eqz p0, :cond_0

    .line 2072
    sput-object p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    .line 2073
    const/4 v0, 0x1

    return v0

    .line 2075
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2069
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 192
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 197
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 820
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 201
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    return v1

    .line 206
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v1

    .line 213
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    return v1

    .line 808
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 812
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 814
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 815
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryMultiSimVoiceCapabilityResponse(III)V

    .line 816
    return v1

    .line 798
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 802
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 803
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setMediaConfigurationResponse(II)V

    .line 804
    return v1

    .line 788
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 792
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 793
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendSipDtmfResponse(II)V

    .line 794
    return v1

    .line 771
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 775
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 777
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 778
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    goto :goto_0

    .line 781
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_0
    const/4 v4, 0x0

    .line 783
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :goto_0
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 784
    return v1

    .line 754
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 758
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 760
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 761
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    goto :goto_1

    .line 764
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_1
    const/4 v4, 0x0

    .line 766
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 767
    return v1

    .line 737
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 741
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 743
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 744
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;
    goto :goto_2

    .line 747
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;
    :cond_2
    const/4 v4, 0x0

    .line 749
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;
    :goto_2
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V

    .line 750
    return v1

    .line 725
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 729
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 732
    .local v4, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryVirtualLineInfoResponse(ILjava/lang/String;[Ljava/lang/String;)V

    .line 733
    return v1

    .line 715
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 719
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 720
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->registerMultiIdentityLinesResponse(II)V

    .line 721
    return v1

    .line 700
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 704
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 705
    sget-object v3, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SmsSendResponse;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendResponse;
    goto :goto_3

    .line 708
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendResponse;
    :cond_3
    const/4 v3, 0x0

    .line 710
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendResponse;
    :goto_3
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V

    .line 711
    return v1

    .line 690
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendResponse;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 694
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 695
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    .line 696
    return v1

    .line 680
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 684
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 685
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    .line 686
    return v1

    .line 663
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 667
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 669
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 670
    sget-object v4, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    goto :goto_4

    .line 673
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :cond_4
    const/4 v4, 0x0

    .line 675
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :goto_4
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V

    .line 676
    return v1

    .line 653
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 657
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 658
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    .line 659
    return v1

    .line 643
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 647
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 648
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    .line 649
    return v1

    .line 633
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 637
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 638
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    .line 639
    return v1

    .line 621
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 625
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 627
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 628
    .local v4, "_arg2":J
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    .line 629
    return v1

    .line 609
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 613
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 615
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 616
    .restart local v4    # "_arg2":J
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    .line 617
    return v1

    .line 597
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 601
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 603
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 604
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    .line 605
    return v1

    .line 580
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 584
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 586
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 587
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    goto :goto_5

    .line 590
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_5
    const/4 v4, 0x0

    .line 592
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :goto_5
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 593
    return v1

    .line 556
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 560
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 562
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 563
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    goto :goto_6

    .line 566
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    :cond_6
    const/4 v4, 0x0

    .line 569
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 570
    sget-object v5, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .local v5, "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    goto :goto_7

    .line 573
    .end local v5    # "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_7
    const/4 v5, 0x0

    .line 575
    .restart local v5    # "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :goto_7
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 576
    return v1

    .line 537
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .end local v5    # "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 541
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 543
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 545
    .local v4, "_arg2":[Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 546
    sget-object v5, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .restart local v5    # "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    goto :goto_8

    .line 549
    .end local v5    # "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_8
    const/4 v5, 0x0

    .line 551
    .restart local v5    # "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :goto_8
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 552
    return v1

    .line 527
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .end local v5    # "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 531
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 532
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    .line 533
    return v1

    .line 517
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 521
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 522
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    .line 523
    return v1

    .line 507
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 511
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 512
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    .line 513
    return v1

    .line 497
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 501
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 502
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    .line 503
    return v1

    .line 487
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 492
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    .line 493
    return v1

    .line 477
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 481
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 482
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    .line 483
    return v1

    .line 467
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 471
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 472
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    .line 473
    return v1

    .line 450
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 454
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 456
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 457
    sget-object v4, Lvendor/qti/hardware/radio/ims/ColrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ColrInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/ColrInfo;
    goto :goto_9

    .line 460
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ColrInfo;
    :cond_9
    const/4 v4, 0x0

    .line 462
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ColrInfo;
    :goto_9
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V

    .line 463
    return v1

    .line 440
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ColrInfo;
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 445
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setClirResponse(II)V

    .line 446
    return v1

    .line 421
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 425
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 427
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 428
    sget-object v4, Lvendor/qti/hardware/radio/ims/ClirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ClirInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/ClirInfo;
    goto :goto_a

    .line 431
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ClirInfo;
    :cond_a
    const/4 v4, 0x0

    .line 434
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ClirInfo;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v1

    goto :goto_b

    :cond_b
    const/4 v5, 0x0

    .line 435
    .local v5, "_arg3":Z
    :goto_b
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V

    .line 436
    return v1

    .line 404
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ClirInfo;
    .end local v5    # "_arg3":Z
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 408
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 410
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 411
    sget-object v4, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;
    goto :goto_c

    .line 414
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;
    :cond_c
    const/4 v4, 0x0

    .line 416
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;
    :goto_c
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V

    .line 417
    return v1

    .line 387
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 391
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 393
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 394
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    goto :goto_d

    .line 397
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_d
    const/4 v4, 0x0

    .line 399
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :goto_d
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 400
    return v1

    .line 370
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 376
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 377
    sget-object v4, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SuppServiceStatus;
    goto :goto_e

    .line 380
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SuppServiceStatus;
    :cond_e
    const/4 v4, 0x0

    .line 382
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SuppServiceStatus;
    :goto_e
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/SuppServiceStatus;)V

    .line 383
    return v1

    .line 353
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SuppServiceStatus;
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 359
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 360
    sget-object v4, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    goto :goto_f

    .line 363
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :cond_f
    const/4 v4, 0x0

    .line 365
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :goto_f
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getImsRegistrationStateResponse(IILvendor/qti/hardware/radio/ims/RegistrationInfo;)V

    .line 366
    return v1

    .line 336
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 343
    sget-object v4, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    goto :goto_10

    .line 346
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :cond_10
    const/4 v4, 0x0

    .line 348
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :goto_10
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 349
    return v1

    .line 319
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 325
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 326
    sget-object v4, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    goto :goto_11

    .line 329
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :cond_11
    const/4 v4, 0x0

    .line 331
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :goto_11
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 332
    return v1

    .line 302
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 306
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 308
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 309
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    goto :goto_12

    .line 312
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_12
    const/4 v4, 0x0

    .line 314
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :goto_12
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 315
    return v1

    .line 285
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 289
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 291
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 292
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    goto :goto_13

    .line 295
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_13
    const/4 v4, 0x0

    .line 297
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :goto_13
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 298
    return v1

    .line 275
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 280
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    .line 281
    return v1

    .line 263
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 267
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 270
    .local v4, "_arg2":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryServiceStatusResponse(II[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    .line 271
    return v1

    .line 253
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :pswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    .line 259
    return v1

    .line 243
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 247
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 248
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->hangupResponse(II)V

    .line 249
    return v1

    .line 233
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 238
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->answerResponse(II)V

    .line 239
    return v1

    .line 223
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 228
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->dialResponse(II)V

    .line 229
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
