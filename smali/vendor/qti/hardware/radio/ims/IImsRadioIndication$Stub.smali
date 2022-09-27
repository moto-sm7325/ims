.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;
.super Landroid/os/Binder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onCallComposerInfoAvailable:I = 0x20

.field static final TRANSACTION_onCallStateChanged:I = 0x1

.field static final TRANSACTION_onConferenceCallStateCompleted:I = 0x26

.field static final TRANSACTION_onEmergencyCallBackModeChanged:I = 0x8

.field static final TRANSACTION_onGeolocationInfoRequested:I = 0xf

.field static final TRANSACTION_onHandover:I = 0x5

.field static final TRANSACTION_onImsSubConfigChanged:I = 0x10

.field static final TRANSACTION_onIncomingCallAutoRejected:I = 0x19

.field static final TRANSACTION_onIncomingCallComposerCallAutoRejected:I = 0x21

.field static final TRANSACTION_onIncomingDtmfStart:I = 0x27

.field static final TRANSACTION_onIncomingDtmfStop:I = 0x28

.field static final TRANSACTION_onIncomingSms:I = 0x17

.field static final TRANSACTION_onMessageWaiting:I = 0xe

.field static final TRANSACTION_onModemSupportsWfcRoamingModeConfiguration:I = 0x1d

.field static final TRANSACTION_onModifyCall:I = 0xc

.field static final TRANSACTION_onMultiIdentityInfoPending:I = 0x1c

.field static final TRANSACTION_onMultiIdentityRegistrationStatusChange:I = 0x1b

.field static final TRANSACTION_onMultiSimVoiceCapabilityChanged:I = 0x29

.field static final TRANSACTION_onParticipantStatusInfo:I = 0x11

.field static final TRANSACTION_onRadioStateChanged:I = 0x7

.field static final TRANSACTION_onRefreshConferenceInfo:I = 0xa

.field static final TRANSACTION_onRefreshViceInfo:I = 0xb

.field static final TRANSACTION_onRegistrationBlockStatus:I = 0x12

.field static final TRANSACTION_onRegistrationChanged:I = 0x4

.field static final TRANSACTION_onRetrievingGeoLocationDataStatus:I = 0x22

.field static final TRANSACTION_onRing:I = 0x2

.field static final TRANSACTION_onRingbackTone:I = 0x3

.field static final TRANSACTION_onRttMessageReceived:I = 0x13

.field static final TRANSACTION_onServiceDomainChanged:I = 0x24

.field static final TRANSACTION_onServiceStatusChanged:I = 0x6

.field static final TRANSACTION_onSipDtmfReceived:I = 0x23

.field static final TRANSACTION_onSmsCallBackModeChanged:I = 0x25

.field static final TRANSACTION_onSmsSendStatusReport:I = 0x16

.field static final TRANSACTION_onSuppServiceNotification:I = 0xd

.field static final TRANSACTION_onSupplementaryServiceIndication:I = 0x15

.field static final TRANSACTION_onTtyNotification:I = 0x9

.field static final TRANSACTION_onUssdMessageFailed:I = 0x1e

.field static final TRANSACTION_onUssdReceived:I = 0x1f

.field static final TRANSACTION_onVoWiFiCallQuality:I = 0x14

.field static final TRANSACTION_onVoiceInfoChanged:I = 0x1a

.field static final TRANSACTION_onVopsChanged:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 160
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->markVintfStability()V

    .line 161
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 169
    if-nez p0, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    if-eqz v1, :cond_1

    .line 174
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    return-object v1

    .line 176
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    .locals 1

    .line 1758
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    return-object v0
.end method

.method public static setDefaultImpl(Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)Z
    .locals 2
    .param p0, "impl"    # Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    .line 1748
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    if-nez v0, :cond_1

    .line 1751
    if-eqz p0, :cond_0

    .line 1752
    sput-object p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    .line 1753
    const/4 v0, 0x1

    return v0

    .line 1755
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1749
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 180
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

    .line 184
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 185
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 207
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 189
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    return v1

    .line 194
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    return v1

    .line 201
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    return v1

    .line 638
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 641
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiSimVoiceCapabilityChanged(I)V

    .line 642
    return v1

    .line 625
    .end local v2    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    sget-object v2, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    goto :goto_0

    .line 631
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :cond_0
    const/4 v2, 0x0

    .line 633
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :goto_0
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 634
    return v1

    .line 612
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    sget-object v2, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    goto :goto_1

    .line 618
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :cond_1
    const/4 v2, 0x0

    .line 620
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :goto_1
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 621
    return v1

    .line 606
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onConferenceCallStateCompleted()V

    .line 608
    return v1

    .line 598
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 601
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSmsCallBackModeChanged(I)V

    .line 602
    return v1

    .line 590
    .end local v2    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 593
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onServiceDomainChanged(I)V

    .line 594
    return v1

    .line 582
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSipDtmfReceived(Ljava/lang/String;)V

    .line 586
    return v1

    .line 574
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRetrievingGeoLocationDataStatus(I)V

    .line 578
    return v1

    .line 561
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 564
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    goto :goto_2

    .line 567
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    :cond_2
    const/4 v2, 0x0

    .line 569
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    :goto_2
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V

    .line 570
    return v1

    .line 548
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 551
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    goto :goto_3

    .line 554
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    :cond_3
    const/4 v2, 0x0

    .line 556
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    :goto_3
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V

    .line 557
    return v1

    .line 531
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 535
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 538
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    goto :goto_4

    .line 541
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_4
    const/4 v4, 0x0

    .line 543
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :goto_4
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 544
    return v1

    .line 516
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 520
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 521
    sget-object v3, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    goto :goto_5

    .line 524
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_5
    const/4 v3, 0x0

    .line 526
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :goto_5
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 527
    return v1

    .line 508
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v2, v1

    .line 511
    .local v2, "_arg0":Z
    :cond_6
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    .line 512
    return v1

    .line 502
    .end local v2    # "_arg0":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiIdentityInfoPending()V

    .line 504
    return v1

    .line 494
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    sget-object v2, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 497
    .local v2, "_arg0":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    .line 498
    return v1

    .line 486
    .end local v2    # "_arg0":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 489
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVoiceInfoChanged(I)V

    .line 490
    return v1

    .line 473
    .end local v2    # "_arg0":I
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 476
    sget-object v2, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    goto :goto_6

    .line 479
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    :cond_7
    const/4 v2, 0x0

    .line 481
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    :goto_6
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    .line 482
    return v1

    .line 465
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    move v2, v1

    .line 468
    .local v2, "_arg0":Z
    :cond_8
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVopsChanged(Z)V

    .line 469
    return v1

    .line 452
    .end local v2    # "_arg0":Z
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 455
    sget-object v2, Lvendor/qti/hardware/radio/ims/IncomingSms;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/IncomingSms;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/IncomingSms;
    goto :goto_7

    .line 458
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/IncomingSms;
    :cond_9
    const/4 v2, 0x0

    .line 460
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/IncomingSms;
    :goto_7
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V

    .line 461
    return v1

    .line 439
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/IncomingSms;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 442
    sget-object v2, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    goto :goto_8

    .line 445
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    :cond_a
    const/4 v2, 0x0

    .line 447
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    :goto_8
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V

    .line 448
    return v1

    .line 426
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 429
    sget-object v2, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    goto :goto_9

    .line 432
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    :cond_b
    const/4 v2, 0x0

    .line 434
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    :goto_9
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V

    .line 435
    return v1

    .line 418
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 421
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    .line 422
    return v1

    .line 410
    .end local v2    # "_arg0":I
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    .line 414
    return v1

    .line 397
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 400
    sget-object v2, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    goto :goto_a

    .line 403
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    :cond_c
    const/4 v2, 0x0

    .line 405
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    :goto_a
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V

    .line 406
    return v1

    .line 384
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 387
    sget-object v2, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    goto :goto_b

    .line 390
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    :cond_d
    const/4 v2, 0x0

    .line 392
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    :goto_b
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V

    .line 393
    return v1

    .line 371
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 374
    sget-object v2, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    goto :goto_c

    .line 377
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :cond_e
    const/4 v2, 0x0

    .line 379
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :goto_c
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V

    .line 380
    return v1

    .line 361
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 365
    .local v2, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 366
    .local v4, "_arg1":D
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    .line 367
    return v1

    .line 348
    .end local v2    # "_arg0":D
    .end local v4    # "_arg1":D
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 351
    sget-object v2, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    goto :goto_d

    .line 354
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    :cond_f
    const/4 v2, 0x0

    .line 356
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    :goto_d
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V

    .line 357
    return v1

    .line 335
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 338
    sget-object v2, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    goto :goto_e

    .line 341
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    :cond_10
    const/4 v2, 0x0

    .line 343
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    :goto_e
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V

    .line 344
    return v1

    .line 322
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    .line 325
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    goto :goto_f

    .line 328
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :cond_11
    const/4 v2, 0x0

    .line 330
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :goto_f
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 331
    return v1

    .line 309
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    .line 312
    sget-object v2, Lvendor/qti/hardware/radio/ims/ViceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/ViceInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/ViceInfo;
    goto :goto_10

    .line 315
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ViceInfo;
    :cond_12
    const/4 v2, 0x0

    .line 317
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ViceInfo;
    :goto_10
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V

    .line 318
    return v1

    .line 296
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ViceInfo;
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    .line 299
    sget-object v2, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/ConferenceInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    goto :goto_11

    .line 302
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    :cond_13
    const/4 v2, 0x0

    .line 304
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    :goto_11
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V

    .line 305
    return v1

    .line 283
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 286
    sget-object v2, Lvendor/qti/hardware/radio/ims/TtyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/TtyInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/TtyInfo;
    goto :goto_12

    .line 289
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :cond_14
    const/4 v2, 0x0

    .line 291
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :goto_12
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V

    .line 292
    return v1

    .line 275
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :pswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 278
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onEmergencyCallBackModeChanged(I)V

    .line 279
    return v1

    .line 267
    .end local v2    # "_arg0":I
    :pswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    .line 271
    return v1

    .line 259
    .end local v2    # "_arg0":I
    :pswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    sget-object v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 262
    .local v2, "_arg0":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    .line 263
    return v1

    .line 246
    .end local v2    # "_arg0":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    .line 249
    sget-object v2, Lvendor/qti/hardware/radio/ims/HandoverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/HandoverInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/HandoverInfo;
    goto :goto_13

    .line 252
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/HandoverInfo;
    :cond_15
    const/4 v2, 0x0

    .line 254
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/HandoverInfo;
    :goto_13
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V

    .line 255
    return v1

    .line 233
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/HandoverInfo;
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 236
    sget-object v2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    goto :goto_14

    .line 239
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :cond_16
    const/4 v2, 0x0

    .line 241
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :goto_14
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V

    .line 242
    return v1

    .line 225
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRingbackTone(I)V

    .line 229
    return v1

    .line 219
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRing()V

    .line 221
    return v1

    .line 211
    :pswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/CallInfo;

    .line 214
    .local v2, "_arg0":[Lvendor/qti/hardware/radio/ims/CallInfo;
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V

    .line 215
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
