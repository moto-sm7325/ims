.class public Lorg/codeaurora/ims/ImsCallUtils;
.super Ljava/lang/Object;
.source "ImsCallUtils.java"


# static fields
.field public static final CLIR_RESPONSE_LENGTH:I = 0x2

.field public static final CONFIG_ITEM_INVALID:I = -0x1

.field public static final CONFIG_TYPE_INT:I = 0x1

.field public static final CONFIG_TYPE_INVALID:I = -0x1

.field public static final CONFIG_TYPE_STRING:I = 0x2

.field private static final MIN_VIDEO_CALL_PHONE_NUMBER_LENGTH:I = 0x7

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "ImsCallUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 83
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static convertCallTypeToVideoState(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "videoState":I
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 216
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 212
    :pswitch_2
    const/4 v0, 0x3

    .line 213
    goto :goto_0

    .line 206
    :pswitch_3
    const/4 v0, 0x2

    .line 207
    goto :goto_0

    .line 209
    :pswitch_4
    const/4 v0, 0x1

    .line 210
    goto :goto_0

    .line 203
    :pswitch_5
    const/4 v0, 0x0

    .line 204
    nop

    .line 219
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertImsConfigToImsConfigItem(I)I
    .locals 1
    .param p0, "config"    # I

    .line 352
    const/16 v0, 0xd

    sparse-switch p0, :sswitch_data_0

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 506
    :sswitch_0
    const/16 v0, 0x50

    return v0

    .line 504
    :sswitch_1
    const/16 v0, 0x4f

    return v0

    .line 502
    :sswitch_2
    const/16 v0, 0x4e

    return v0

    .line 500
    :sswitch_3
    const/16 v0, 0x4d

    return v0

    .line 496
    :sswitch_4
    const/16 v0, 0x4b

    return v0

    .line 492
    :sswitch_5
    const/16 v0, 0x49

    return v0

    .line 488
    :sswitch_6
    const/16 v0, 0x48

    return v0

    .line 486
    :sswitch_7
    const/16 v0, 0x47

    return v0

    .line 494
    :sswitch_8
    const/16 v0, 0x4a

    return v0

    .line 513
    :sswitch_9
    return v0

    .line 509
    :sswitch_a
    const/16 v0, 0x51

    return v0

    .line 498
    :sswitch_b
    const/16 v0, 0x4c

    return v0

    .line 484
    :sswitch_c
    const/16 v0, 0x46

    return v0

    .line 482
    :sswitch_d
    const/16 v0, 0x45

    return v0

    .line 480
    :sswitch_e
    const/16 v0, 0x43

    return v0

    .line 478
    :sswitch_f
    const/16 v0, 0x42

    return v0

    .line 476
    :sswitch_10
    const/16 v0, 0x41

    return v0

    .line 474
    :sswitch_11
    const/16 v0, 0x40

    return v0

    .line 472
    :sswitch_12
    const/16 v0, 0x3f

    return v0

    .line 470
    :sswitch_13
    const/16 v0, 0x3e

    return v0

    .line 468
    :sswitch_14
    const/16 v0, 0x3d

    return v0

    .line 466
    :sswitch_15
    const/16 v0, 0x3c

    return v0

    .line 464
    :sswitch_16
    const/16 v0, 0x3b

    return v0

    .line 462
    :sswitch_17
    const/16 v0, 0x3a

    return v0

    .line 460
    :sswitch_18
    const/16 v0, 0x39

    return v0

    .line 458
    :sswitch_19
    const/16 v0, 0x38

    return v0

    .line 456
    :sswitch_1a
    const/16 v0, 0x37

    return v0

    .line 454
    :sswitch_1b
    const/16 v0, 0x36

    return v0

    .line 452
    :sswitch_1c
    const/16 v0, 0x35

    return v0

    .line 450
    :sswitch_1d
    const/16 v0, 0x34

    return v0

    .line 448
    :sswitch_1e
    const/16 v0, 0x33

    return v0

    .line 446
    :sswitch_1f
    const/16 v0, 0x32

    return v0

    .line 444
    :sswitch_20
    const/16 v0, 0x31

    return v0

    .line 442
    :sswitch_21
    const/16 v0, 0x30

    return v0

    .line 440
    :sswitch_22
    const/16 v0, 0x2f

    return v0

    .line 438
    :sswitch_23
    const/16 v0, 0x2e

    return v0

    .line 436
    :sswitch_24
    const/16 v0, 0x2d

    return v0

    .line 434
    :sswitch_25
    const/16 v0, 0x2c

    return v0

    .line 432
    :sswitch_26
    const/16 v0, 0x2b

    return v0

    .line 430
    :sswitch_27
    const/16 v0, 0x2a

    return v0

    .line 428
    :sswitch_28
    const/16 v0, 0x29

    return v0

    .line 426
    :sswitch_29
    const/16 v0, 0x28

    return v0

    .line 424
    :sswitch_2a
    const/16 v0, 0x27

    return v0

    .line 422
    :sswitch_2b
    const/16 v0, 0x26

    return v0

    .line 420
    :sswitch_2c
    const/16 v0, 0x25

    return v0

    .line 418
    :sswitch_2d
    const/16 v0, 0x24

    return v0

    .line 416
    :sswitch_2e
    const/16 v0, 0x23

    return v0

    .line 410
    :sswitch_2f
    const/16 v0, 0x22

    return v0

    .line 414
    :sswitch_30
    const/16 v0, 0x21

    return v0

    .line 412
    :sswitch_31
    const/16 v0, 0x1a

    return v0

    .line 408
    :sswitch_32
    const/16 v0, 0x44

    return v0

    .line 406
    :sswitch_33
    const/16 v0, 0x1d

    return v0

    .line 404
    :sswitch_34
    const/16 v0, 0x1c

    return v0

    .line 402
    :sswitch_35
    const/16 v0, 0x19

    return v0

    .line 400
    :sswitch_36
    const/16 v0, 0x18

    return v0

    .line 398
    :sswitch_37
    const/16 v0, 0x17

    return v0

    .line 396
    :sswitch_38
    const/16 v0, 0x16

    return v0

    .line 394
    :sswitch_39
    const/16 v0, 0x15

    return v0

    .line 392
    :sswitch_3a
    const/16 v0, 0x14

    return v0

    .line 390
    :sswitch_3b
    const/16 v0, 0x13

    return v0

    .line 388
    :sswitch_3c
    const/16 v0, 0x12

    return v0

    .line 490
    :sswitch_3d
    const/16 v0, 0x1e

    return v0

    .line 386
    :sswitch_3e
    const/16 v0, 0x11

    return v0

    .line 384
    :sswitch_3f
    const/16 v0, 0x10

    return v0

    .line 382
    :sswitch_40
    const/16 v0, 0xf

    return v0

    .line 380
    :sswitch_41
    const/16 v0, 0xe

    return v0

    .line 378
    :sswitch_42
    return v0

    .line 376
    :sswitch_43
    const/16 v0, 0xc

    return v0

    .line 374
    :sswitch_44
    const/16 v0, 0xb

    return v0

    .line 372
    :sswitch_45
    const/16 v0, 0xa

    return v0

    .line 370
    :sswitch_46
    const/16 v0, 0x9

    return v0

    .line 368
    :sswitch_47
    const/16 v0, 0x8

    return v0

    .line 366
    :sswitch_48
    const/4 v0, 0x7

    return v0

    .line 364
    :sswitch_49
    const/4 v0, 0x6

    return v0

    .line 362
    :sswitch_4a
    const/4 v0, 0x5

    return v0

    .line 360
    :sswitch_4b
    const/4 v0, 0x4

    return v0

    .line 358
    :sswitch_4c
    const/4 v0, 0x3

    return v0

    .line 356
    :sswitch_4d
    const/4 v0, 0x2

    return v0

    .line 354
    :sswitch_4e
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4e
        0x1 -> :sswitch_4d
        0x2 -> :sswitch_4c
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_49
        0x6 -> :sswitch_48
        0x7 -> :sswitch_47
        0x8 -> :sswitch_46
        0x9 -> :sswitch_45
        0xa -> :sswitch_44
        0xb -> :sswitch_43
        0xc -> :sswitch_42
        0xd -> :sswitch_41
        0xe -> :sswitch_40
        0xf -> :sswitch_3f
        0x10 -> :sswitch_3e
        0x11 -> :sswitch_3d
        0x12 -> :sswitch_3c
        0x13 -> :sswitch_3b
        0x14 -> :sswitch_3a
        0x15 -> :sswitch_39
        0x16 -> :sswitch_38
        0x17 -> :sswitch_37
        0x18 -> :sswitch_36
        0x19 -> :sswitch_35
        0x1a -> :sswitch_34
        0x1b -> :sswitch_33
        0x1c -> :sswitch_32
        0x1d -> :sswitch_31
        0x1e -> :sswitch_30
        0x1f -> :sswitch_2f
        0x20 -> :sswitch_2e
        0x21 -> :sswitch_2d
        0x22 -> :sswitch_2c
        0x23 -> :sswitch_2b
        0x24 -> :sswitch_2a
        0x25 -> :sswitch_29
        0x26 -> :sswitch_28
        0x27 -> :sswitch_27
        0x28 -> :sswitch_26
        0x29 -> :sswitch_25
        0x2a -> :sswitch_24
        0x2b -> :sswitch_23
        0x2c -> :sswitch_22
        0x2d -> :sswitch_21
        0x2e -> :sswitch_20
        0x2f -> :sswitch_1f
        0x30 -> :sswitch_1e
        0x31 -> :sswitch_1d
        0x32 -> :sswitch_1c
        0x33 -> :sswitch_1b
        0x34 -> :sswitch_1a
        0x35 -> :sswitch_19
        0x36 -> :sswitch_18
        0x37 -> :sswitch_17
        0x38 -> :sswitch_16
        0x39 -> :sswitch_15
        0x3a -> :sswitch_14
        0x3b -> :sswitch_13
        0x3c -> :sswitch_12
        0x3d -> :sswitch_11
        0x3e -> :sswitch_10
        0x3f -> :sswitch_f
        0x40 -> :sswitch_e
        0x41 -> :sswitch_d
        0x42 -> :sswitch_c
        0x43 -> :sswitch_b
        0x48 -> :sswitch_a
        0x4a -> :sswitch_9
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_6
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_1
        0x3f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertImsErrorToUiError(I)I
    .locals 1
    .param p0, "error"    # I

    .line 257
    sget v0, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    if-ne p0, v0, :cond_0

    .line 258
    const/4 v0, 0x4

    return v0

    .line 259
    :cond_0
    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    if-eq p0, v0, :cond_3

    sget v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2

    .line 262
    return v0

    .line 264
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 260
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static convertToInternalCallType(I)I
    .locals 4
    .param p0, "imsCallProfileCallType"    # I

    .line 223
    const/16 v0, 0xa

    .line 224
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_0

    .line 243
    sget-object v1, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToInternalCallType invalid calltype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :pswitch_0
    const/4 v0, 0x4

    .line 235
    goto :goto_0

    .line 240
    :pswitch_1
    const/4 v0, 0x2

    .line 241
    goto :goto_0

    .line 237
    :pswitch_2
    const/4 v0, 0x1

    .line 238
    goto :goto_0

    .line 231
    :pswitch_3
    const/4 v0, 0x3

    .line 232
    goto :goto_0

    .line 227
    :pswitch_4
    const/4 v0, 0x0

    .line 228
    nop

    .line 246
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToVideoProfile(II)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "callType"    # I
    .param p1, "callQuality"    # I

    .line 250
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 251
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 253
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 1
    .param p0, "videoState"    # I

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "callType":I
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 193
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 190
    :pswitch_1
    const/4 v0, 0x3

    .line 191
    goto :goto_0

    .line 184
    :pswitch_2
    const/4 v0, 0x2

    .line 185
    goto :goto_0

    .line 187
    :pswitch_3
    const/4 v0, 0x1

    .line 188
    goto :goto_0

    .line 181
    :pswitch_4
    const/4 v0, 0x0

    .line 182
    nop

    .line 196
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static copyImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .param p0, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 691
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 692
    .local v0, "newImsStreamMediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 693
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v2

    .line 694
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 696
    .local v1, "newImsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    nop

    .line 697
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result v2

    .line 696
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 698
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 699
    nop

    .line 700
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getAcceptedRtpHeaderExtensionTypes()Ljava/util/Set;

    move-result-object v2

    .line 699
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setAcceptedRtpHeaderExtensionTypes(Ljava/util/Set;)V

    .line 701
    nop

    .line 702
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v2

    .line 701
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyServiceCategories(I)V

    .line 703
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v2, "newEmergencyUrns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 705
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyUrns(Ljava/util/List;)V

    .line 706
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallRouting(I)V

    .line 707
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallTesting(Z)V

    .line 708
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->hasKnownUserIntentEmergency()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallProfile;->setHasKnownUserIntentEmergency(Z)V

    .line 709
    return-object v1
.end method

.method public static getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 5
    .param p0, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v1, 0x0

    .line 622
    .local v1, "code":I
    if-eqz p0, :cond_0

    .line 623
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/telephony/ims/ImsReasonInfo;

    .line 624
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 625
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lorg/codeaurora/ims/ImsRilException;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result v1

    .line 628
    :cond_0
    if-nez v0, :cond_1

    .line 629
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v2

    .line 631
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sip error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error string :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 632
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    .line 634
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 633
    return-object v2
.end method

.method public static getUiErrorCode(I)I
    .locals 1
    .param p0, "imsErrorCode"    # I

    .line 298
    const/4 v0, 0x1

    .line 299
    .local v0, "status":I
    sparse-switch p0, :sswitch_data_0

    .line 317
    const/4 v0, 0x2

    goto :goto_0

    .line 314
    :sswitch_0
    const/16 v0, 0x32

    .line 315
    goto :goto_0

    .line 308
    :sswitch_1
    const/4 v0, 0x5

    .line 309
    goto :goto_0

    .line 311
    :sswitch_2
    const/4 v0, 0x3

    .line 312
    goto :goto_0

    .line 305
    :sswitch_3
    const/4 v0, 0x4

    .line 306
    goto :goto_0

    .line 302
    :sswitch_4
    const/4 v0, 0x1

    .line 303
    nop

    .line 319
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x7 -> :sswitch_3
        0x10 -> :sswitch_4
        0x1b -> :sswitch_2
        0x1c -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getUiErrorCode(Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 289
    const/4 v0, 0x2

    .line 290
    .local v0, "status":I
    instance-of v1, p0, Lorg/codeaurora/ims/ImsRilException;

    if-eqz v1, :cond_0

    .line 291
    move-object v1, p0

    check-cast v1, Lorg/codeaurora/ims/ImsRilException;

    .line 292
    .local v1, "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(I)I

    move-result v0

    .line 294
    .end local v1    # "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    :cond_0
    return v0
.end method

.method public static hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 273
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isActive(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 521
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 107
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 108
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 109
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 110
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 112
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_1

    .line 114
    :cond_0
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 116
    .local v4, "dialingAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    return v5
.end method

.method public static isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 124
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 125
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 126
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 127
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 129
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v6, :cond_0

    .line 131
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 133
    .local v6, "upgradeAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    return v4
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .line 580
    const-string v0, "persist.vendor.radio.atel.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "property":Ljava/lang/String;
    const-string v1, "405854"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isConfigRequestValid(II)Z
    .locals 5
    .param p0, "item"    # I
    .param p1, "requestType"    # I

    .line 323
    const/4 v0, -0x1

    .line 327
    .local v0, "configType":I
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 328
    sparse-switch p0, :sswitch_data_0

    .line 340
    const/4 v0, 0x1

    goto :goto_0

    .line 337
    :sswitch_0
    const/4 v0, 0x2

    .line 338
    nop

    .line 346
    :cond_0
    :goto_0
    nop

    .line 348
    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    const-string v4, "Invalid config - setting CONFIG_TYPE_INVALID"

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0x1f -> :sswitch_0
        0x36 -> :sswitch_0
        0x43 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4a -> :sswitch_0
    .end sparse-switch
.end method

.method public static isIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 2
    .param p0, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 158
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_1

    .line 159
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 158
    :goto_1
    return v0
.end method

.method public static isIncomingVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 2
    .param p0, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 149
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0
.end method

.method public static isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 2
    .param p0, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 166
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 52
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isVideoCall(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 37
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isVideoCall(Lorg/codeaurora/ims/CallModify;)Z
    .locals 1
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 642
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 643
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 642
    :goto_0
    return v0
.end method

.method public static isVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 638
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoCallNumValid(Ljava/lang/String;)Z
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .line 593
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 594
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 602
    :cond_0
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 603
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 606
    :cond_1
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 607
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 608
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 611
    :cond_2
    return v3

    .line 609
    :cond_3
    :goto_0
    return v0

    .line 595
    :cond_4
    :goto_1
    sget-object v1, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    const-string v2, "Phone number invalid!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    return v0
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 140
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 174
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 64
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 65
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 66
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 67
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 69
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_0

    .line 71
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 73
    .local v4, "isHoldingPaused":Z
    :goto_0
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v7, :cond_1

    .line 75
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    .line 77
    .local v7, "isActivePaused":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :cond_3
    :goto_2
    return v5
.end method

.method public static isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 5
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 91
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 92
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 93
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 94
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 96
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_0

    .line 98
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 96
    :goto_0
    return v4
.end method

.method public static isVoiceCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 46
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeExtras(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 2
    .param p0, "callExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 680
    .local p1, "extrasToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 683
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 684
    .local v1, "extra":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 685
    .end local v1    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 687
    :cond_1
    return-void

    .line 681
    :cond_2
    :goto_1
    return-void
.end method

.method public static toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 1
    .param p0, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 544
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 572
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 552
    :pswitch_1
    const/16 v0, 0x83

    return v0

    .line 566
    :pswitch_2
    const/16 v0, 0xf9

    return v0

    .line 564
    :pswitch_3
    const/16 v0, 0xf8

    return v0

    .line 568
    :pswitch_4
    const/16 v0, 0xfa

    return v0

    .line 570
    :pswitch_5
    const/16 v0, 0xfb

    return v0

    .line 562
    :pswitch_6
    const/16 v0, 0xf7

    return v0

    .line 560
    :pswitch_7
    const/16 v0, 0xf6

    return v0

    .line 558
    :pswitch_8
    const/16 v0, 0xf5

    return v0

    .line 556
    :pswitch_9
    const/16 v0, 0xf4

    return v0

    .line 554
    :pswitch_a
    const/16 v0, 0xf1

    return v0

    .line 550
    :pswitch_b
    const/16 v0, 0x4b3

    return v0

    .line 548
    :pswitch_c
    const/16 v0, 0x4b2

    return v0

    .line 546
    :pswitch_d
    const/16 v0, 0x4b1

    return v0

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 1
    .param p0, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 528
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 536
    const/4 v0, -0x1

    return v0

    .line 534
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 532
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 530
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static updateImsCallProfileVerstatInfo(Lorg/codeaurora/ims/VerstatInfo;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p0, "verstatInfo"    # Lorg/codeaurora/ims/VerstatInfo;
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 651
    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 655
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 656
    const-string v0, "CanMarkUnwantedCall"

    invoke-virtual {p1, v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 660
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/VerstatInfo;->getVerstatVerificationStatus()I

    move-result v0

    .line 661
    .local v0, "verstatVerificationStatus":I
    if-nez v0, :cond_2

    .line 662
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_0

    .line 664
    :cond_2
    if-ne v0, v1, :cond_3

    .line 665
    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_0

    .line 668
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 672
    :goto_0
    if-eqz v0, :cond_4

    .line 673
    const-string v1, "VerstatVerificationStatus"

    invoke-virtual {p1, v1, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 677
    :cond_4
    return-void

    .line 652
    .end local v0    # "verstatVerificationStatus":I
    :cond_5
    :goto_1
    return-void
.end method
