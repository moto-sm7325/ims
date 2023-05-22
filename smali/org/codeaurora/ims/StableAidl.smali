.class public Lorg/codeaurora/ims/StableAidl;
.super Ljava/lang/Object;
.source "StableAidl.java"


# static fields
.field private static final INVALID_CONNID:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    const-string v0, "StableAidl"

    sput-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 6
    .param p0, "fromList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 1406
    const/4 v0, 0x0

    .line 1407
    .local v0, "toList":[Lorg/codeaurora/ims/ServiceStatus;
    if-nez p0, :cond_0

    .line 1408
    const/4 v1, 0x0

    return-object v1

    .line 1411
    :cond_0
    array-length v1, p0

    .line 1412
    .local v1, "listLen":I
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Num of SrvUpdates = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1413
    new-array v0, v1, [Lorg/codeaurora/ims/ServiceStatus;

    .line 1414
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1415
    aget-object v3, p0, v2

    .line 1416
    .local v3, "fromInfo":Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    if-eqz v3, :cond_1

    .line 1417
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_1

    .line 1419
    :cond_1
    sget-object v4, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v5, "Null service status in list"

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    .end local v3    # "fromInfo":Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1422
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static fromAcknowledgeSms(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    .locals 2
    .param p0, "messageRef"    # I
    .param p1, "deliverStatus"    # I

    .line 3024
    new-instance v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;-><init>()V

    .line 3025
    .local v0, "smsInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->messageRef:I

    .line 3026
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromSmsDeliverStatus(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->smsDeliverStatus:I

    .line 3027
    return-object v0
.end method

.method public static fromAcknowledgeSmsReport(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    .locals 2
    .param p0, "messageRef"    # I
    .param p1, "statusReportStatus"    # I

    .line 3175
    new-instance v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;-><init>()V

    .line 3176
    .local v0, "smsReportInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->messageRef:I

    .line 3177
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromSmsReportStatus(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->smsReportStatus:I

    .line 3178
    return-object v0
.end method

.method private static fromAddress(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/AddressInfo;
    .locals 5
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "address"    # Landroid/location/Address;

    .line 2698
    const-class v0, Lorg/codeaurora/ims/StableAidl;

    new-instance v1, Lvendor/qti/hardware/radio/ims/AddressInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/AddressInfo;-><init>()V

    .line 2699
    .local v1, "addressInfo":Lvendor/qti/hardware/radio/ims/AddressInfo;
    const-string v2, ""

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->city:Ljava/lang/String;

    .line 2700
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->state:Ljava/lang/String;

    .line 2701
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->country:Ljava/lang/String;

    .line 2702
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2703
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2704
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->street:Ljava/lang/String;

    .line 2705
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->houseNumber:Ljava/lang/String;

    .line 2706
    if-nez p4, :cond_0

    .line 2707
    const-string v2, "Null Address!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2708
    return-object v1

    .line 2710
    :cond_0
    invoke-virtual {p4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    .line 2711
    .local v2, "info":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2712
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->city:Ljava/lang/String;

    .line 2714
    :cond_1
    invoke-virtual {p4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    .line 2715
    if-eqz v2, :cond_2

    .line 2716
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->state:Ljava/lang/String;

    .line 2718
    :cond_2
    invoke-virtual {p4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 2719
    if-eqz v2, :cond_3

    .line 2720
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->country:Ljava/lang/String;

    .line 2722
    :cond_3
    invoke-virtual {p4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    .line 2723
    if-eqz v2, :cond_4

    .line 2724
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2726
    :cond_4
    invoke-virtual {p4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 2727
    if-eqz v2, :cond_5

    .line 2728
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2730
    :cond_5
    invoke-virtual {p4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    .line 2731
    if-eqz v2, :cond_6

    .line 2732
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->street:Ljava/lang/String;

    .line 2734
    :cond_6
    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    .line 2735
    if-eqz v2, :cond_7

    .line 2736
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->houseNumber:Ljava/lang/String;

    .line 2738
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",houseNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2739
    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2738
    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2740
    return-object v1
.end method

.method public static fromAnswerRequest(III)Lvendor/qti/hardware/radio/ims/AnswerRequest;
    .locals 2
    .param p0, "callType"    # I
    .param p1, "presentation"    # I
    .param p2, "rttMode"    # I

    .line 1323
    new-instance v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/AnswerRequest;-><init>()V

    .line 1324
    .local v0, "answerRequest":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCallType(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;->callType:I

    .line 1325
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromTirPresentation(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;->presentation:I

    .line 1326
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromRttMode(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;->mode:I

    .line 1327
    return-object v0
.end method

.method public static fromCallComposerDialRequest(Lorg/codeaurora/ims/CallComposerInfo;Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    .locals 2
    .param p0, "from"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "isEncrypted"    # Z
    .param p5, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;

    .line 338
    if-nez p0, :cond_0

    .line 339
    const/4 v0, 0x0

    return-object v0

    .line 342
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;-><init>()V

    .line 343
    .local v0, "ccDialRequest":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    invoke-static {p1, p2, p3, p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 345
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCallComposerInfo(Lorg/codeaurora/ims/CallComposerInfo;)Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .line 347
    return-object v0
.end method

.method private static fromCallComposerInfo(Lorg/codeaurora/ims/CallComposerInfo;)Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    .locals 2
    .param p0, "from"    # Lorg/codeaurora/ims/CallComposerInfo;

    .line 353
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallComposerInfo;-><init>()V

    .line 356
    .local v0, "to":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getPriority()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromPriority(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->priority:I

    .line 357
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    goto :goto_0

    .line 360
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [C

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    .line 363
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromLocation(Lorg/codeaurora/ims/CallComposerInfo$Location;)Lvendor/qti/hardware/radio/ims/CallLocation;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    goto :goto_1

    .line 366
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/CallLocation;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    .line 369
    :goto_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    goto :goto_2

    .line 372
    :cond_2
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    .line 375
    :goto_2
    return-object v0
.end method

.method private static fromCallDetails(Lorg/codeaurora/ims/CallDetails;)Lvendor/qti/hardware/radio/ims/CallDetails;
    .locals 5
    .param p0, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 387
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallDetails;-><init>()V

    .line 390
    .local v0, "halCallDetails":Lvendor/qti/hardware/radio/ims/CallDetails;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 391
    new-array v2, v1, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 392
    new-array v2, v1, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 393
    const-string v2, ""

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 395
    if-nez p0, :cond_0

    .line 396
    return-object v0

    .line 399
    :cond_0
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromCallType(I)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    .line 400
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromCallDomain(I)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    .line 401
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromRttMode(I)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    .line 402
    iget-object v2, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    .line 403
    .local v1, "extrasLength":I
    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 404
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 405
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v4, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private static fromCallDomain(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 441
    sparse-switch p0, :sswitch_data_0

    .line 452
    const/4 v0, 0x5

    return v0

    .line 443
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 449
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 447
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 445
    :sswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private static fromCallFailCauseResponse(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;
    .locals 5
    .param p0, "failCause"    # I
    .param p1, "errorInfo"    # Ljava/lang/String;

    .line 780
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;-><init>()V

    .line 781
    .local v0, "failCauseResponse":Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;
    const/4 v1, 0x0

    new-array v2, v1, [B

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorInfo:[B

    .line 782
    const-string v2, ""

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 783
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->hasErrorDetails:Z

    .line 784
    new-instance v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 785
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 787
    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    .line 788
    return-object v0

    .line 791
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 792
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangupWithReason errorInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorInfo:[B

    .line 795
    :cond_1
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromImsReasonInfo(I)I

    move-result v1

    .line 796
    .local v1, "callFailCause":I
    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->failCause:I

    .line 797
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason callFailCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    const/16 v2, 0x1fd

    if-ne v1, v2, :cond_2

    .line 801
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorInfo:[B

    .line 803
    :cond_2
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason MISC callFailCause, errorInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    return-object v0
.end method

.method public static fromCallForwardTimerInfo(Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;II)V
    .locals 1
    .param p0, "callFwdTimerInfo"    # Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 2492
    const v0, 0x7fffffff

    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->year:I

    .line 2493
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->month:I

    .line 2494
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->day:I

    .line 2495
    iput p1, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    .line 2496
    iput p2, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    .line 2497
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->second:I

    .line 2498
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->timezone:I

    .line 2499
    return-void
.end method

.method public static fromCallModify(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    .locals 2
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 742
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallModifyInfo;-><init>()V

    .line 743
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    iget v1, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callIndex:I

    .line 745
    iget-object v1, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromCallDetails(Lorg/codeaurora/ims/CallDetails;)Lvendor/qti/hardware/radio/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    .line 747
    return-object v0
.end method

.method private static fromCallType(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 411
    sparse-switch p0, :sswitch_data_0

    .line 436
    const/4 v0, 0x0

    return v0

    .line 433
    :sswitch_0
    const/16 v0, 0xb

    return v0

    .line 429
    :sswitch_1
    const/16 v0, 0x9

    return v0

    .line 427
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 425
    :sswitch_3
    const/4 v0, 0x7

    return v0

    .line 423
    :sswitch_4
    const/4 v0, 0x6

    return v0

    .line 431
    :sswitch_5
    const/16 v0, 0xa

    return v0

    .line 421
    :sswitch_6
    const/4 v0, 0x5

    return v0

    .line 419
    :sswitch_7
    const/4 v0, 0x4

    return v0

    .line 417
    :sswitch_8
    const/4 v0, 0x3

    return v0

    .line 415
    :sswitch_9
    const/4 v0, 0x2

    return v0

    .line 413
    :sswitch_a
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x5 -> :sswitch_5
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public static fromCallWaiting(ZI)Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .locals 2
    .param p0, "enable"    # Z
    .param p1, "serviceClass"    # I

    .line 3052
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;-><init>()V

    .line 3053
    .local v0, "callWaitingInfo":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    if-eqz p0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 3054
    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceStatus:I

    .line 3055
    iput p1, v0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceClass:I

    .line 3056
    return-object v0
.end method

.method private static fromCbNumList([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/CbNumListInfo;
    .locals 5
    .param p0, "inCbNumList"    # [Ljava/lang/String;
    .param p1, "serviceClass"    # I

    .line 2575
    new-instance v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CbNumListInfo;-><init>()V

    .line 2576
    .local v0, "outCbNumListInfo":Lvendor/qti/hardware/radio/ims/CbNumListInfo;
    const/4 v1, 0x1

    new-array v1, v1, [Lvendor/qti/hardware/radio/ims/CbNumInfo;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    .line 2577
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    new-instance v2, Lvendor/qti/hardware/radio/ims/CbNumInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/CbNumInfo;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2578
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aget-object v1, v1, v3

    const-string v2, ""

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    .line 2579
    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    .line 2580
    iput p1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->serviceClass:I

    .line 2582
    :cond_0
    if-nez p0, :cond_1

    .line 2583
    return-object v0

    .line 2585
    :cond_1
    array-length v1, p0

    new-array v1, v1, [Lvendor/qti/hardware/radio/ims/CbNumInfo;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    .line 2586
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2587
    new-instance v2, Lvendor/qti/hardware/radio/ims/CbNumInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/CbNumInfo;-><init>()V

    .line 2588
    .local v2, "cbNumInfo":Lvendor/qti/hardware/radio/ims/CbNumInfo;
    iput v3, v2, Lvendor/qti/hardware/radio/ims/CbNumInfo;->status:I

    .line 2589
    aget-object v4, p0, v1

    if-eqz v4, :cond_2

    .line 2590
    aget-object v4, p0, v1

    iput-object v4, v2, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    .line 2592
    :cond_2
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aput-object v2, v4, v1

    .line 2586
    .end local v2    # "cbNumInfo":Lvendor/qti/hardware/radio/ims/CbNumInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2594
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static fromClir(I)Lvendor/qti/hardware/radio/ims/ClirInfo;
    .locals 1
    .param p0, "clirMode"    # I

    .line 3046
    new-instance v0, Lvendor/qti/hardware/radio/ims/ClirInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ClirInfo;-><init>()V

    .line 3047
    .local v0, "clirValue":Lvendor/qti/hardware/radio/ims/ClirInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    .line 3048
    return-object v0
.end method

.method private static fromClirMode(I)I
    .locals 1
    .param p0, "clirMode"    # I

    .line 274
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 282
    return v0

    .line 280
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 278
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 276
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromColrValue(I)Lvendor/qti/hardware/radio/ims/ColrInfo;
    .locals 3
    .param p0, "presentationValue"    # I

    .line 808
    new-instance v0, Lvendor/qti/hardware/radio/ims/ColrInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ColrInfo;-><init>()V

    .line 809
    .local v0, "colrValue":Lvendor/qti/hardware/radio/ims/ColrInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromIpPresentation(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/ColrInfo;->presentation:I

    .line 812
    new-instance v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 813
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    const-string v2, ""

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 814
    return-object v0
.end method

.method public static fromDeflectCall(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    .locals 1
    .param p0, "index"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 3017
    new-instance v0, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;-><init>()V

    .line 3018
    .local v0, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->connIndex:I

    .line 3019
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->number:Ljava/lang/String;

    .line 3020
    return-object v0
.end method

.method public static fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "clirMode"    # I
    .param p2, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p3, "isEncrypted"    # Z
    .param p4, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;

    .line 288
    new-instance v0, Lvendor/qti/hardware/radio/ims/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/DialRequest;-><init>()V

    .line 289
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/DialRequest;
    if-eqz p0, :cond_0

    .line 290
    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    .line 295
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromClirMode(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->clirMode:I

    .line 297
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromCallDetails(Lorg/codeaurora/ims/CallDetails;)Lvendor/qti/hardware/radio/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    .line 299
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->hasConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isConferenceUri:Z

    .line 301
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isCallPull:Z

    .line 303
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isEncrypted:Z

    .line 305
    if-eqz p2, :cond_2

    .line 306
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getMultiIdentityLineInfo()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 307
    .local v1, "multiIdentityLineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    :goto_2
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromMultiIdentityLineInfo(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    move-result-object v2

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 309
    invoke-static {p4}, Lorg/codeaurora/ims/StableAidl;->fromRedialInfo(Lorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/RedialInfo;

    move-result-object v2

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/RedialInfo;

    .line 311
    return-object v0
.end method

.method public static fromDtmf(IC)Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .locals 2
    .param p0, "callId"    # I
    .param p1, "c"    # C

    .line 3039
    new-instance v0, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/DtmfInfo;-><init>()V

    .line 3040
    .local v0, "dtmfValue":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 3041
    iput p0, v0, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    .line 3042
    return-object v0
.end method

.method public static fromEctInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    .locals 2
    .param p0, "srcCallId"    # I
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "destCallId"    # I

    .line 2550
    new-instance v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;-><init>()V

    .line 2551
    .local v0, "ectInfo":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->callId:I

    .line 2552
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromEctTypeInfo(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->ectType:I

    .line 2553
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    .line 2554
    if-eqz p2, :cond_0

    .line 2555
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    .line 2557
    :cond_0
    if-lez p3, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    const v1, 0x7fffffff

    :goto_0
    iput v1, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->targetCallId:I

    .line 2558
    return-object v0
.end method

.method private static fromEctTypeInfo(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2562
    packed-switch p0, :pswitch_data_0

    .line 2570
    const/4 v0, 0x0

    return v0

    .line 2568
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 2566
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2564
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fromEmergencyCallRouting(I)I
    .locals 1
    .param p0, "routing"    # I

    .line 712
    packed-switch p0, :pswitch_data_0

    .line 718
    const/4 v0, 0x0

    return v0

    .line 714
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 716
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromEmergencyDialRequest(Lorg/codeaurora/ims/EmergencyCallInfo;Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    .locals 3
    .param p0, "eInfo"    # Lorg/codeaurora/ims/EmergencyCallInfo;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p4, "isEncrypted"    # Z
    .param p5, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;

    .line 318
    if-nez p0, :cond_0

    .line 319
    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;-><init>()V

    .line 323
    .local v0, "eDialRequest":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    invoke-static {p1, p2, p3, p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 325
    nop

    .line 326
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyServiceCategories()I

    move-result v1

    .line 325
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromEmergencyServiceCategory(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->categories:I

    .line 327
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->urns:[Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyCallRouting()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromEmergencyCallRouting(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->route:I

    .line 329
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->hasKnownUserIntentEmergency()Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->hasKnownUserIntentEmergency:Z

    .line 330
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->isEmergencyCallTesting()Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->isTesting:Z

    .line 331
    return-object v0
.end method

.method private static fromEmergencyServiceCategory(I)I
    .locals 3
    .param p0, "categories"    # I

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "toHalCategories":I
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 682
    or-int/lit8 v0, v0, 0x1

    .line 684
    :cond_0
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 686
    or-int/lit8 v0, v0, 0x2

    .line 688
    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 690
    or-int/lit8 v0, v0, 0x4

    .line 692
    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 694
    or-int/lit8 v0, v0, 0x8

    .line 696
    :cond_3
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 698
    or-int/lit8 v0, v0, 0x10

    .line 700
    :cond_4
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 702
    or-int/lit8 v0, v0, 0x20

    .line 704
    :cond_5
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 706
    or-int/lit8 v0, v0, 0x40

    .line 708
    :cond_6
    return v0
.end method

.method private static fromFacility(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 2598
    packed-switch p0, :pswitch_data_0

    .line 2624
    const/4 v0, 0x0

    return v0

    .line 2622
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 2620
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 2618
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 2616
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 2614
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 2612
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 2610
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 2608
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 2606
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 2604
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 2602
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 2600
    :pswitch_b
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static fromGeoLocation(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    .locals 2
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "address"    # Landroid/location/Address;

    .line 3031
    new-instance v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;-><init>()V

    .line 3032
    .local v0, "geoLocationInfo":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    iput-wide p0, v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lat:D

    .line 3033
    iput-wide p2, v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lon:D

    .line 3034
    invoke-static {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/StableAidl;->fromAddress(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/AddressInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->addressInfo:Lvendor/qti/hardware/radio/ims/AddressInfo;

    .line 3035
    return-object v0
.end method

.method public static fromHangup(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    .locals 3
    .param p0, "connectionId"    # I
    .param p1, "userUri"    # Ljava/lang/String;
    .param p2, "confUri"    # Ljava/lang/String;
    .param p3, "mpty"    # Z
    .param p4, "failCause"    # I
    .param p5, "errorInfo"    # Ljava/lang/String;

    .line 752
    new-instance v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;-><init>()V

    .line 757
    .local v0, "hangup":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    const v1, 0x7fffffff

    if-eqz p0, :cond_0

    .line 758
    iput p0, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connIndex:I

    goto :goto_0

    .line 760
    :cond_0
    iput v1, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connIndex:I

    .line 763
    :goto_0
    if-eqz p1, :cond_1

    .line 764
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connUri:Ljava/lang/String;

    goto :goto_1

    .line 766
    :cond_1
    const-string v2, ""

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 769
    :goto_1
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->multiParty:Z

    .line 770
    iput v1, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->conf_id:I

    .line 772
    invoke-static {p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromCallFailCauseResponse(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    .line 774
    return-object v0
.end method

.method public static fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIII)Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .locals 10
    .param p0, "cfReason"    # I
    .param p1, "serviceClass"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "timeSeconds"    # I
    .param p5, "startHour"    # I
    .param p6, "startMinute"    # I
    .param p7, "endHour"    # I
    .param p8, "endMinute"    # I

    .line 2409
    const/4 v9, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lorg/codeaurora/ims/StableAidl;->fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIIIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method public static fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIIIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .locals 2
    .param p0, "cfReason"    # I
    .param p1, "serviceClass"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "timeSeconds"    # I
    .param p5, "startHour"    # I
    .param p6, "startMinute"    # I
    .param p7, "endHour"    # I
    .param p8, "endMinute"    # I
    .param p9, "expectMore"    # Z

    .line 2423
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallForwardInfo;-><init>()V

    .line 2426
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    iput p3, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    .line 2427
    iput p0, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    .line 2428
    iput p1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    .line 2429
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    .line 2430
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    .line 2431
    if-eqz p2, :cond_0

    .line 2432
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    .line 2434
    :cond_0
    iput p4, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    .line 2435
    iput-boolean p9, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->expectMore:Z

    .line 2436
    new-instance v1, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2437
    new-instance v1, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2438
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-static {v1, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromCallForwardTimerInfo(Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;II)V

    .line 2439
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-static {v1, p7, p8}, Lorg/codeaurora/ims/StableAidl;->fromCallForwardTimerInfo(Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;II)V

    .line 2440
    return-object v0
.end method

.method public static fromImsCallForwardTimerInfo(IILjava/lang/String;IIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .locals 10
    .param p0, "cfReason"    # I
    .param p1, "serviceClass"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "timeSeconds"    # I
    .param p5, "expectMore"    # Z

    .line 2415
    const v5, 0x7fffffff

    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v9, p5

    invoke-static/range {v0 .. v9}, Lorg/codeaurora/ims/StableAidl;->fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIIIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method public static fromImsConfig(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ConfigInfo;
    .locals 2
    .param p0, "item"    # I
    .param p1, "boolValue"    # Z
    .param p2, "intValue"    # I
    .param p3, "strValue"    # Ljava/lang/String;
    .param p4, "errorCause"    # I

    .line 873
    new-instance v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ConfigInfo;-><init>()V

    .line 874
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromImsConfigItem(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->item:I

    .line 875
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->hasBoolValue:Z

    .line 876
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->boolValue:Z

    .line 877
    iput p2, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    .line 878
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 879
    if-eqz p3, :cond_0

    .line 880
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 882
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/StableAidlErrorCode;->fromImsConfigErrorCode(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    .line 883
    return-object v0
.end method

.method private static fromImsConfigItem(I)I
    .locals 1
    .param p0, "item"    # I

    .line 887
    const/16 v0, 0x4e

    packed-switch p0, :pswitch_data_0

    .line 1055
    const/4 v0, 0x0

    return v0

    .line 1052
    :pswitch_0
    return v0

    .line 1049
    :pswitch_1
    const/16 v0, 0x52

    return v0

    .line 1047
    :pswitch_2
    const/16 v0, 0x51

    return v0

    .line 1045
    :pswitch_3
    const/16 v0, 0x50

    return v0

    .line 1043
    :pswitch_4
    const/16 v0, 0x4f

    return v0

    .line 1041
    :pswitch_5
    return v0

    .line 1039
    :pswitch_6
    const/16 v0, 0x4d

    return v0

    .line 1037
    :pswitch_7
    const/16 v0, 0x4b

    return v0

    .line 1035
    :pswitch_8
    const/16 v0, 0x4a

    return v0

    .line 1031
    :pswitch_9
    const/16 v0, 0x49

    return v0

    .line 1029
    :pswitch_a
    const/16 v0, 0x48

    return v0

    .line 1033
    :pswitch_b
    const/16 v0, 0x47

    return v0

    .line 1027
    :pswitch_c
    const/16 v0, 0x46

    return v0

    .line 1025
    :pswitch_d
    const/16 v0, 0x45

    return v0

    .line 1023
    :pswitch_e
    const/16 v0, 0x44

    return v0

    .line 1021
    :pswitch_f
    const/16 v0, 0x43

    return v0

    .line 1019
    :pswitch_10
    const/16 v0, 0x42

    return v0

    .line 1017
    :pswitch_11
    const/16 v0, 0x41

    return v0

    .line 1015
    :pswitch_12
    const/16 v0, 0x40

    return v0

    .line 1013
    :pswitch_13
    const/16 v0, 0x3f

    return v0

    .line 1011
    :pswitch_14
    const/16 v0, 0x3e

    return v0

    .line 1009
    :pswitch_15
    const/16 v0, 0x3d

    return v0

    .line 1007
    :pswitch_16
    const/16 v0, 0x3c

    return v0

    .line 1005
    :pswitch_17
    const/16 v0, 0x3b

    return v0

    .line 1003
    :pswitch_18
    const/16 v0, 0x3a

    return v0

    .line 1001
    :pswitch_19
    const/16 v0, 0x39

    return v0

    .line 999
    :pswitch_1a
    const/16 v0, 0x38

    return v0

    .line 997
    :pswitch_1b
    const/16 v0, 0x37

    return v0

    .line 995
    :pswitch_1c
    const/16 v0, 0x36

    return v0

    .line 993
    :pswitch_1d
    const/16 v0, 0x35

    return v0

    .line 991
    :pswitch_1e
    const/16 v0, 0x34

    return v0

    .line 989
    :pswitch_1f
    const/16 v0, 0x33

    return v0

    .line 987
    :pswitch_20
    const/16 v0, 0x32

    return v0

    .line 985
    :pswitch_21
    const/16 v0, 0x31

    return v0

    .line 983
    :pswitch_22
    const/16 v0, 0x30

    return v0

    .line 981
    :pswitch_23
    const/16 v0, 0x2f

    return v0

    .line 979
    :pswitch_24
    const/16 v0, 0x2e

    return v0

    .line 977
    :pswitch_25
    const/16 v0, 0x2d

    return v0

    .line 975
    :pswitch_26
    const/16 v0, 0x2c

    return v0

    .line 973
    :pswitch_27
    const/16 v0, 0x2b

    return v0

    .line 971
    :pswitch_28
    const/16 v0, 0x2a

    return v0

    .line 969
    :pswitch_29
    const/16 v0, 0x29

    return v0

    .line 967
    :pswitch_2a
    const/16 v0, 0x28

    return v0

    .line 965
    :pswitch_2b
    const/16 v0, 0x27

    return v0

    .line 963
    :pswitch_2c
    const/16 v0, 0x26

    return v0

    .line 961
    :pswitch_2d
    const/16 v0, 0x25

    return v0

    .line 959
    :pswitch_2e
    const/16 v0, 0x24

    return v0

    .line 957
    :pswitch_2f
    const/16 v0, 0x23

    return v0

    .line 955
    :pswitch_30
    const/16 v0, 0x22

    return v0

    .line 953
    :pswitch_31
    const/16 v0, 0x21

    return v0

    .line 951
    :pswitch_32
    const/16 v0, 0x20

    return v0

    .line 949
    :pswitch_33
    const/16 v0, 0x1f

    return v0

    .line 947
    :pswitch_34
    const/16 v0, 0x1e

    return v0

    .line 945
    :pswitch_35
    const/16 v0, 0x1d

    return v0

    .line 943
    :pswitch_36
    const/16 v0, 0x1c

    return v0

    .line 941
    :pswitch_37
    const/16 v0, 0x1b

    return v0

    .line 939
    :pswitch_38
    const/16 v0, 0x1a

    return v0

    .line 937
    :pswitch_39
    const/16 v0, 0x19

    return v0

    .line 935
    :pswitch_3a
    const/16 v0, 0x18

    return v0

    .line 933
    :pswitch_3b
    const/16 v0, 0x17

    return v0

    .line 931
    :pswitch_3c
    const/16 v0, 0x16

    return v0

    .line 929
    :pswitch_3d
    const/16 v0, 0x15

    return v0

    .line 927
    :pswitch_3e
    const/16 v0, 0x14

    return v0

    .line 925
    :pswitch_3f
    const/16 v0, 0x13

    return v0

    .line 923
    :pswitch_40
    const/16 v0, 0x12

    return v0

    .line 921
    :pswitch_41
    const/16 v0, 0x11

    return v0

    .line 919
    :pswitch_42
    const/16 v0, 0x10

    return v0

    .line 917
    :pswitch_43
    const/16 v0, 0xf

    return v0

    .line 915
    :pswitch_44
    const/16 v0, 0xe

    return v0

    .line 913
    :pswitch_45
    const/16 v0, 0xd

    return v0

    .line 911
    :pswitch_46
    const/16 v0, 0xc

    return v0

    .line 909
    :pswitch_47
    const/16 v0, 0xb

    return v0

    .line 907
    :pswitch_48
    const/16 v0, 0xa

    return v0

    .line 905
    :pswitch_49
    const/16 v0, 0x9

    return v0

    .line 903
    :pswitch_4a
    const/16 v0, 0x8

    return v0

    .line 901
    :pswitch_4b
    const/4 v0, 0x7

    return v0

    .line 899
    :pswitch_4c
    const/4 v0, 0x6

    return v0

    .line 897
    :pswitch_4d
    const/4 v0, 0x5

    return v0

    .line 895
    :pswitch_4e
    const/4 v0, 0x4

    return v0

    .line 893
    :pswitch_4f
    const/4 v0, 0x3

    return v0

    .line 891
    :pswitch_50
    const/4 v0, 0x2

    return v0

    .line 889
    :pswitch_51
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
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

.method public static fromImsMediaConfig(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Lvendor/qti/hardware/radio/ims/MediaConfig;
    .locals 3
    .param p0, "screenSize"    # Landroid/graphics/Point;
    .param p1, "avcSize"    # Landroid/graphics/Point;
    .param p2, "hevcSize"    # Landroid/graphics/Point;

    .line 3426
    new-instance v0, Lvendor/qti/hardware/radio/ims/MediaConfig;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/MediaConfig;-><init>()V

    .line 3427
    .local v0, "mediaConfig":Lvendor/qti/hardware/radio/ims/MediaConfig;
    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Lorg/codeaurora/ims/StableAidl;->fromSize(II)Lvendor/qti/hardware/radio/ims/Size;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MediaConfig;->screenSize:Lvendor/qti/hardware/radio/ims/Size;

    .line 3428
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Lorg/codeaurora/ims/StableAidl;->fromSize(II)Lvendor/qti/hardware/radio/ims/Size;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxAvcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    .line 3429
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Lorg/codeaurora/ims/StableAidl;->fromSize(II)Lvendor/qti/hardware/radio/ims/Size;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxHevcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    .line 3430
    return-object v0
.end method

.method private static fromImsReasonInfo(I)I
    .locals 3
    .param p0, "imsReason"    # I

    .line 573
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    sparse-switch p0, :sswitch_data_0

    .line 620
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    const/16 v0, 0x224

    return v0

    .line 608
    :sswitch_0
    const/16 v0, 0x26a

    return v0

    .line 596
    :sswitch_1
    const/16 v0, 0x25d

    return v0

    .line 590
    :sswitch_2
    const/16 v0, 0x25a

    return v0

    .line 594
    :sswitch_3
    const/16 v0, 0x25c

    return v0

    .line 592
    :sswitch_4
    const/16 v0, 0x25b

    return v0

    .line 618
    :sswitch_5
    const/16 v0, 0x1f8

    return v0

    .line 616
    :sswitch_6
    const/16 v0, 0x1f7

    return v0

    .line 612
    :sswitch_7
    const/16 v0, 0x1f6

    return v0

    .line 614
    :sswitch_8
    const/16 v0, 0x1f5

    return v0

    .line 606
    :sswitch_9
    const/16 v0, 0x269

    return v0

    .line 604
    :sswitch_a
    const/16 v0, 0x268

    return v0

    .line 602
    :sswitch_b
    const/16 v0, 0x267

    return v0

    .line 600
    :sswitch_c
    const/16 v0, 0x266

    return v0

    .line 598
    :sswitch_d
    const/16 v0, 0x265

    return v0

    .line 588
    :sswitch_e
    const/16 v0, 0x264

    return v0

    .line 586
    :sswitch_f
    const/16 v0, 0x263

    return v0

    .line 582
    :sswitch_10
    const/16 v0, 0x262

    return v0

    .line 584
    :sswitch_11
    const/16 v0, 0x261

    return v0

    .line 580
    :sswitch_12
    const/16 v0, 0x260

    return v0

    .line 578
    :sswitch_13
    const/16 v0, 0x25f

    return v0

    .line 576
    :sswitch_14
    const/16 v0, 0x25e

    return v0

    .line 610
    :sswitch_15
    const/16 v0, 0x259

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x16d -> :sswitch_15
        0x16e -> :sswitch_14
        0x16f -> :sswitch_13
        0x170 -> :sswitch_12
        0x171 -> :sswitch_11
        0x172 -> :sswitch_10
        0x173 -> :sswitch_f
        0x174 -> :sswitch_e
        0x175 -> :sswitch_d
        0x176 -> :sswitch_c
        0x178 -> :sswitch_b
        0x179 -> :sswitch_a
        0x17a -> :sswitch_9
        0x1f5 -> :sswitch_8
        0x1f8 -> :sswitch_7
        0x1f9 -> :sswitch_6
        0x1fa -> :sswitch_5
        0x1ff -> :sswitch_4
        0x200 -> :sswitch_3
        0x3f9 -> :sswitch_2
        0x5ed -> :sswitch_1
        0xbb9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static fromIpPresentation(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 818
    packed-switch p0, :pswitch_data_0

    .line 826
    const/4 v0, 0x0

    return v0

    .line 824
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 822
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 820
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fromLocation(Lorg/codeaurora/ims/CallComposerInfo$Location;)Lvendor/qti/hardware/radio/ims/CallLocation;
    .locals 3
    .param p0, "from"    # Lorg/codeaurora/ims/CallComposerInfo$Location;

    .line 733
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallLocation;-><init>()V

    .line 734
    .local v0, "location":Lvendor/qti/hardware/radio/ims/CallLocation;
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getRadius()F

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallLocation;->radius:F

    .line 735
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lvendor/qti/hardware/radio/ims/CallLocation;->latitude:D

    .line 736
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lvendor/qti/hardware/radio/ims/CallLocation;->longitude:D

    .line 738
    return-object v0
.end method

.method public static fromMultiIdentityLineInfo(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .locals 2
    .param p0, "from"    # Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 518
    new-instance v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;-><init>()V

    .line 520
    .local v0, "to":Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    if-nez p0, :cond_0

    .line 521
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->msisdn:Ljava/lang/String;

    .line 522
    return-object v0

    .line 525
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->msisdn:Ljava/lang/String;

    .line 526
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineType()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->lineType:I

    .line 527
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->registrationStatus:I

    .line 528
    return-object v0
.end method

.method public static fromMultiIdentityLineInfoList(Ljava/util/Collection;)[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)[",
            "Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;"
        }
    .end annotation

    .line 533
    .local p0, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v0, "halLinesInfo":Ljava/util/List;, "Ljava/util/List<Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 536
    .local v2, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromMultiIdentityLineInfo(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    .end local v2    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    goto :goto_0

    .line 538
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    return-object v1
.end method

.method private static fromOperationType(I)I
    .locals 1
    .param p0, "operationType"    # I

    .line 3078
    packed-switch p0, :pswitch_data_0

    .line 3090
    const/4 v0, 0x0

    return v0

    .line 3088
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 3086
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 3084
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 3082
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 3080
    :pswitch_4
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fromPriority(I)I
    .locals 1
    .param p0, "priority"    # I

    .line 723
    packed-switch p0, :pswitch_data_0

    .line 727
    const/4 v0, 0x1

    return v0

    .line 725
    :pswitch_0
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static fromRadioTech(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 626
    packed-switch p0, :pswitch_data_0

    .line 674
    const/4 v0, 0x0

    return v0

    .line 672
    :pswitch_0
    const/16 v0, 0x17

    return v0

    .line 670
    :pswitch_1
    const/16 v0, 0x16

    return v0

    .line 668
    :pswitch_2
    const/16 v0, 0x15

    return v0

    .line 666
    :pswitch_3
    const/16 v0, 0x14

    return v0

    .line 664
    :pswitch_4
    const/16 v0, 0x13

    return v0

    .line 662
    :pswitch_5
    const/16 v0, 0x12

    return v0

    .line 660
    :pswitch_6
    const/16 v0, 0x11

    return v0

    .line 658
    :pswitch_7
    const/16 v0, 0x10

    return v0

    .line 656
    :pswitch_8
    const/16 v0, 0xf

    return v0

    .line 654
    :pswitch_9
    const/16 v0, 0xe

    return v0

    .line 652
    :pswitch_a
    const/16 v0, 0xd

    return v0

    .line 650
    :pswitch_b
    const/16 v0, 0xc

    return v0

    .line 648
    :pswitch_c
    const/16 v0, 0xb

    return v0

    .line 646
    :pswitch_d
    const/16 v0, 0xa

    return v0

    .line 644
    :pswitch_e
    const/16 v0, 0x9

    return v0

    .line 642
    :pswitch_f
    const/16 v0, 0x8

    return v0

    .line 640
    :pswitch_10
    const/4 v0, 0x7

    return v0

    .line 638
    :pswitch_11
    const/4 v0, 0x6

    return v0

    .line 636
    :pswitch_12
    const/4 v0, 0x5

    return v0

    .line 634
    :pswitch_13
    const/4 v0, 0x4

    return v0

    .line 632
    :pswitch_14
    const/4 v0, 0x3

    return v0

    .line 630
    :pswitch_15
    const/4 v0, 0x2

    return v0

    .line 628
    :pswitch_16
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

.method public static fromRedialInfo(Lorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/RedialInfo;
    .locals 2
    .param p0, "from"    # Lorg/codeaurora/ims/RedialInfo;

    .line 559
    new-instance v0, Lvendor/qti/hardware/radio/ims/RedialInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/RedialInfo;-><init>()V

    .line 561
    .local v0, "to":Lvendor/qti/hardware/radio/ims/RedialInfo;
    const/16 v1, 0x224

    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailReason:I

    .line 562
    const/4 v1, 0x0

    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailRadioTech:I

    .line 563
    if-nez p0, :cond_0

    .line 564
    return-object v0

    .line 567
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailCause()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromImsReasonInfo(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailReason:I

    .line 568
    invoke-virtual {p0}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailRadioTech()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromRadioTech(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailRadioTech:I

    .line 569
    return-object v0
.end method

.method public static fromRegState(I)I
    .locals 1
    .param p0, "state"    # I

    .line 1355
    packed-switch p0, :pswitch_data_0

    .line 1363
    const/4 v0, 0x0

    return v0

    .line 1361
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1359
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1357
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fromRttMode(I)I
    .locals 1
    .param p0, "rttMode"    # I

    .line 474
    packed-switch p0, :pswitch_data_0

    .line 479
    const/4 v0, 0x1

    return v0

    .line 476
    :pswitch_0
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static fromServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    .locals 5
    .param p0, "srvType"    # I
    .param p1, "rat"    # I
    .param p2, "enabled"    # I
    .param p3, "restrictCause"    # I

    .line 212
    new-instance v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;-><init>()V

    .line 213
    .local v0, "statusForAccessTech":Lvendor/qti/hardware/radio/ims/StatusForAccessTech;
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromRadioTech(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->networkMode:I

    .line 214
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromStatusType(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->status:I

    .line 215
    iput p3, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->restrictCause:I

    .line 218
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->hasRegistration:Z

    .line 219
    new-instance v2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/RegistrationInfo;-><init>()V

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 220
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    const-string v3, ""

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorMessage:Ljava/lang/String;

    .line 221
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    .line 223
    new-instance v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;-><init>()V

    .line 224
    .local v2, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->isValid:Z

    .line 225
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCallType(I)I

    move-result v4

    iput v4, v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->callType:I

    .line 226
    new-array v3, v3, [Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    .line 227
    iget-object v3, v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    aput-object v0, v3, v1

    .line 229
    return-object v2
.end method

.method public static fromServiceStatusInfoList(Ljava/util/List;I)[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    .locals 6
    .param p1, "restrictCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)[",
            "Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;"
        }
    .end annotation

    .line 196
    .local p0, "capabilityStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/CapabilityStatus;>;"
    nop

    .line 197
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 198
    .local v0, "serviceStatusInfoList":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 199
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/CapabilityStatus;

    .line 200
    .local v2, "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    nop

    .line 201
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->mapCapabilityToSrvType(I)I

    move-result v3

    .line 202
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v4

    invoke-static {v4}, Lorg/codeaurora/ims/StableAidl;->mapRegistrationTechToRadioTech(I)I

    move-result v4

    .line 203
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v5

    invoke-static {v5}, Lorg/codeaurora/ims/StableAidl;->mapValueToServiceStatus(I)I

    move-result v5

    .line 200
    invoke-static {v3, v4, v5, p1}, Lorg/codeaurora/ims/StableAidl;->fromServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    move-result-object v3

    .line 205
    .local v3, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    aput-object v3, v0, v1

    .line 198
    .end local v2    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .end local v3    # "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static fromSize(II)Lvendor/qti/hardware/radio/ims/Size;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 3434
    new-instance v0, Lvendor/qti/hardware/radio/ims/Size;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/Size;-><init>()V

    .line 3435
    .local v0, "size":Lvendor/qti/hardware/radio/ims/Size;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/Size;->width:I

    .line 3436
    iput p1, v0, Lvendor/qti/hardware/radio/ims/Size;->height:I

    .line 3437
    return-object v0
.end method

.method private static fromSmsDeliverStatus(I)I
    .locals 3
    .param p0, "status"    # I

    .line 2744
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 2754
    const-class v1, Lorg/codeaurora/ims/StableAidl;

    const-string v2, "unknown deliver status"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2755
    return v0

    .line 2752
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2750
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2748
    :pswitch_2
    return v0

    .line 2746
    :pswitch_3
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fromSmsReportStatus(I)I
    .locals 1
    .param p0, "report"    # I

    .line 2760
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 2766
    return v0

    .line 2764
    :pswitch_0
    return v0

    .line 2762
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromSmsRequest(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    .locals 4
    .param p0, "messageRef"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "shallRetry"    # Z
    .param p4, "pdu"    # [B

    .line 160
    new-instance v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/SmsSendRequest;-><init>()V

    .line 161
    .local v0, "smsRequest":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->messageRef:I

    .line 162
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->format:Ljava/lang/String;

    .line 163
    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->smsc:Ljava/lang/String;

    .line 164
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->shallRetry:Z

    .line 165
    array-length v1, p4

    new-array v1, v1, [B

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->pdu:[B

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->pdu:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 167
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->pdu:[B

    aget-byte v3, p4, v1

    aput-byte v3, v2, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromStatusType(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1622
    packed-switch p0, :pswitch_data_0

    .line 1632
    const/4 v0, 0x0

    return v0

    .line 1630
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1628
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1626
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1624
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromSuppServiceStatus(II[Ljava/lang/String;Ljava/lang/String;IZ)Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    .locals 2
    .param p0, "operationType"    # I
    .param p1, "facility"    # I
    .param p2, "inCbNumList"    # [Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "expectMore"    # Z

    .line 3068
    new-instance v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;-><init>()V

    .line 3069
    .local v0, "suppServiceStatusRequest":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromOperationType(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->operationType:I

    .line 3070
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromFacility(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->facilityType:I

    .line 3071
    invoke-static {p2, p4}, Lorg/codeaurora/ims/StableAidl;->fromCbNumList([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->cbNumListInfo:Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    .line 3072
    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->password:Ljava/lang/String;

    .line 3073
    iput-boolean p5, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->expectMore:Z

    .line 3074
    return-object v0
.end method

.method private static fromTirPresentation(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 1331
    packed-switch p0, :pswitch_data_0

    .line 1337
    const/4 v0, 0x3

    return v0

    .line 1335
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1333
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromTty(I)Lvendor/qti/hardware/radio/ims/TtyInfo;
    .locals 2
    .param p0, "uiTtyMode"    # I

    .line 3060
    new-instance v0, Lvendor/qti/hardware/radio/ims/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/TtyInfo;-><init>()V

    .line 3061
    .local v0, "info":Lvendor/qti/hardware/radio/ims/TtyInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromTtyMode(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/TtyInfo;->mode:I

    .line 3062
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/TtyInfo;->userData:[B

    .line 3063
    return-object v0
.end method

.method private static fromTtyMode(I)I
    .locals 1
    .param p0, "ttyMode"    # I

    .line 2392
    packed-switch p0, :pswitch_data_0

    .line 2402
    const/4 v0, 0x0

    return v0

    .line 2398
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2396
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2394
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2400
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hasConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 3
    .param p0, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 501
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v2, "isConferenceUri"

    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 502
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method private static isTirOverwriteAllowed(I)Z
    .locals 1
    .param p0, "tirMode"    # I

    .line 2248
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z
    .locals 5
    .param p0, "imsRadio"    # Lvendor/qti/hardware/radio/ims/IImsRadio;
    .param p1, "version"    # I

    .line 3446
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 3450
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getInterfaceVersion()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 3451
    :catch_0
    move-exception v1

    .line 3452
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getInterfaceVersion. Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    return v0

    .line 3447
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return v0
.end method

.method public static mapCapabilityToSrvType(I)I
    .locals 1
    .param p0, "capability"    # I

    .line 233
    sparse-switch p0, :sswitch_data_0

    .line 243
    const/16 v0, 0xa

    return v0

    .line 241
    :sswitch_0
    const/4 v0, 0x5

    return v0

    .line 239
    :sswitch_1
    const/16 v0, 0x19

    return v0

    .line 237
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 235
    :sswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static mapRegistrationTechToRadioTech(I)I
    .locals 1
    .param p0, "rat"    # I

    .line 248
    packed-switch p0, :pswitch_data_0

    .line 258
    const/4 v0, 0x0

    return v0

    .line 254
    :pswitch_0
    const/16 v0, 0x14

    return v0

    .line 256
    :pswitch_1
    const/16 v0, 0x15

    return v0

    .line 252
    :pswitch_2
    const/16 v0, 0x13

    return v0

    .line 250
    :pswitch_3
    const/16 v0, 0xe

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapValueToServiceStatus(I)I
    .locals 1
    .param p0, "value"    # I

    .line 263
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 269
    return v0

    .line 265
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 267
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toBlockReason(I)I
    .locals 1
    .param p0, "inBlockReason"    # I

    .line 1822
    packed-switch p0, :pswitch_data_0

    .line 1832
    const/4 v0, -0x1

    return v0

    .line 1830
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1828
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1826
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1824
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toBlockReasonDetails(Lvendor/qti/hardware/radio/ims/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    .locals 3
    .param p0, "inBlockReasonDetails"    # Lvendor/qti/hardware/radio/ims/BlockReasonDetails;

    .line 1838
    new-instance v0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;-><init>()V

    .line 1840
    .local v0, "outBlockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReasonType:I

    if-eqz v1, :cond_0

    .line 1841
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReasonType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRegFailureReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReasonType(I)V

    .line 1845
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReason:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1846
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReason:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReason(I)V

    .line 1849
    :cond_1
    return-object v0
.end method

.method private static toBlockStatus(Lvendor/qti/hardware/radio/ims/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 2
    .param p0, "inBlockStatus"    # Lvendor/qti/hardware/radio/ims/BlockStatus;

    .line 1806
    if-nez p0, :cond_0

    .line 1807
    const/4 v0, 0x0

    return-object v0

    .line 1810
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/BlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockStatusInfo;-><init>()V

    .line 1812
    .local v0, "outBlockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    if-eqz v1, :cond_1

    .line 1813
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toBlockReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReason(I)V

    .line 1816
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReasonDetails:Lvendor/qti/hardware/radio/ims/BlockReasonDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toBlockReasonDetails(Lvendor/qti/hardware/radio/ims/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReasonDetails(Lorg/codeaurora/ims/BlockReasonDetailsInfo;)V

    .line 1818
    return-object v0
.end method

.method public static toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;
    .locals 10
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .line 1992
    if-nez p0, :cond_0

    .line 1993
    const/4 v0, 0x0

    return-object v0

    .line 1996
    :cond_0
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->priority:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toPriority(I)I

    move-result v0

    .line 1997
    .local v0, "priority":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    array-length v1, v1

    const-string v2, ""

    if-lez v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 1998
    .local v3, "subject":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/codeaurora/ims/CallComposerInfo$Location;->UNKNOWN:Lorg/codeaurora/ims/CallComposerInfo$Location;

    .line 1999
    .local v1, "location":Lorg/codeaurora/ims/CallComposerInfo$Location;
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->organization:[C

    if-eqz v4, :cond_2

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->organization:[C

    array-length v4, v4

    if-lez v4, :cond_2

    .line 2000
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->organization:[C

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move-object v6, v2

    .line 2001
    .local v6, "organization":Ljava/lang/String;
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallLocation;->radius:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    .line 2002
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toLocation(Lvendor/qti/hardware/radio/ims/CallLocation;)Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    .line 2001
    :cond_3
    move-object v7, v1

    .line 2004
    .end local v1    # "location":Lorg/codeaurora/ims/CallComposerInfo$Location;
    .local v7, "location":Lorg/codeaurora/ims/CallComposerInfo$Location;
    :goto_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2006
    .local v8, "imageUrl":Landroid/net/Uri;
    new-instance v9, Lorg/codeaurora/ims/CallComposerInfo;

    move-object v1, v9

    move v2, v0

    move-object v4, v8

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lorg/codeaurora/ims/CallComposerInfo;-><init>(ILjava/lang/String;Landroid/net/Uri;Lorg/codeaurora/ims/CallComposerInfo$Location;Ljava/lang/String;)V

    return-object v9
.end method

.method public static toCallDetails(Lvendor/qti/hardware/radio/ims/CallDetails;)Lorg/codeaurora/ims/CallDetails;
    .locals 5
    .param p0, "inCallDetails"    # Lvendor/qti/hardware/radio/ims/CallDetails;

    .line 1686
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    .line 1688
    .local v0, "outCallDetails":Lorg/codeaurora/ims/CallDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 1690
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    if-eqz v1, :cond_0

    .line 1691
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallDomain(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1694
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1695
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallSubstateConstants(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 1699
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    if-eq v1, v2, :cond_2

    .line 1700
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 1703
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1704
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1705
    iget-object v3, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    .line 1704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1708
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 1709
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 1711
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    if-eq v1, v2, :cond_4

    .line 1712
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 1715
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    if-eqz v1, :cond_5

    .line 1716
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRttMode(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 1719
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1720
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 1723
    :cond_6
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call Details = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1725
    return-object v0
.end method

.method public static toCallDomain(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 457
    packed-switch p0, :pswitch_data_0

    .line 469
    const/4 v0, 0x4

    return v0

    .line 465
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 463
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 461
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 459
    :pswitch_3
    const/16 v0, 0xb

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toCallForwardStatus([Lvendor/qti/hardware/radio/ims/CallForwardStatus;)[Lorg/codeaurora/ims/CallForwardStatus;
    .locals 8
    .param p0, "fromList"    # [Lvendor/qti/hardware/radio/ims/CallForwardStatus;

    .line 2522
    if-nez p0, :cond_0

    .line 2523
    const/4 v0, 0x0

    return-object v0

    .line 2526
    :cond_0
    array-length v0, p0

    .line 2527
    .local v0, "size":I
    new-array v1, v0, [Lorg/codeaurora/ims/CallForwardStatus;

    .line 2529
    .local v1, "toList":[Lorg/codeaurora/ims/CallForwardStatus;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2530
    aget-object v3, p0, v2

    .line 2531
    .local v3, "fromCfStatus":Lvendor/qti/hardware/radio/ims/CallForwardStatus;
    new-instance v4, Lorg/codeaurora/ims/CallForwardStatus;

    iget v5, v3, Lvendor/qti/hardware/radio/ims/CallForwardStatus;->reason:I

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardStatus;->status:I

    invoke-static {v6}, Lorg/codeaurora/ims/StableAidl;->toCfStatus(I)I

    move-result v6

    iget-object v7, v3, Lvendor/qti/hardware/radio/ims/CallForwardStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 2532
    invoke-static {v7}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/codeaurora/ims/CallForwardStatus;-><init>(IILandroid/telephony/ims/ImsReasonInfo;)V

    aput-object v4, v1, v2

    .line 2529
    .end local v3    # "fromCfStatus":Lvendor/qti/hardware/radio/ims/CallForwardStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2534
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static toCallForwardStatusInfo(Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;
    .locals 3
    .param p0, "imsRadioCFStatusInfo"    # Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;

    .line 2503
    new-instance v0, Lorg/codeaurora/ims/CallForwardStatusInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->status:[Lvendor/qti/hardware/radio/ims/CallForwardStatus;

    .line 2505
    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toCallForwardStatus([Lvendor/qti/hardware/radio/ims/CallForwardStatus;)[Lorg/codeaurora/ims/CallForwardStatus;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/CallForwardStatusInfo;-><init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V

    .line 2503
    return-object v0
.end method

.method public static toCallModify(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;
    .locals 3
    .param p0, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 1668
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1670
    .local v0, "callModify":Lorg/codeaurora/ims/CallModify;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallDetails(Lvendor/qti/hardware/radio/ims/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 1672
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callIndex:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 1673
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callIndex:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 1676
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1677
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->failCause:I

    if-eqz v1, :cond_1

    .line 1678
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->failCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallModifyFailCause(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1681
    :cond_1
    return-object v0
.end method

.method private static toCallModifyFailCause(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 1745
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1773
    return v0

    .line 1771
    :pswitch_0
    const/16 v0, 0x21

    return v0

    .line 1769
    :pswitch_1
    const/16 v0, 0x20

    return v0

    .line 1767
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    .line 1765
    :pswitch_3
    const/16 v0, 0x1e

    return v0

    .line 1763
    :pswitch_4
    const/16 v0, 0x1d

    return v0

    .line 1761
    :pswitch_5
    const/16 v0, 0x1c

    return v0

    .line 1759
    :pswitch_6
    const/16 v0, 0x1b

    return v0

    .line 1757
    :pswitch_7
    const/16 v0, 0x10

    return v0

    .line 1755
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 1753
    :pswitch_9
    const/4 v0, 0x6

    return v0

    .line 1751
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1749
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1747
    :pswitch_c
    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static toCallProgressInfo(Lvendor/qti/hardware/radio/ims/CallProgressInfo;Lorg/codeaurora/ims/CallProgressInfo;)V
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/CallProgressInfo;
    .param p1, "to"    # Lorg/codeaurora/ims/CallProgressInfo;

    .line 2291
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->type:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCallProgressInfoType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setType(I)V

    .line 2293
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonCode:I

    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_0

    .line 2294
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonCode:I

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setReasonCode(I)V

    .line 2297
    :cond_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2298
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setReasonText(Ljava/lang/String;)V

    .line 2300
    :cond_1
    return-void
.end method

.method private static toCallProgressInfoType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2273
    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    .line 2285
    return v0

    .line 2283
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 2281
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2279
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 2277
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 2275
    :pswitch_4
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

.method private static toCallState(I)Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1
    .param p0, "inCallState"    # I

    .line 2226
    packed-switch p0, :pswitch_data_0

    .line 2241
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2238
    :pswitch_0
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2236
    :pswitch_1
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2234
    :pswitch_2
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2232
    :pswitch_3
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2230
    :pswitch_4
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2228
    :pswitch_5
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toCallSubstateConstants(I)I
    .locals 1
    .param p0, "callSubstate"    # I

    .line 1729
    sparse-switch p0, :sswitch_data_0

    .line 1740
    const/4 v0, 0x0

    return v0

    .line 1737
    :sswitch_0
    const/16 v0, 0x8

    return v0

    .line 1735
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 1733
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 1731
    :sswitch_3
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static toCallType(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 1463
    packed-switch p0, :pswitch_data_0

    .line 1494
    const/16 v0, 0xa

    return v0

    .line 1469
    :pswitch_0
    const/16 v0, 0x1c

    return v0

    .line 1465
    :pswitch_1
    const/16 v0, 0x1a

    return v0

    .line 1467
    :pswitch_2
    const/16 v0, 0x1b

    return v0

    .line 1491
    :pswitch_3
    const/16 v0, 0x19

    return v0

    .line 1489
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 1487
    :pswitch_5
    const/16 v0, 0x18

    return v0

    .line 1485
    :pswitch_6
    const/16 v0, 0x17

    return v0

    .line 1483
    :pswitch_7
    const/16 v0, 0x16

    return v0

    .line 1481
    :pswitch_8
    const/16 v0, 0x15

    return v0

    .line 1479
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 1477
    :pswitch_a
    const/4 v0, 0x3

    return v0

    .line 1475
    :pswitch_b
    const/4 v0, 0x2

    return v0

    .line 1473
    :pswitch_c
    const/4 v0, 0x1

    return v0

    .line 1471
    :pswitch_d
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static toCallWaitingArray(Lvendor/qti/hardware/radio/ims/CallWaitingInfo;)[I
    .locals 5
    .param p0, "callWaitingInfo"    # Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .line 3410
    const/4 v0, 0x0

    .line 3412
    .local v0, "response":[I
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceStatus:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSuppSvcStatus(I)I

    move-result v1

    .line 3413
    .local v1, "outServiceStatus":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3414
    new-array v0, v2, [I

    .line 3415
    aput v3, v0, v3

    goto :goto_0

    .line 3417
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 3418
    aput v2, v0, v3

    .line 3419
    iget v3, p0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceClass:I

    aput v3, v0, v2

    .line 3421
    :goto_0
    return-object v0
.end method

.method private static toCfStatus(I)I
    .locals 1
    .param p0, "status"    # I

    .line 2509
    packed-switch p0, :pswitch_data_0

    .line 2514
    const/4 v0, 0x1

    return v0

    .line 2511
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static toCiWlanNotification(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 3496
    packed-switch p0, :pswitch_data_0

    .line 3501
    const/4 v0, 0x0

    return v0

    .line 3498
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static toClirArray(Lvendor/qti/hardware/radio/ims/ClirInfo;)[I
    .locals 4
    .param p0, "clirInfo"    # Lvendor/qti/hardware/radio/ims/ClirInfo;

    .line 3397
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3398
    .local v0, "response":[I
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 3399
    const/4 v1, 0x0

    iget v3, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    aput v3, v0, v1

    .line 3401
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramM:I

    if-eq v1, v2, :cond_1

    .line 3402
    const/4 v1, 0x1

    iget v2, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramM:I

    aput v2, v0, v1

    .line 3404
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClirResponse from ImsRadio. param_m - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "param_n - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3406
    return-object v0
.end method

.method private static toCodec(I)I
    .locals 1
    .param p0, "codec"    # I

    .line 2303
    packed-switch p0, :pswitch_data_0

    .line 2346
    const/4 v0, 0x0

    return v0

    .line 2343
    :pswitch_0
    const/16 v0, 0x14

    return v0

    .line 2341
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 2339
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 2337
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 2335
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 2333
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 2331
    :pswitch_6
    const/16 v0, 0xe

    return v0

    .line 2329
    :pswitch_7
    const/16 v0, 0xd

    return v0

    .line 2327
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 2325
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 2323
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 2321
    :pswitch_b
    const/16 v0, 0x9

    return v0

    .line 2319
    :pswitch_c
    const/16 v0, 0x8

    return v0

    .line 2317
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 2315
    :pswitch_e
    const/4 v0, 0x1

    return v0

    .line 2313
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 2311
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 2309
    :pswitch_11
    const/4 v0, 0x5

    return v0

    .line 2307
    :pswitch_12
    const/4 v0, 0x4

    return v0

    .line 2305
    :pswitch_13
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static toComputedAudioQuality(I)I
    .locals 1
    .param p0, "computedAudioQuality"    # I

    .line 2351
    packed-switch p0, :pswitch_data_0

    .line 2360
    const/4 v0, -0x1

    return v0

    .line 2357
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2355
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2353
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toConferenceCallState(I)I
    .locals 1
    .param p0, "conferenceCallState"    # I

    .line 1880
    packed-switch p0, :pswitch_data_0

    .line 1888
    const/4 v0, -0x1

    return v0

    .line 1886
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1884
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1882
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)Lorg/codeaurora/ims/ConfInfo;
    .locals 4
    .param p0, "conferenceInfo"    # Lvendor/qti/hardware/radio/ims/ConferenceInfo;

    .line 1651
    new-instance v0, Lorg/codeaurora/ims/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ConfInfo;-><init>()V

    .line 1653
    .local v0, "info":Lorg/codeaurora/ims/ConfInfo;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1654
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtils;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfInfoUri(Ljava/util/ArrayList;)V

    .line 1655
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefreshConferenceInfo: confUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1658
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->conferenceCallState:I

    if-eqz v1, :cond_1

    .line 1659
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->conferenceCallState:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toConferenceCallState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfCallState(I)V

    .line 1662
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefreshConferenceInfo: conferenceCallState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->conferenceCallState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1664
    return-object v0
.end method

.method public static toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;
    .locals 2
    .param p0, "configInfo"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 3384
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->hasBoolValue:Z

    if-eqz v0, :cond_0

    .line 3385
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->boolValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 3386
    :cond_0
    iget v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 3387
    iget v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 3388
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3389
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    return-object v0

    .line 3390
    :cond_2
    iget v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    if-eqz v0, :cond_3

    .line 3391
    iget v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsConfigErrorCode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 3393
    :cond_3
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toImsConfig(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;

    move-result-object v0

    return-object v0
.end method

.method private static toCrsData(Lvendor/qti/hardware/radio/ims/CrsData;Lorg/codeaurora/ims/CrsData;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/CrsData;
    .param p1, "to"    # Lorg/codeaurora/ims/CrsData;

    .line 2268
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CrsData;->type:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCrsType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CrsData;->setCrsType(I)V

    .line 2269
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CrsData;->originalCallType:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CrsData;->setOriginalCallType(I)V

    .line 2270
    return-void
.end method

.method private static toCrsType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2252
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2263
    return v0

    .line 2260
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 2258
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2256
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 2254
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IIIILjava/lang/String;Z)Lorg/codeaurora/ims/DriverCallIms;
    .locals 5
    .param p0, "ccInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p1, "ecnamInfo"    # Lorg/codeaurora/ims/EcnamInfo;
    .param p2, "verstatVerificationStatus"    # I
    .param p3, "autoRejectionCause"    # I
    .param p4, "SipErrorCode"    # I
    .param p5, "callType"    # I
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "isDcCall"    # Z

    .line 2084
    new-instance v0, Lorg/codeaurora/ims/VerstatInfo;

    .line 2085
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->toVerificationStatus(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/codeaurora/ims/VerstatInfo;-><init>(ZI)V

    .line 2086
    .local v0, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    new-instance v1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v1, p0, v0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;Lorg/codeaurora/ims/EcnamInfo;)V

    .line 2088
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsReasonInfoCode(I)I

    move-result v2

    .line 2089
    .local v2, "imsReasonInfoCode":I
    if-nez v2, :cond_0

    .line 2090
    const/16 v3, 0x640

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v2, v3

    .line 2091
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p4, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 2092
    new-instance v3, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v3}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2093
    iget-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-static {p5}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2094
    iput-object p6, v1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2095
    iput-boolean p7, v1, Lorg/codeaurora/ims/DriverCallIms;->isDcCall:Z

    .line 2096
    return-object v1
.end method

.method public static toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 10
    .param p0, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;

    .line 2043
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v1, :cond_0

    goto :goto_2

    .line 2046
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v1, :cond_1

    move-object v2, v0

    goto :goto_0

    .line 2047
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v1

    move-object v2, v1

    :goto_0
    nop

    .line 2048
    .local v2, "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    if-nez v1, :cond_2

    move-object v3, v0

    goto :goto_1

    .line 2049
    :cond_2
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toEcnamInfo(Lvendor/qti/hardware/radio/ims/EcnamInfo;)Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v0

    move-object v3, v0

    :goto_1
    nop

    .line 2051
    .local v3, "ecnamInfo":Lorg/codeaurora/ims/EcnamInfo;
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v4, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->verificationStatus:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v5, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->autoRejectionCause:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v6, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->sipErrorCode:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v7, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->callType:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget-object v8, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iget-boolean v9, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->isDcCall:Z

    invoke-static/range {v2 .. v9}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IIIILjava/lang/String;Z)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    return-object v0

    .line 2044
    .end local v2    # "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
    .end local v3    # "ecnamInfo":Lorg/codeaurora/ims/EcnamInfo;
    :cond_3
    :goto_2
    return-object v0
.end method

.method public static toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 9
    .param p0, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    .line 2100
    if-nez p0, :cond_0

    .line 2101
    const/4 v0, 0x0

    return-object v0

    .line 2104
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->verificationStatus:I

    iget v4, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->autoRejectionCause:I

    iget v5, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->sipErrorCode:I

    iget v6, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->callType:I

    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IIIILjava/lang/String;Z)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    return-object v0
.end method

.method public static toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 9
    .param p0, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;

    .line 2065
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2069
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 2070
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v0

    move-object v1, v0

    :goto_0
    nop

    .line 2072
    .local v1, "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
    const/4 v2, 0x0

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v3, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->verificationStatus:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v4, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->autoRejectionCause:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v5, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->sipErrorCode:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget v6, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->callType:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    iget-object v7, v0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IIIILjava/lang/String;Z)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    return-object v0

    .line 2066
    .end local v1    # "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 10
    .param p0, "call"    # Lvendor/qti/hardware/radio/ims/CallInfo;

    .line 2120
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    new-instance v1, Lorg/codeaurora/ims/VerstatInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/VerstatInfo;->canMarkUnwantedCall:Z

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/VerstatInfo;->verificationStatus:I

    .line 2121
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toVerificationStatus(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/codeaurora/ims/VerstatInfo;-><init>(ZI)V

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/VerstatInfo;)V

    .line 2122
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    if-eqz v1, :cond_0

    .line 2123
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallState(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 2126
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2127
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 2130
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    if-eq v1, v2, :cond_2

    .line 2131
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 2134
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 2135
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 2137
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    if-eq v1, v2, :cond_3

    .line 2138
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 2141
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 2143
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 2145
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->numberPresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 2147
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 2148
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->namePresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 2151
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 2153
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->tirMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->isTirOverwriteAllowed(I)Z

    move-result v1

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    .line 2155
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    iget-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/StableAidl;->toCrsData(Lvendor/qti/hardware/radio/ims/CrsData;Lorg/codeaurora/ims/CrsData;)V

    .line 2156
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isPreparatory:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 2158
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 2159
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->diversionInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 2161
    nop

    .line 2162
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVideoConfSupported:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    .line 2163
    :cond_4
    const/4 v1, 0x0

    :goto_0
    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 2165
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallDetails(Lvendor/qti/hardware/radio/ims/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2167
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2168
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget v3, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2170
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    iget-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/StableAidl;->toCallProgressInfo(Lvendor/qti/hardware/radio/ims/CallProgressInfo;Lorg/codeaurora/ims/CallProgressInfo;)V

    .line 2172
    const/4 v1, 0x0

    .line 2173
    .local v1, "imsReasonCode":I
    const/4 v3, 0x0

    .line 2174
    .local v3, "imsReasonExtraCode":I
    const/4 v4, 0x0

    .line 2175
    .local v4, "imsReasonExtraMessage":Ljava/lang/String;
    iget-object v5, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget v5, v5, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->failCause:I

    .line 2177
    .local v5, "failCause":I
    if-eqz v5, :cond_8

    .line 2178
    const/4 v6, 0x0

    .line 2180
    .local v6, "networkError":Ljava/lang/String;
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2181
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2182
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object v6, v7, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2183
    sget-object v7, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CallFailCauseResponse: error string = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2187
    :cond_5
    invoke-static {v5}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsReasonInfoCode(I)I

    move-result v1

    .line 2189
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-boolean v7, v7, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v7, v7, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    if-eq v7, v2, :cond_6

    .line 2191
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    move v3, v2

    .end local v3    # "imsReasonExtraCode":I
    .local v2, "imsReasonExtraCode":I
    goto :goto_1

    .line 2193
    .end local v2    # "imsReasonExtraCode":I
    .restart local v3    # "imsReasonExtraCode":I
    :cond_6
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v7, "CallFailCauseResponse has no int error code!"

    invoke-static {v2, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    :goto_1
    invoke-static {v5}, Lorg/codeaurora/ims/StableAidl;->toSipError(I)I

    move-result v2

    iput v2, v0, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    .line 2199
    if-eqz v6, :cond_7

    .line 2200
    move-object v2, v6

    move-object v4, v2

    .line 2202
    .end local v6    # "networkError":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 2203
    :cond_8
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v6, "CallFailCauseResponse failCause is Invalid"

    invoke-static {v2, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    :goto_2
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 2210
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 2212
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    if-eqz v6, :cond_9

    .line 2213
    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    iget v6, v6, Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;->additionalCode:I

    invoke-static {v6}, Lorg/codeaurora/ims/StableAidlErrorCode;->toMsimAdditionalCallInfoCode(I)I

    move-result v6

    goto :goto_3

    .line 2214
    :cond_9
    const/4 v6, -0x1

    .line 2212
    :goto_3
    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->setCode(I)V

    .line 2216
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->audioQuality:Lvendor/qti/hardware/radio/ims/AudioQuality;

    if-eqz v2, :cond_a

    .line 2217
    new-instance v2, Lorg/codeaurora/ims/AudioQuality;

    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->audioQuality:Lvendor/qti/hardware/radio/ims/AudioQuality;

    iget v6, v6, Lvendor/qti/hardware/radio/ims/AudioQuality;->codec:I

    invoke-static {v6}, Lorg/codeaurora/ims/StableAidl;->toCodec(I)I

    move-result v6

    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->audioQuality:Lvendor/qti/hardware/radio/ims/AudioQuality;

    iget v7, v7, Lvendor/qti/hardware/radio/ims/AudioQuality;->computedAudioQuality:I

    .line 2218
    invoke-static {v7}, Lorg/codeaurora/ims/StableAidl;->toComputedAudioQuality(I)I

    move-result v7

    invoke-direct {v2, v6, v7}, Lorg/codeaurora/ims/AudioQuality;-><init>(II)V

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 2221
    :cond_a
    iget v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->modemCallId:I

    iput v2, v0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    .line 2222
    return-object v0
.end method

.method public static toDriverCallImsArray([Lvendor/qti/hardware/radio/ims/CallInfo;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "callList"    # [Lvendor/qti/hardware/radio/ims/CallInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvendor/qti/hardware/radio/ims/CallInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;"
        }
    .end annotation

    .line 2110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2112
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2113
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v2

    .line 2114
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2116
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toEcnamInfo(Lvendor/qti/hardware/radio/ims/EcnamInfo;)Lorg/codeaurora/ims/EcnamInfo;
    .locals 5
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/EcnamInfo;

    .line 3474
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3475
    return-object v0

    .line 3478
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->name:Ljava/lang/String;

    .line 3479
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->iconUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 3480
    .local v2, "iconUrl":Landroid/net/Uri;
    :goto_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->infoUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->infoUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 3481
    .local v3, "infoUrl":Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->cardUrl:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/EcnamInfo;->cardUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3482
    .local v0, "cardUrl":Landroid/net/Uri;
    :cond_3
    new-instance v4, Lorg/codeaurora/ims/EcnamInfo;

    invoke-direct {v4, v1, v2, v3, v0}, Lorg/codeaurora/ims/EcnamInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v4
.end method

.method private static toExtraType(I)I
    .locals 1
    .param p0, "extraHo"    # I

    .line 1982
    packed-switch p0, :pswitch_data_0

    .line 1986
    const/4 v0, -0x1

    return v0

    .line 1984
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static toFacility(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 2665
    const/16 v0, 0x8

    packed-switch p0, :pswitch_data_0

    .line 2692
    return v0

    .line 2687
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 2685
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 2683
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 2681
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 2679
    :pswitch_4
    return v0

    .line 2677
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 2675
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 2673
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 2689
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 2671
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 2669
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 2667
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static toFrameworkVerstat(I)I
    .locals 1
    .param p0, "verstat"    # I

    .line 2999
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 3007
    return v0

    .line 3005
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 3003
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 3001
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toGeoLocationStatus(I)I
    .locals 1
    .param p0, "geoLocationDataStatus"    # I

    .line 2871
    const/16 v0, 0x7d3

    packed-switch p0, :pswitch_data_0

    .line 2881
    return v0

    .line 2877
    :pswitch_0
    const/16 v0, 0x7d2

    return v0

    .line 2875
    :pswitch_1
    const/16 v0, 0x7d1

    return v0

    .line 2873
    :pswitch_2
    const/16 v0, 0x7d0

    return v0

    .line 2879
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;
    .locals 3
    .param p0, "inHandover"    # Lvendor/qti/hardware/radio/ims/HandoverInfo;

    .line 1933
    if-nez p0, :cond_0

    .line 1934
    const/4 v0, 0x0

    return-object v0

    .line 1937
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/HoInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/HoInfo;-><init>()V

    .line 1939
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->type:I

    if-eqz v1, :cond_1

    .line 1940
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toHandoverType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setType(I)V

    .line 1943
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->srcTech:I

    if-eqz v1, :cond_2

    .line 1944
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->srcTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setSrcTech(I)V

    .line 1947
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->targetTech:I

    if-eqz v1, :cond_3

    .line 1948
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->targetTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setTargetTech(I)V

    .line 1951
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/Extra;->type:I

    if-eqz v1, :cond_4

    .line 1952
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/Extra;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toExtraType(I)I

    move-result v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/Extra;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/Extra;->extraInfo:[B

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/HoInfo;->setExtra(I[B)V

    .line 1956
    :cond_4
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorCode(Ljava/lang/String;)V

    .line 1957
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 1959
    return-object v0
.end method

.method public static toHandoverType(I)I
    .locals 1
    .param p0, "inType"    # I

    .line 1963
    packed-switch p0, :pswitch_data_0

    .line 1977
    const/4 v0, -0x1

    return v0

    .line 1973
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1975
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1971
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1969
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1967
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 1965
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toImsCallForwardInfo(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 2975
    packed-switch p0, :pswitch_data_0

    .line 2991
    const/4 v0, -0x1

    return v0

    .line 2987
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2985
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2983
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2981
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2979
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2977
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toImsCallForwardInfoList(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;
    .locals 13
    .param p0, "ss"    # Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;",
            "Landroid/telephony/ims/ImsSsData;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;"
        }
    .end annotation

    .line 3105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3106
    .local v0, "cfInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsCallForwardInfo;>;"
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cfData:[Lvendor/qti/hardware/radio/ims/CfData;

    if-nez v1, :cond_0

    .line 3107
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cfData is null, which is unexpected for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3108
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3107
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3110
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cfData:[Lvendor/qti/hardware/radio/ims/CfData;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 3111
    .local v1, "cfData":Lvendor/qti/hardware/radio/ims/CfData;
    iget-object v2, v1, Lvendor/qti/hardware/radio/ims/CfData;->cfInfo:[Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    array-length v2, v2

    .line 3112
    .local v2, "num":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3113
    iget-object v4, v1, Lvendor/qti/hardware/radio/ims/CfData;->cfInfo:[Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    aget-object v4, v4, v3

    .line 3114
    .local v4, "rCfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    new-instance v12, Landroid/telephony/ims/ImsCallForwardInfo;

    iget v5, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    .line 3115
    invoke-static {v5}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardInfo(I)I

    move-result v6

    iget v7, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    iget v8, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    iget v9, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    iget-object v10, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    iget v11, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    .line 3114
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3119
    sget-object v5, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SS Data] CF Info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    .end local v4    # "rCfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3122
    .end local v1    # "cfData":Lvendor/qti/hardware/radio/ims/CfData;
    .end local v2    # "num":I
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static toImsCallForwardTimerInfo([Lvendor/qti/hardware/radio/ims/CallForwardInfo;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    .locals 9
    .param p0, "inCfInfoList"    # [Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 2445
    const/4 v0, 0x0

    .line 2446
    .local v0, "outCfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    if-eqz p0, :cond_a

    .line 2447
    array-length v1, p0

    .line 2448
    .local v1, "infoListSize":I
    new-array v0, v1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 2449
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_9

    .line 2450
    new-instance v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v3, v0, v2

    .line 2451
    aget-object v3, p0, v2

    .line 2452
    .local v3, "inCfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    .line 2453
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 2455
    :cond_0
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    if-eq v4, v5, :cond_1

    .line 2456
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 2458
    :cond_1
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    if-eq v4, v5, :cond_2

    .line 2459
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 2461
    :cond_2
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    if-eq v4, v5, :cond_3

    .line 2462
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->toa:I

    .line 2464
    :cond_3
    aget-object v4, v0, v2

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 2465
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    if-eq v4, v5, :cond_4

    .line 2466
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->timeSeconds:I

    .line 2468
    :cond_4
    iget-object v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2469
    .local v4, "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;
    iget v6, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    if-eq v6, v5, :cond_5

    .line 2470
    aget-object v6, v0, v2

    iget v7, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    iput v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 2472
    :cond_5
    iget v6, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    if-eq v6, v5, :cond_6

    .line 2473
    aget-object v6, v0, v2

    iget v7, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    iput v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 2475
    :cond_6
    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2476
    .local v6, "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;
    iget v7, v6, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    if-eq v7, v5, :cond_7

    .line 2477
    aget-object v7, v0, v2

    iget v8, v6, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 2479
    :cond_7
    iget v7, v6, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    if-eq v7, v5, :cond_8

    .line 2480
    aget-object v5, v0, v2

    iget v7, v6, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    iput v7, v5, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 2449
    .end local v3    # "inCfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .end local v4    # "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;
    .end local v6    # "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2483
    .end local v1    # "infoListSize":I
    .end local v2    # "i":I
    :cond_9
    goto :goto_1

    .line 2484
    :cond_a
    const/4 v1, 0x0

    new-array v0, v1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 2485
    const-class v1, Lorg/codeaurora/ims/StableAidl;

    const-string v2, "inCfInfoList is null."

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2487
    :goto_1
    return-object v0
.end method

.method private static toImsConfig(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;
    .locals 3
    .param p0, "configInfo"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 1060
    if-nez p0, :cond_0

    .line 1061
    const/4 v0, 0x0

    return-object v0

    .line 1064
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 1065
    .local v0, "config":Lorg/codeaurora/ims/ImsConfigItem;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toImsConfigItem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 1066
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 1067
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 1070
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1071
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 1074
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 1076
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    if-eqz v1, :cond_3

    .line 1077
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsConfigErrorCode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    .line 1081
    :cond_3
    return-object v0
.end method

.method private static toImsConfigItem(I)I
    .locals 1
    .param p0, "item"    # I

    .line 1085
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1247
    :pswitch_0
    return v0

    .line 1245
    :pswitch_1
    const/16 v0, 0x50

    return v0

    .line 1243
    :pswitch_2
    const/16 v0, 0x4f

    return v0

    .line 1241
    :pswitch_3
    const/16 v0, 0x4e

    return v0

    .line 1239
    :pswitch_4
    const/16 v0, 0x4d

    return v0

    .line 1237
    :pswitch_5
    const/16 v0, 0x51

    return v0

    .line 1235
    :pswitch_6
    const/16 v0, 0x4b

    return v0

    .line 1233
    :pswitch_7
    const/16 v0, 0x4a

    return v0

    .line 1231
    :pswitch_8
    const/16 v0, 0x49

    return v0

    .line 1229
    :pswitch_9
    const/16 v0, 0x48

    return v0

    .line 1227
    :pswitch_a
    const/16 v0, 0x47

    return v0

    .line 1225
    :pswitch_b
    const/16 v0, 0x45

    return v0

    .line 1223
    :pswitch_c
    const/16 v0, 0x44

    return v0

    .line 1221
    :pswitch_d
    const/16 v0, 0x43

    return v0

    .line 1219
    :pswitch_e
    const/16 v0, 0x42

    return v0

    .line 1217
    :pswitch_f
    const/16 v0, 0x41

    return v0

    .line 1215
    :pswitch_10
    const/16 v0, 0x40

    return v0

    .line 1213
    :pswitch_11
    const/16 v0, 0x3f

    return v0

    .line 1211
    :pswitch_12
    const/16 v0, 0x3e

    return v0

    .line 1209
    :pswitch_13
    const/16 v0, 0x3d

    return v0

    .line 1207
    :pswitch_14
    const/16 v0, 0x3c

    return v0

    .line 1205
    :pswitch_15
    const/16 v0, 0x3b

    return v0

    .line 1203
    :pswitch_16
    const/16 v0, 0x3a

    return v0

    .line 1201
    :pswitch_17
    const/16 v0, 0x39

    return v0

    .line 1199
    :pswitch_18
    const/16 v0, 0x38

    return v0

    .line 1197
    :pswitch_19
    const/16 v0, 0x37

    return v0

    .line 1195
    :pswitch_1a
    const/16 v0, 0x36

    return v0

    .line 1193
    :pswitch_1b
    const/16 v0, 0x35

    return v0

    .line 1191
    :pswitch_1c
    const/16 v0, 0x34

    return v0

    .line 1189
    :pswitch_1d
    const/16 v0, 0x33

    return v0

    .line 1187
    :pswitch_1e
    const/16 v0, 0x32

    return v0

    .line 1185
    :pswitch_1f
    const/16 v0, 0x31

    return v0

    .line 1183
    :pswitch_20
    const/16 v0, 0x30

    return v0

    .line 1181
    :pswitch_21
    const/16 v0, 0x2f

    return v0

    .line 1179
    :pswitch_22
    const/16 v0, 0x2e

    return v0

    .line 1177
    :pswitch_23
    const/16 v0, 0x2d

    return v0

    .line 1175
    :pswitch_24
    const/16 v0, 0x2c

    return v0

    .line 1173
    :pswitch_25
    const/16 v0, 0x2b

    return v0

    .line 1171
    :pswitch_26
    const/16 v0, 0x2a

    return v0

    .line 1169
    :pswitch_27
    const/16 v0, 0x29

    return v0

    .line 1167
    :pswitch_28
    const/16 v0, 0x28

    return v0

    .line 1165
    :pswitch_29
    const/16 v0, 0x27

    return v0

    .line 1163
    :pswitch_2a
    const/16 v0, 0x26

    return v0

    .line 1161
    :pswitch_2b
    const/16 v0, 0x25

    return v0

    .line 1159
    :pswitch_2c
    const/16 v0, 0x24

    return v0

    .line 1157
    :pswitch_2d
    const/16 v0, 0x23

    return v0

    .line 1155
    :pswitch_2e
    const/16 v0, 0x22

    return v0

    .line 1153
    :pswitch_2f
    const/16 v0, 0x21

    return v0

    .line 1151
    :pswitch_30
    const/16 v0, 0x20

    return v0

    .line 1149
    :pswitch_31
    const/16 v0, 0x1f

    return v0

    .line 1147
    :pswitch_32
    const/16 v0, 0x1e

    return v0

    .line 1145
    :pswitch_33
    const/16 v0, 0x1d

    return v0

    .line 1143
    :pswitch_34
    const/16 v0, 0x1c

    return v0

    .line 1141
    :pswitch_35
    const/16 v0, 0x1b

    return v0

    .line 1139
    :pswitch_36
    const/16 v0, 0x1a

    return v0

    .line 1137
    :pswitch_37
    const/16 v0, 0x19

    return v0

    .line 1135
    :pswitch_38
    const/16 v0, 0x18

    return v0

    .line 1133
    :pswitch_39
    const/16 v0, 0x17

    return v0

    .line 1131
    :pswitch_3a
    const/16 v0, 0x16

    return v0

    .line 1129
    :pswitch_3b
    const/16 v0, 0x15

    return v0

    .line 1127
    :pswitch_3c
    const/16 v0, 0x14

    return v0

    .line 1125
    :pswitch_3d
    const/16 v0, 0x13

    return v0

    .line 1123
    :pswitch_3e
    const/16 v0, 0x12

    return v0

    .line 1121
    :pswitch_3f
    const/16 v0, 0x11

    return v0

    .line 1119
    :pswitch_40
    const/16 v0, 0x10

    return v0

    .line 1117
    :pswitch_41
    const/16 v0, 0xf

    return v0

    .line 1115
    :pswitch_42
    const/16 v0, 0xe

    return v0

    .line 1113
    :pswitch_43
    const/16 v0, 0xd

    return v0

    .line 1111
    :pswitch_44
    const/16 v0, 0xc

    return v0

    .line 1109
    :pswitch_45
    const/16 v0, 0xb

    return v0

    .line 1107
    :pswitch_46
    const/16 v0, 0xa

    return v0

    .line 1105
    :pswitch_47
    const/16 v0, 0x9

    return v0

    .line 1103
    :pswitch_48
    const/16 v0, 0x8

    return v0

    .line 1101
    :pswitch_49
    const/4 v0, 0x7

    return v0

    .line 1099
    :pswitch_4a
    const/4 v0, 0x6

    return v0

    .line 1097
    :pswitch_4b
    const/4 v0, 0x5

    return v0

    .line 1095
    :pswitch_4c
    const/4 v0, 0x4

    return v0

    .line 1093
    :pswitch_4d
    const/4 v0, 0x3

    return v0

    .line 1091
    :pswitch_4e
    const/4 v0, 0x2

    return v0

    .line 1089
    :pswitch_4f
    const/4 v0, 0x1

    return v0

    .line 1087
    :pswitch_50
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
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
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;
    .locals 3
    .param p0, "inRegistration"    # Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 1368
    if-nez p0, :cond_0

    .line 1369
    const/4 v0, 0x0

    return-object v0

    .line 1372
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsRegistrationInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsRegistrationInfo;-><init>()V

    .line 1373
    .local v0, "outRegistration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->state:I

    if-eqz v1, :cond_1

    .line 1374
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRegState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setState(I)V

    .line 1377
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1378
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorCode:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorCode(I)V

    .line 1381
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 1383
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->radioTech:I

    if-eqz v1, :cond_3

    .line 1384
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setRadioTech(I)V

    .line 1387
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setPAssociatedUris(Ljava/lang/String;)V

    .line 1389
    return-object v0
.end method

.method public static toImsSsData(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)Landroid/telephony/ims/ImsSsData;
    .locals 7
    .param p0, "ss"    # Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;

    .line 3182
    new-instance v6, Landroid/telephony/ims/ImsSsData$Builder;

    iget v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceType:I

    .line 3183
    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toServiceType(I)I

    move-result v1

    iget v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->requestType:I

    .line 3184
    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toRequestType(I)I

    move-result v2

    iget v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->teleserviceType:I

    .line 3185
    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toTeleserviceType(I)I

    move-result v3

    iget v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceClass:I

    iget v5, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->result:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsSsData$Builder;-><init>(IIIII)V

    .line 3187
    .local v0, "ssDataBuilder":Landroid/telephony/ims/ImsSsData$Builder;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData$Builder;->build()Landroid/telephony/ims/ImsSsData;

    move-result-object v1

    .line 3189
    .local v1, "ssData":Landroid/telephony/ims/ImsSsData;
    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData;->isTypeCf()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3190
    invoke-static {p0, v1}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardInfoList(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;

    move-result-object v2

    .line 3191
    .local v2, "cfInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsCallForwardInfo;>;"
    if-eqz v2, :cond_0

    .line 3192
    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsSsData$Builder;->setCallForwardingInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    .line 3194
    .end local v2    # "cfInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsCallForwardInfo;>;"
    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData;->isTypeIcb()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3195
    invoke-static {p0, v1}, Lorg/codeaurora/ims/StableAidl;->toImsSsInfoListCb(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;

    move-result-object v2

    .line 3196
    .local v2, "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    if-eqz v2, :cond_2

    .line 3197
    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsSsData$Builder;->setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    .line 3199
    .end local v2    # "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    :cond_2
    goto :goto_0

    .line 3206
    :cond_3
    invoke-static {p0, v1}, Lorg/codeaurora/ims/StableAidl;->toImsSsInfoList(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;

    move-result-object v2

    .line 3207
    .restart local v2    # "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    if-eqz v2, :cond_4

    .line 3208
    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsSsData$Builder;->setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    .line 3211
    .end local v2    # "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    :cond_4
    :goto_0
    return-object v1
.end method

.method public static toImsSsInfoList(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;
    .locals 7
    .param p0, "ss"    # Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;",
            "Landroid/telephony/ims/ImsSsData;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation

    .line 3148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3149
    .local v0, "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->ssInfoData:[Lvendor/qti/hardware/radio/ims/SsInfoData;

    if-nez v1, :cond_0

    .line 3150
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsSsInfo is null, which is unexpected for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3151
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3150
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3153
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->ssInfoData:[Lvendor/qti/hardware/radio/ims/SsInfoData;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 3154
    .local v1, "ssInfoData":Lvendor/qti/hardware/radio/ims/SsInfoData;
    iget-object v3, v1, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    array-length v3, v3

    .line 3155
    .local v3, "num":I
    if-lez v3, :cond_3

    .line 3156
    new-instance v4, Landroid/telephony/ims/ImsSsInfo$Builder;

    iget-object v5, v1, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget v5, v5, v2

    invoke-direct {v4, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 3158
    .local v4, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeClir()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3160
    iget-object v5, v1, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget v2, v5, v2

    invoke-virtual {v4, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 3161
    if-le v3, v6, :cond_2

    .line 3162
    iget-object v2, v1, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget v2, v2, v6

    invoke-virtual {v4, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    goto :goto_0

    .line 3164
    :cond_1
    if-le v3, v6, :cond_2

    .line 3165
    iget-object v2, v1, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget v2, v2, v6

    invoke-virtual {v4, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 3167
    :cond_2
    :goto_0
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3170
    .end local v1    # "ssInfoData":Lvendor/qti/hardware/radio/ims/SsInfoData;
    .end local v3    # "num":I
    .end local v4    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static toImsSsInfoListCb(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;
    .locals 7
    .param p0, "ss"    # Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;",
            "Landroid/telephony/ims/ImsSsData;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsSsInfo;",
            ">;"
        }
    .end annotation

    .line 3127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3128
    .local v0, "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    if-nez v1, :cond_0

    .line 3129
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cbNumInfo is null, which is unexpected for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3130
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3129
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3132
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    array-length v1, v1

    .line 3133
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3134
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aget-object v4, v4, v2

    iget v4, v4, Lvendor/qti/hardware/radio/ims/CbNumInfo;->status:I

    invoke-direct {v3, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 3137
    .local v3, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aget-object v4, v4, v2

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 3139
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3140
    sget-object v4, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SS Data] ICB Info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    .end local v3    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3143
    .end local v1    # "num":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;
    .locals 3
    .param p0, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 1306
    if-nez p0, :cond_0

    .line 1307
    const/4 v0, 0x0

    return-object v0

    .line 1310
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;-><init>()V

    .line 1311
    .local v0, "subConfig":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->simultStackCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1312
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->simultStackCount:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSubConfigDetails;->setSimultStackCount(I)V

    .line 1315
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->imsStackEnabled:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1316
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->imsStackEnabled:[Z

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSubConfigDetails;->addImsStackEnabled(Z)V

    .line 1315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1319
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)Lorg/codeaurora/ims/sms/IncomingSms;
    .locals 4
    .param p0, "imsSms"    # Lvendor/qti/hardware/radio/ims/IncomingSms;

    .line 3012
    iget v0, p0, Lvendor/qti/hardware/radio/ims/IncomingSms;->verstat:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toFrameworkVerstat(I)I

    move-result v0

    .line 3013
    .local v0, "verstat":I
    new-instance v1, Lorg/codeaurora/ims/sms/IncomingSms;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IncomingSms;->format:Ljava/lang/String;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/IncomingSms;->pdu:[B

    invoke-direct {v1, v2, v3, v0}, Lorg/codeaurora/ims/sms/IncomingSms;-><init>(Ljava/lang/String;[BI)V

    return-object v1
.end method

.method public static toIpPresentation(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 1280
    packed-switch p0, :pswitch_data_0

    .line 1287
    const/4 v0, 0x2

    return v0

    .line 1284
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1282
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toLocation(Lvendor/qti/hardware/radio/ims/CallLocation;)Lorg/codeaurora/ims/CallComposerInfo$Location;
    .locals 7
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/CallLocation;

    .line 2011
    new-instance v6, Lorg/codeaurora/ims/CallComposerInfo$Location;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallLocation;->radius:F

    iget-wide v2, p0, Lvendor/qti/hardware/radio/ims/CallLocation;->latitude:D

    iget-wide v4, p0, Lvendor/qti/hardware/radio/ims/CallLocation;->longitude:D

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/CallComposerInfo$Location;-><init>(FDD)V

    .line 2014
    .local v0, "location":Lorg/codeaurora/ims/CallComposerInfo$Location;
    return-object v0
.end method

.method private static toMessageDetails(Lvendor/qti/hardware/radio/ims/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    .locals 2
    .param p0, "details"    # Lvendor/qti/hardware/radio/ims/MessageDetails;

    .line 3333
    if-nez p0, :cond_0

    .line 3334
    const/4 v0, 0x0

    return-object v0

    .line 3337
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    .line 3339
    .local v0, "mwiMessageDetails":Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3340
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->toAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 3343
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3344
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->fromAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 3347
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3348
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->subject:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 3351
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3352
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->date:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 3355
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->priority:I

    if-eqz v1, :cond_5

    .line 3356
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->priority:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toMwiMessagePriority(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 3359
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3360
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 3363
    :cond_6
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->type:I

    if-eqz v1, :cond_7

    .line 3364
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toMwiMessageType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    .line 3366
    :cond_7
    return-object v0
.end method

.method private static toMessageSummary(Lvendor/qti/hardware/radio/ims/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    .locals 3
    .param p0, "summary"    # Lvendor/qti/hardware/radio/ims/MessageSummary;

    .line 3284
    if-nez p0, :cond_0

    .line 3285
    const/4 v0, 0x0

    return-object v0

    .line 3288
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    .line 3290
    .local v0, "mwiMessageSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->type:I

    if-eqz v1, :cond_1

    .line 3291
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toMwiMessageType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 3294
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newMessageCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 3295
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 3298
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldMessageCount:I

    if-eq v1, v2, :cond_3

    .line 3299
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 3302
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newUrgentMessageCount:I

    if-eq v1, v2, :cond_4

    .line 3303
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 3306
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldUrgentMessageCount:I

    if-eq v1, v2, :cond_5

    .line 3307
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    .line 3309
    :cond_5
    return-object v0
.end method

.method public static toMessageWaitingIndication(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;
    .locals 9
    .param p0, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;

    .line 3253
    const-class v0, Lorg/codeaurora/ims/StableAidl;

    if-nez p0, :cond_0

    .line 3254
    const/4 v0, 0x0

    return-object v0

    .line 3257
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v1}, Lorg/codeaurora/ims/Mwi;-><init>()V

    .line 3258
    .local v1, "mwi":Lorg/codeaurora/ims/Mwi;
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageSummary:[Lvendor/qti/hardware/radio/ims/MessageSummary;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 3259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toMessageWaitingIndication summaryLength = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageSummary:[Lvendor/qti/hardware/radio/ims/MessageSummary;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3261
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageSummary:[Lvendor/qti/hardware/radio/ims/MessageSummary;

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 3262
    .local v6, "summary":Lvendor/qti/hardware/radio/ims/MessageSummary;
    if-eqz v6, :cond_1

    .line 3263
    iget-object v7, v1, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-static {v6}, Lorg/codeaurora/ims/StableAidl;->toMessageSummary(Lvendor/qti/hardware/radio/ims/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3261
    .end local v6    # "summary":Lvendor/qti/hardware/radio/ims/MessageSummary;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3267
    :cond_2
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    .line 3268
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3269
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    iput-object v2, v1, Lorg/codeaurora/ims/Mwi;->mUeAddress:Ljava/lang/String;

    .line 3271
    :cond_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageDetails:[Lvendor/qti/hardware/radio/ims/MessageDetails;

    if-eqz v2, :cond_5

    .line 3272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toMessageWaitingIndication detailsLength = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageDetails:[Lvendor/qti/hardware/radio/ims/MessageDetails;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3274
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageDetails:[Lvendor/qti/hardware/radio/ims/MessageDetails;

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 3275
    .local v4, "details":Lvendor/qti/hardware/radio/ims/MessageDetails;
    if-eqz v4, :cond_4

    .line 3276
    iget-object v5, v1, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:Ljava/util/List;

    invoke-static {v4}, Lorg/codeaurora/ims/StableAidl;->toMessageDetails(Lvendor/qti/hardware/radio/ims/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3274
    .end local v4    # "details":Lvendor/qti/hardware/radio/ims/MessageDetails;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3280
    :cond_5
    return-object v1
.end method

.method public static toMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 553
    new-instance v0, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->msisdn:Ljava/lang/String;

    iget v2, p0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->lineType:I

    iget v3, p0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->registrationStatus:I

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Ljava/lang/String;II)V

    .line 555
    .local v0, "to":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    return-object v0
.end method

.method public static toMultiIdentityLineInfoList([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "info"    # [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;"
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v0, "linesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 545
    .local v3, "line":Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v4

    .line 546
    .local v4, "lineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .end local v3    # "line":Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .end local v4    # "lineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    :cond_0
    return-object v0
.end method

.method public static toMultiSimVoiceCapability(I)I
    .locals 2
    .param p0, "voiceCapability"    # I

    .line 3458
    packed-switch p0, :pswitch_data_0

    .line 3468
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v1, "toMultiSimVoiceCapability: Invalid voice capability"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    const/4 v0, 0x0

    return v0

    .line 3462
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 3464
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 3460
    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toMwiMessagePriority(I)I
    .locals 1
    .param p0, "type"    # I

    .line 3370
    packed-switch p0, :pswitch_data_0

    .line 3379
    const/4 v0, -0x1

    return v0

    .line 3376
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 3374
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 3372
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toMwiMessageType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 3313
    packed-switch p0, :pswitch_data_0

    .line 3328
    const/4 v0, -0x1

    return v0

    .line 3325
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 3323
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 3321
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 3319
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 3317
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 3315
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toParticipantStatus(I)I
    .locals 1
    .param p0, "type"    # I

    .line 1921
    packed-switch p0, :pswitch_data_0

    .line 1927
    const/4 v0, -0x1

    return v0

    .line 1925
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1923
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toParticipantStatus(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;
    .locals 3
    .param p0, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;

    .line 1895
    if-nez p0, :cond_0

    .line 1896
    const/4 v0, 0x0

    return-object v0

    .line 1899
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;-><init>()V

    .line 1901
    .local v0, "participantStatus":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->callId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1902
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->callId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setCallId(I)V

    .line 1905
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->operation:I

    if-eqz v1, :cond_2

    .line 1906
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->operation:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toParticipantStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setOperation(I)V

    .line 1909
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setParticipantUri(Ljava/lang/String;)V

    .line 1911
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->sipStatus:I

    if-eq v1, v2, :cond_3

    .line 1912
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->sipStatus:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setSipStatus(I)V

    .line 1915
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->isEct:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setIsEct(Z)V

    .line 1917
    return-object v0
.end method

.method public static toPreAlertingInfo(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)Lorg/codeaurora/ims/PreAlertingCallInfo;
    .locals 7
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;

    .line 3487
    if-nez p0, :cond_0

    .line 3488
    const/4 v0, 0x0

    return-object v0

    .line 3491
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/PreAlertingCallInfo;

    iget v2, p0, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->callId:I

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v3

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    .line 3492
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toEcnamInfo(Lvendor/qti/hardware/radio/ims/EcnamInfo;)Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v4

    iget v5, p0, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->modemCallId:I

    iget-boolean v6, p0, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->isDcCall:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V

    .line 3491
    return-object v0
.end method

.method private static toPriority(I)I
    .locals 1
    .param p0, "priority"    # I

    .line 2018
    packed-switch p0, :pswitch_data_0

    .line 2022
    const/4 v0, 0x1

    return v0

    .line 2020
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static toRadioState(I)Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    .locals 2
    .param p0, "radioState"    # I

    .line 1637
    packed-switch p0, :pswitch_data_0

    .line 1645
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v1, "toRadioState: Invalid Radio State Change"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0

    .line 1643
    :pswitch_0
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0

    .line 1641
    :pswitch_1
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0

    .line 1639
    :pswitch_2
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toRadioTech(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 1555
    packed-switch p0, :pswitch_data_0

    .line 1603
    const v0, 0x7fffffff

    return v0

    .line 1601
    :pswitch_0
    const/16 v0, 0x15

    return v0

    .line 1599
    :pswitch_1
    const/16 v0, 0x14

    return v0

    .line 1597
    :pswitch_2
    const/16 v0, 0x13

    return v0

    .line 1595
    :pswitch_3
    const/16 v0, 0x12

    return v0

    .line 1593
    :pswitch_4
    const/16 v0, 0x11

    return v0

    .line 1591
    :pswitch_5
    const/16 v0, 0x10

    return v0

    .line 1589
    :pswitch_6
    const/16 v0, 0xf

    return v0

    .line 1587
    :pswitch_7
    const/16 v0, 0xe

    return v0

    .line 1585
    :pswitch_8
    const/16 v0, 0xd

    return v0

    .line 1583
    :pswitch_9
    const/16 v0, 0xc

    return v0

    .line 1581
    :pswitch_a
    const/16 v0, 0xb

    return v0

    .line 1579
    :pswitch_b
    const/16 v0, 0xa

    return v0

    .line 1577
    :pswitch_c
    const/16 v0, 0x9

    return v0

    .line 1575
    :pswitch_d
    const/16 v0, 0x8

    return v0

    .line 1573
    :pswitch_e
    const/4 v0, 0x7

    return v0

    .line 1571
    :pswitch_f
    const/4 v0, 0x6

    return v0

    .line 1569
    :pswitch_10
    const/4 v0, 0x5

    return v0

    .line 1567
    :pswitch_11
    const/4 v0, 0x4

    return v0

    .line 1565
    :pswitch_12
    const/4 v0, 0x3

    return v0

    .line 1563
    :pswitch_13
    const/4 v0, 0x2

    return v0

    .line 1561
    :pswitch_14
    const/4 v0, 0x1

    return v0

    .line 1559
    :pswitch_15
    const/4 v0, 0x0

    return v0

    .line 1557
    :pswitch_16
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static toRegFailureReason(I)I
    .locals 1
    .param p0, "inRegFailureReasonType"    # I

    .line 1853
    packed-switch p0, :pswitch_data_0

    .line 1875
    const/4 v0, -0x1

    return v0

    .line 1871
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 1869
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 1867
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 1865
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 1863
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 1861
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 1859
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 1857
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 1855
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 1873
    :pswitch_9
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static toRegState(I)I
    .locals 1
    .param p0, "state"    # I

    .line 1342
    packed-switch p0, :pswitch_data_0

    .line 1350
    const/4 v0, -0x1

    return v0

    .line 1346
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1348
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1344
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    .locals 2
    .param p0, "halRegBlockStatus"    # Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;

    .line 1790
    new-instance v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;-><init>()V

    .line 1792
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWwan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWwan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    if-eqz v1, :cond_0

    .line 1794
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWwan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toBlockStatus(Lvendor/qti/hardware/radio/ims/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWwan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 1797
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWlan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWlan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    if-eqz v1, :cond_1

    .line 1799
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWlan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toBlockStatus(Lvendor/qti/hardware/radio/ims/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWlan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 1802
    :cond_1
    return-object v0
.end method

.method public static toRequestType(I)I
    .locals 1
    .param p0, "requestType"    # I

    .line 2939
    packed-switch p0, :pswitch_data_0

    .line 2952
    const/4 v0, -0x1

    return v0

    .line 2949
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2947
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2945
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2943
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 2941
    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toRingbackTone(I)I
    .locals 1
    .param p0, "tone"    # I

    .line 1778
    packed-switch p0, :pswitch_data_0

    .line 1784
    const/4 v0, 0x0

    return v0

    .line 1780
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static toRttMode(I)I
    .locals 1
    .param p0, "rttMode"    # I

    .line 484
    packed-switch p0, :pswitch_data_0

    .line 489
    const/4 v0, 0x0

    return v0

    .line 486
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static toServiceClassProvisionStatus(I)I
    .locals 1
    .param p0, "inServiceProvisionStatus"    # I

    .line 861
    packed-switch p0, :pswitch_data_0

    .line 867
    const/4 v0, 0x2

    return v0

    .line 865
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 863
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toServiceClassStatus(I)I
    .locals 1
    .param p0, "inServiceStatus"    # I

    .line 850
    packed-switch p0, :pswitch_data_0

    .line 856
    const/4 v0, -0x1

    return v0

    .line 852
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 854
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toServiceDomain(I)I
    .locals 1
    .param p0, "domain"    # I

    .line 3227
    packed-switch p0, :pswitch_data_0

    .line 3237
    const/4 v0, 0x0

    return v0

    .line 3235
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 3233
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 3231
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 3229
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toServiceStatus([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "inList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;"
        }
    .end annotation

    .line 1394
    if-nez p0, :cond_0

    .line 1395
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v1, "inList is null."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const/4 v0, 0x0

    return-object v0

    .line 1399
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v0

    .line 1400
    .local v0, "outList":[Lorg/codeaurora/ims/ServiceStatus;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1402
    .local v1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    return-object v1
.end method

.method private static toServiceStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Lorg/codeaurora/ims/ServiceStatus;
    .locals 6
    .param p0, "fromInfo"    # Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 1426
    new-instance v0, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    .line 1427
    .local v0, "toInfo":Lorg/codeaurora/ims/ServiceStatus;
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->isValid:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 1428
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 1429
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    array-length v1, v1

    const v2, 0x7fffffff

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 1430
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    goto :goto_0

    .line 1432
    :cond_0
    new-array v1, v3, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 1433
    iget-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 1435
    iget-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v5

    .line 1436
    .local v1, "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/16 v4, 0xe

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1438
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    if-eqz v4, :cond_1

    .line 1439
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    invoke-static {v4}, Lorg/codeaurora/ims/StableAidl;->toStatusType(I)I

    move-result v4

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 1441
    :cond_1
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    if-eq v4, v2, :cond_2

    .line 1442
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 1446
    .end local v1    # "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_2
    :goto_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    if-eqz v1, :cond_3

    .line 1447
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toStatusType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 1450
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    if-eqz v1, :cond_4

    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1453
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v2, "Partially Enabled Status due to Restrict Cause"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1454
    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 1457
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->rttMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRttMode(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    .line 1459
    return-object v0
.end method

.method public static toServiceType(I)I
    .locals 1
    .param p0, "serviceType"    # I

    .line 2886
    packed-switch p0, :pswitch_data_0

    .line 2935
    const/4 v0, -0x1

    return v0

    .line 2932
    :pswitch_0
    const/16 v0, 0x16

    return v0

    .line 2930
    :pswitch_1
    const/16 v0, 0x15

    return v0

    .line 2928
    :pswitch_2
    const/16 v0, 0x14

    return v0

    .line 2926
    :pswitch_3
    const/16 v0, 0x13

    return v0

    .line 2924
    :pswitch_4
    const/16 v0, 0x12

    return v0

    .line 2922
    :pswitch_5
    const/16 v0, 0x11

    return v0

    .line 2920
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 2918
    :pswitch_7
    const/16 v0, 0xf

    return v0

    .line 2916
    :pswitch_8
    const/16 v0, 0xe

    return v0

    .line 2914
    :pswitch_9
    const/16 v0, 0xd

    return v0

    .line 2912
    :pswitch_a
    const/16 v0, 0xc

    return v0

    .line 2910
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 2908
    :pswitch_c
    const/16 v0, 0xa

    return v0

    .line 2906
    :pswitch_d
    const/16 v0, 0x9

    return v0

    .line 2904
    :pswitch_e
    const/16 v0, 0x8

    return v0

    .line 2902
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 2900
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 2898
    :pswitch_11
    const/4 v0, 0x5

    return v0

    .line 2896
    :pswitch_12
    const/4 v0, 0x4

    return v0

    .line 2894
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 2892
    :pswitch_14
    const/4 v0, 0x2

    return v0

    .line 2890
    :pswitch_15
    const/4 v0, 0x1

    return v0

    .line 2888
    :pswitch_16
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static toSipError(I)I
    .locals 1
    .param p0, "callFailCause"    # I

    .line 2365
    packed-switch p0, :pswitch_data_0

    .line 2387
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2385
    :pswitch_1
    const/16 v0, 0x244

    return v0

    .line 2383
    :pswitch_2
    const/16 v0, 0x201

    return v0

    .line 2381
    :pswitch_3
    const/16 v0, 0x1f9

    return v0

    .line 2379
    :pswitch_4
    const/16 v0, 0x1f7

    return v0

    .line 2377
    :pswitch_5
    const/16 v0, 0x1f6

    return v0

    .line 2375
    :pswitch_6
    const/16 v0, 0x1f5

    return v0

    .line 2373
    :pswitch_7
    const/16 v0, 0x1f4

    return v0

    .line 2371
    :pswitch_8
    const/16 v0, 0x1e0

    return v0

    .line 2369
    :pswitch_9
    const/16 v0, 0x198

    return v0

    .line 2367
    :pswitch_a
    const/16 v0, 0x193

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x204
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 5
    .param p0, "errorInfo"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 1292
    const/4 v0, 0x0

    .line 1293
    .local v0, "imsReasonCode":I
    const/4 v1, 0x0

    .line 1294
    .local v1, "imsReasonExtraCode":I
    if-nez p0, :cond_0

    .line 1295
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v2

    .line 1297
    :cond_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 1298
    .local v2, "imsReasonExtraMessage":Ljava/lang/String;
    iget v3, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    .line 1299
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    .line 1301
    :cond_1
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v3
.end method

.method public static toSmsCallBackMode(I)I
    .locals 1
    .param p0, "mode"    # I

    .line 3242
    packed-switch p0, :pswitch_data_0

    .line 3247
    const/4 v0, 0x0

    return v0

    .line 3244
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static toSmsResponse(IIII)Lorg/codeaurora/ims/sms/SmsResponse;
    .locals 3
    .param p0, "messageRef"    # I
    .param p1, "smsStatusResult"    # I
    .param p2, "failureCause"    # I
    .param p3, "networkErrorCode"    # I

    .line 174
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSmsSendStatus(I)I

    move-result v0

    .line 175
    .local v0, "statusResult":I
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toSmsManagerError(I)I

    move-result v1

    .line 176
    .local v1, "reason":I
    new-instance v2, Lorg/codeaurora/ims/sms/SmsResponse;

    invoke-direct {v2, p0, v0, v1, p3}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(IIII)V

    return-object v2
.end method

.method private static toSmsSendStatus(I)I
    .locals 1
    .param p0, "hidlResult"    # I

    .line 180
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 190
    return v0

    .line 188
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 186
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 184
    :pswitch_2
    return v0

    .line 182
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toStatusForAccessTech(Lvendor/qti/hardware/radio/ims/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 3
    .param p0, "inStatus"    # Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    .line 1526
    const/4 v0, 0x0

    .line 1528
    .local v0, "outStatus":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    if-eqz p0, :cond_4

    .line 1529
    new-instance v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    move-object v0, v1

    .line 1530
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->networkMode:I

    if-eqz v1, :cond_0

    .line 1531
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->networkMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1534
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->status:I

    if-eqz v1, :cond_1

    .line 1535
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toStatusType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 1538
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->restrictCause:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1539
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 1542
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->hasRegistration:Z

    if-eqz v1, :cond_4

    .line 1543
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    if-eqz v1, :cond_3

    .line 1545
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRegState(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    goto :goto_0

    .line 1547
    :cond_3
    const/4 v1, 0x2

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 1551
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static toStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;
    .locals 4
    .param p0, "report"    # Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;

    .line 2995
    new-instance v0, Lorg/codeaurora/ims/sms/StatusReport;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->messageRef:I

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->format:Ljava/lang/String;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->pdu:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/sms/StatusReport;-><init>(ILjava/lang/String;[B)V

    return-object v0
.end method

.method private static toStatusType(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1608
    packed-switch p0, :pswitch_data_0

    .line 1617
    const/4 v0, 0x3

    return v0

    .line 1614
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1612
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1610
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toSuppNotifyInfo(I)I
    .locals 1
    .param p0, "inNotificationType"    # I

    .line 2815
    packed-switch p0, :pswitch_data_0

    .line 2821
    const v0, 0x7fffffff

    return v0

    .line 2819
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2817
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toSuppNotifyInfo(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;
    .locals 3
    .param p0, "inNotification"    # Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    .line 2786
    if-nez p0, :cond_0

    .line 2787
    const/4 v0, 0x0

    return-object v0

    .line 2789
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppNotifyInfo;-><init>()V

    .line 2790
    .local v0, "outNotification":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->notificationType:I

    if-eqz v1, :cond_1

    .line 2791
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->notificationType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSuppNotifyInfo(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNotificationType(I)V

    .line 2794
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->code:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 2795
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setCode(I)V

    .line 2797
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->index:I

    if-eq v1, v2, :cond_3

    .line 2798
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setIndex(I)V

    .line 2800
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->type:I

    if-eq v1, v2, :cond_4

    .line 2801
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->type:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setType(I)V

    .line 2803
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->connId:I

    if-eq v1, v2, :cond_5

    .line 2804
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->connId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setConnId(I)V

    .line 2806
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNumber(Ljava/lang/String;)V

    .line 2807
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHistoryInfo(Ljava/lang/String;)V

    .line 2808
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->hasHoldTone:Z

    if-eqz v1, :cond_6

    .line 2809
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->holdTone:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHoldTone(Z)V

    .line 2811
    :cond_6
    return-object v0
.end method

.method public static toSuppService(Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;)Lorg/codeaurora/ims/SuppService;
    .locals 5
    .param p0, "clipProvisionStatus"    # Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;

    .line 1252
    const-class v0, Lorg/codeaurora/ims/StableAidl;

    new-instance v1, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v1}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 1253
    .local v1, "clipProvStatus":Lorg/codeaurora/ims/SuppService;
    iget v2, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->clipStatus:I

    .line 1254
    .local v2, "clipStatus":I
    if-eqz v2, :cond_0

    .line 1255
    iget v3, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->clipStatus:I

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toSuppServiceStatus(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 1256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toSuppService. Clipstatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    :cond_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toSuppService. Errorcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "String "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1264
    return-object v1
.end method

.method public static toSuppService(Lvendor/qti/hardware/radio/ims/ColrInfo;)Lorg/codeaurora/ims/SuppService;
    .locals 5
    .param p0, "colrInfo"    # Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 831
    new-instance v0, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 833
    .local v0, "colrValue":Lorg/codeaurora/ims/SuppService;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setServiceClassStatus(I)V

    .line 834
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->provisionStatus:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassProvisionStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setProvisionStatus(I)V

    .line 835
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 837
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->presentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toIpPresentation(I)I

    move-result v1

    .line 838
    .local v1, "presentation":I
    if-eqz v1, :cond_0

    .line 839
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setPresentation(I)V

    .line 840
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColrResponse from ImsRadio. presentation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    :cond_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 844
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColrResponse from ImsRadio. errorcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    return-object v0
.end method

.method private static toSuppServiceStatus(I)I
    .locals 1
    .param p0, "clipStatus"    # I

    .line 1268
    packed-switch p0, :pswitch_data_0

    .line 1275
    const/4 v0, 0x2

    return v0

    .line 1272
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1270
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toSuppSvcResponse(Lvendor/qti/hardware/radio/ims/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;
    .locals 14
    .param p0, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/SuppServiceStatus;

    .line 2629
    new-instance v0, Lorg/codeaurora/ims/SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppSvcResponse;-><init>()V

    .line 2630
    .local v0, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setStatus(I)V

    .line 2631
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    .line 2632
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassProvisionStatus(I)I

    move-result v1

    .line 2631
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setProvisionStatus(I)V

    .line 2633
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    if-eqz v1, :cond_0

    .line 2634
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toFacility(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFacilityType(I)V

    .line 2636
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 2637
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2638
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFailureCause(Ljava/lang/String;)V

    .line 2640
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->cbNumListInfo:[Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 2641
    .local v5, "numList":Lvendor/qti/hardware/radio/ims/CbNumListInfo;
    iget v6, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->serviceClass:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_2

    .line 2642
    goto :goto_2

    .line 2644
    :cond_2
    new-instance v6, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    iget v7, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->serviceClass:I

    invoke-direct {v6, v7}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;-><init>(I)V

    .line 2647
    .local v6, "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    iget-object v7, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    if-eqz v7, :cond_3

    .line 2648
    iget-object v7, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 2649
    .local v10, "numInfo":Lvendor/qti/hardware/radio/ims/CbNumInfo;
    new-instance v11, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    iget v12, v10, Lvendor/qti/hardware/radio/ims/CbNumInfo;->status:I

    iget-object v13, v10, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;-><init>(ILjava/lang/String;)V

    .line 2652
    .local v11, "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    invoke-virtual {v6, v11}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->addLine(Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;)V

    .line 2648
    .end local v10    # "numInfo":Lvendor/qti/hardware/radio/ims/CbNumInfo;
    .end local v11    # "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2655
    :cond_3
    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/SuppSvcResponse;->addBarredLines(Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;)V

    .line 2640
    .end local v5    # "numList":Lvendor/qti/hardware/radio/ims/CbNumListInfo;
    .end local v6    # "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2658
    :cond_4
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->hasErrorDetails:Z

    if-eqz v1, :cond_5

    .line 2659
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2661
    :cond_5
    return-object v0
.end method

.method public static toSuppSvcStatus(I)I
    .locals 1
    .param p0, "inServiceStatus"    # I

    .line 2538
    packed-switch p0, :pswitch_data_0

    .line 2544
    const/4 v0, -0x1

    return v0

    .line 2540
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2542
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toTeleserviceType(I)I
    .locals 1
    .param p0, "teleservice"    # I

    .line 2956
    packed-switch p0, :pswitch_data_0

    .line 2971
    const/4 v0, -0x1

    return v0

    .line 2968
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2966
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2964
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2962
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2960
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2958
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toTtyMode(I)I
    .locals 1
    .param p0, "ttyMode"    # I

    .line 2771
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2781
    return v0

    .line 2779
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 2777
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2775
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 2773
    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toUssdInfo(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;
    .locals 4
    .param p0, "type"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 2846
    new-instance v0, Lorg/codeaurora/ims/UssdInfo;

    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toUssdModeType(I)I

    move-result v1

    iget v2, p2, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    iget-object v3, p2, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/codeaurora/ims/UssdInfo;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private static toUssdModeType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2852
    packed-switch p0, :pswitch_data_0

    .line 2866
    const/4 v0, -0x1

    return v0

    .line 2864
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2862
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2860
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2858
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2856
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2854
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toVerificationStatus(I)I
    .locals 1
    .param p0, "verstatVerificationStatus"    # I

    .line 2027
    packed-switch p0, :pswitch_data_0

    .line 2034
    const/4 v0, 0x0

    return v0

    .line 2031
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2029
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toViceUriInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)Lorg/codeaurora/ims/ViceUriInfo;
    .locals 5
    .param p0, "viceInfo"    # Lvendor/qti/hardware/radio/ims/ViceInfo;

    .line 3095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3096
    .local v0, "viceInfoUri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ViceInfo;->viceInfoUri:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3097
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ViceInfo;->viceInfoUri:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3096
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3098
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ViceUriInfo;

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ViceUriInfo;-><init>(Ljava/util/ArrayList;)V

    .line 3099
    .local v1, "info":Lorg/codeaurora/ims/ViceUriInfo;
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRefreshViceInfo: viceUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3100
    return-object v1
.end method

.method public static toVoWiFiQuality(I)[I
    .locals 3
    .param p0, "voWiFiCallQuality"    # I

    .line 2826
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2827
    .local v1, "ret":[I
    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2838
    aput v2, v1, v2

    goto :goto_0

    .line 2835
    :pswitch_0
    const/4 v0, 0x4

    aput v0, v1, v2

    .line 2836
    goto :goto_0

    .line 2832
    :pswitch_1
    const/4 v0, 0x2

    aput v0, v1, v2

    .line 2833
    goto :goto_0

    .line 2829
    :pswitch_2
    aput v0, v1, v2

    .line 2830
    nop

    .line 2841
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toVoiceInfo(I)I
    .locals 1
    .param p0, "voiceInfo"    # I

    .line 3215
    packed-switch p0, :pswitch_data_0

    .line 3222
    const/4 v0, 0x2

    return v0

    .line 3219
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 3217
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    .locals 6
    .param p0, "info"    # Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 1508
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    array-length v0, v0

    .line 1510
    .local v0, "statusListLen":I
    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 1513
    .local v1, "statusForAccessTech":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1514
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v3, v1, v2

    .line 1515
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toStatusForAccessTech(Lvendor/qti/hardware/radio/ims/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1516
    sget-object v3, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " networkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " restrictCause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " registered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1521
    .end local v2    # "j":I
    :cond_0
    return-object v1
.end method
