.class public Lorg/codeaurora/ims/StableAidl;
.super Ljava/lang/Object;
.source "StableAidl.java"


# static fields
.field private static final INVALID_CONNID:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    const-string v0, "StableAidl"

    sput-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;
    .locals 6
    .param p0, "fromList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 1382
    const/4 v0, 0x0

    .line 1383
    .local v0, "toList":[Lorg/codeaurora/ims/ServiceStatus;
    if-nez p0, :cond_0

    .line 1384
    const/4 v1, 0x0

    return-object v1

    .line 1387
    :cond_0
    array-length v1, p0

    .line 1388
    .local v1, "listLen":I
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Num of SrvUpdates = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1389
    new-array v0, v1, [Lorg/codeaurora/ims/ServiceStatus;

    .line 1390
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1391
    aget-object v3, p0, v2

    .line 1392
    .local v3, "fromInfo":Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    if-eqz v3, :cond_1

    .line 1393
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_1

    .line 1395
    :cond_1
    sget-object v4, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v5, "Null service status in list"

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    .end local v3    # "fromInfo":Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1398
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static fromAcknowledgeSms(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    .locals 2
    .param p0, "messageRef"    # I
    .param p1, "deliverStatus"    # I

    .line 2900
    new-instance v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;-><init>()V

    .line 2901
    .local v0, "smsInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->messageRef:I

    .line 2902
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromSmsDeliverStatus(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->smsDeliverStatus:I

    .line 2903
    return-object v0
.end method

.method public static fromAcknowledgeSmsReport(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    .locals 2
    .param p0, "messageRef"    # I
    .param p1, "statusReportStatus"    # I

    .line 3051
    new-instance v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;-><init>()V

    .line 3052
    .local v0, "smsReportInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->messageRef:I

    .line 3053
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromSmsReportStatus(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->smsReportStatus:I

    .line 3054
    return-object v0
.end method

.method private static fromAddress(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/AddressInfo;
    .locals 5
    .param p0, "lat"    # D
    .param p2, "lon"    # D
    .param p4, "address"    # Landroid/location/Address;

    .line 2574
    const-class v0, Lorg/codeaurora/ims/StableAidl;

    new-instance v1, Lvendor/qti/hardware/radio/ims/AddressInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/AddressInfo;-><init>()V

    .line 2575
    .local v1, "addressInfo":Lvendor/qti/hardware/radio/ims/AddressInfo;
    const-string v2, ""

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->city:Ljava/lang/String;

    .line 2576
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->state:Ljava/lang/String;

    .line 2577
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->country:Ljava/lang/String;

    .line 2578
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2579
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2580
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->street:Ljava/lang/String;

    .line 2581
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->houseNumber:Ljava/lang/String;

    .line 2582
    if-nez p4, :cond_0

    .line 2583
    const-string v2, "Null Address!"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2584
    return-object v1

    .line 2586
    :cond_0
    invoke-virtual {p4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    .line 2587
    .local v2, "info":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2588
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->city:Ljava/lang/String;

    .line 2590
    :cond_1
    invoke-virtual {p4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    .line 2591
    if-eqz v2, :cond_2

    .line 2592
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->state:Ljava/lang/String;

    .line 2594
    :cond_2
    invoke-virtual {p4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 2595
    if-eqz v2, :cond_3

    .line 2596
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->country:Ljava/lang/String;

    .line 2598
    :cond_3
    invoke-virtual {p4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    .line 2599
    if-eqz v2, :cond_4

    .line 2600
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->postalCode:Ljava/lang/String;

    .line 2602
    :cond_4
    invoke-virtual {p4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 2603
    if-eqz v2, :cond_5

    .line 2604
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->countryCode:Ljava/lang/String;

    .line 2606
    :cond_5
    invoke-virtual {p4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    .line 2607
    if-eqz v2, :cond_6

    .line 2608
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->street:Ljava/lang/String;

    .line 2610
    :cond_6
    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    .line 2611
    if-eqz v2, :cond_7

    .line 2612
    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/AddressInfo;->houseNumber:Ljava/lang/String;

    .line 2614
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",houseNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2615
    invoke-virtual {p4}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2614
    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2616
    return-object v1
.end method

.method public static fromAnswerRequest(III)Lvendor/qti/hardware/radio/ims/AnswerRequest;
    .locals 2
    .param p0, "callType"    # I
    .param p1, "presentation"    # I
    .param p2, "rttMode"    # I

    .line 1299
    new-instance v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/AnswerRequest;-><init>()V

    .line 1300
    .local v0, "answerRequest":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCallType(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;->callType:I

    .line 1301
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromTirPresentation(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;->presentation:I

    .line 1302
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromRttMode(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/AnswerRequest;->mode:I

    .line 1303
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

    .line 332
    if-nez p0, :cond_0

    .line 333
    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;-><init>()V

    .line 337
    .local v0, "ccDialRequest":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    invoke-static {p1, p2, p3, p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 339
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCallComposerInfo(Lorg/codeaurora/ims/CallComposerInfo;)Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .line 341
    return-object v0
.end method

.method private static fromCallComposerInfo(Lorg/codeaurora/ims/CallComposerInfo;)Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    .locals 2
    .param p0, "from"    # Lorg/codeaurora/ims/CallComposerInfo;

    .line 347
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallComposerInfo;-><init>()V

    .line 350
    .local v0, "to":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getPriority()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromPriority(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->priority:I

    .line 351
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    goto :goto_0

    .line 354
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [C

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    .line 357
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromLocation(Lorg/codeaurora/ims/CallComposerInfo$Location;)Lvendor/qti/hardware/radio/ims/CallLocation;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    goto :goto_1

    .line 360
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/CallLocation;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    .line 363
    :goto_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    goto :goto_2

    .line 366
    :cond_2
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    .line 369
    :goto_2
    return-object v0
.end method

.method private static fromCallDetails(Lorg/codeaurora/ims/CallDetails;)Lvendor/qti/hardware/radio/ims/CallDetails;
    .locals 5
    .param p0, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 381
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallDetails;-><init>()V

    .line 384
    .local v0, "halCallDetails":Lvendor/qti/hardware/radio/ims/CallDetails;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 385
    new-array v2, v1, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 386
    new-array v2, v1, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 387
    const-string v2, ""

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 389
    if-nez p0, :cond_0

    .line 390
    return-object v0

    .line 393
    :cond_0
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromCallType(I)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    .line 394
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromCallDomain(I)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    .line 395
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromRttMode(I)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    .line 396
    iget-object v2, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    .line 397
    .local v1, "extrasLength":I
    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 398
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 399
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v4, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private static fromCallDomain(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 435
    sparse-switch p0, :sswitch_data_0

    .line 446
    const/4 v0, 0x5

    return v0

    .line 437
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 443
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 441
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 439
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

    .line 772
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;-><init>()V

    .line 773
    .local v0, "failCauseResponse":Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;
    const/4 v1, 0x0

    new-array v2, v1, [B

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorInfo:[B

    .line 774
    const-string v2, ""

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 775
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->hasErrorDetails:Z

    .line 776
    new-instance v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 777
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 779
    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    .line 780
    return-object v0

    .line 783
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 784
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangupWithReason errorInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorInfo:[B

    .line 787
    :cond_1
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromImsReasonInfo(I)I

    move-result v1

    .line 788
    .local v1, "callFailCause":I
    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->failCause:I

    .line 789
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason callFailCause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    const/16 v2, 0x1fd

    if-ne v1, v2, :cond_2

    .line 793
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorInfo:[B

    .line 795
    :cond_2
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangupWithReason MISC callFailCause, errorInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    return-object v0
.end method

.method public static fromCallForwardTimerInfo(Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;II)V
    .locals 1
    .param p0, "callFwdTimerInfo"    # Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 2368
    const v0, 0x7fffffff

    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->year:I

    .line 2369
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->month:I

    .line 2370
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->day:I

    .line 2371
    iput p1, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    .line 2372
    iput p2, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    .line 2373
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->second:I

    .line 2374
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->timezone:I

    .line 2375
    return-void
.end method

.method public static fromCallModify(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    .locals 2
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 734
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallModifyInfo;-><init>()V

    .line 735
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    iget v1, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callIndex:I

    .line 737
    iget-object v1, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromCallDetails(Lorg/codeaurora/ims/CallDetails;)Lvendor/qti/hardware/radio/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    .line 739
    return-object v0
.end method

.method private static fromCallType(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 405
    sparse-switch p0, :sswitch_data_0

    .line 430
    const/4 v0, 0x0

    return v0

    .line 427
    :sswitch_0
    const/16 v0, 0xb

    return v0

    .line 423
    :sswitch_1
    const/16 v0, 0x9

    return v0

    .line 421
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 419
    :sswitch_3
    const/4 v0, 0x7

    return v0

    .line 417
    :sswitch_4
    const/4 v0, 0x6

    return v0

    .line 425
    :sswitch_5
    const/16 v0, 0xa

    return v0

    .line 415
    :sswitch_6
    const/4 v0, 0x5

    return v0

    .line 413
    :sswitch_7
    const/4 v0, 0x4

    return v0

    .line 411
    :sswitch_8
    const/4 v0, 0x3

    return v0

    .line 409
    :sswitch_9
    const/4 v0, 0x2

    return v0

    .line 407
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

    .line 2928
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;-><init>()V

    .line 2929
    .local v0, "callWaitingInfo":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    if-eqz p0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 2930
    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceStatus:I

    .line 2931
    iput p1, v0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceClass:I

    .line 2932
    return-object v0
.end method

.method private static fromCbNumList([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/CbNumListInfo;
    .locals 5
    .param p0, "inCbNumList"    # [Ljava/lang/String;
    .param p1, "serviceClass"    # I

    .line 2451
    new-instance v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CbNumListInfo;-><init>()V

    .line 2452
    .local v0, "outCbNumListInfo":Lvendor/qti/hardware/radio/ims/CbNumListInfo;
    const/4 v1, 0x1

    new-array v1, v1, [Lvendor/qti/hardware/radio/ims/CbNumInfo;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    .line 2453
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    new-instance v2, Lvendor/qti/hardware/radio/ims/CbNumInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/CbNumInfo;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2454
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aget-object v1, v1, v3

    const-string v2, ""

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    .line 2455
    const v1, 0x7fffffff

    if-eq p1, v1, :cond_0

    .line 2456
    iput p1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->serviceClass:I

    .line 2458
    :cond_0
    if-nez p0, :cond_1

    .line 2459
    return-object v0

    .line 2461
    :cond_1
    array-length v1, p0

    new-array v1, v1, [Lvendor/qti/hardware/radio/ims/CbNumInfo;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    .line 2462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2463
    new-instance v2, Lvendor/qti/hardware/radio/ims/CbNumInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/CbNumInfo;-><init>()V

    .line 2464
    .local v2, "cbNumInfo":Lvendor/qti/hardware/radio/ims/CbNumInfo;
    iput v3, v2, Lvendor/qti/hardware/radio/ims/CbNumInfo;->status:I

    .line 2465
    aget-object v4, p0, v1

    if-eqz v4, :cond_2

    .line 2466
    aget-object v4, p0, v1

    iput-object v4, v2, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    .line 2468
    :cond_2
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aput-object v2, v4, v1

    .line 2462
    .end local v2    # "cbNumInfo":Lvendor/qti/hardware/radio/ims/CbNumInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2470
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static fromClir(I)Lvendor/qti/hardware/radio/ims/ClirInfo;
    .locals 1
    .param p0, "clirMode"    # I

    .line 2922
    new-instance v0, Lvendor/qti/hardware/radio/ims/ClirInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ClirInfo;-><init>()V

    .line 2923
    .local v0, "clirValue":Lvendor/qti/hardware/radio/ims/ClirInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    .line 2924
    return-object v0
.end method

.method private static fromClirMode(I)I
    .locals 1
    .param p0, "clirMode"    # I

    .line 268
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 276
    return v0

    .line 274
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 272
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 270
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

    .line 800
    new-instance v0, Lvendor/qti/hardware/radio/ims/ColrInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ColrInfo;-><init>()V

    .line 801
    .local v0, "colrValue":Lvendor/qti/hardware/radio/ims/ColrInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromIpPresentation(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/ColrInfo;->presentation:I

    .line 804
    new-instance v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 805
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    const-string v2, ""

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 806
    return-object v0
.end method

.method public static fromDeflectCall(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    .locals 1
    .param p0, "index"    # I
    .param p1, "number"    # Ljava/lang/String;

    .line 2893
    new-instance v0, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;-><init>()V

    .line 2894
    .local v0, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->connIndex:I

    .line 2895
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->number:Ljava/lang/String;

    .line 2896
    return-object v0
.end method

.method public static fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "clirMode"    # I
    .param p2, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p3, "isEncrypted"    # Z
    .param p4, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;

    .line 282
    new-instance v0, Lvendor/qti/hardware/radio/ims/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/DialRequest;-><init>()V

    .line 283
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/DialRequest;
    if-eqz p0, :cond_0

    .line 284
    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    goto :goto_0

    .line 286
    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    .line 289
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromClirMode(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->clirMode:I

    .line 291
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromCallDetails(Lorg/codeaurora/ims/CallDetails;)Lvendor/qti/hardware/radio/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    .line 293
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->hasConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isConferenceUri:Z

    .line 295
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isCallPull:Z

    .line 297
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isEncrypted:Z

    .line 299
    if-eqz p2, :cond_2

    .line 300
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getMultiIdentityLineInfo()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 301
    .local v1, "multiIdentityLineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    :goto_2
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromMultiIdentityLineInfo(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    move-result-object v2

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 303
    invoke-static {p4}, Lorg/codeaurora/ims/StableAidl;->fromRedialInfo(Lorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/RedialInfo;

    move-result-object v2

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/RedialInfo;

    .line 305
    return-object v0
.end method

.method public static fromDtmf(IC)Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .locals 2
    .param p0, "callId"    # I
    .param p1, "c"    # C

    .line 2915
    new-instance v0, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/DtmfInfo;-><init>()V

    .line 2916
    .local v0, "dtmfValue":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 2917
    iput p0, v0, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    .line 2918
    return-object v0
.end method

.method public static fromEctInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    .locals 2
    .param p0, "srcCallId"    # I
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "destCallId"    # I

    .line 2426
    new-instance v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;-><init>()V

    .line 2427
    .local v0, "ectInfo":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->callId:I

    .line 2428
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromEctTypeInfo(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->ectType:I

    .line 2429
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    .line 2430
    if-eqz p2, :cond_0

    .line 2431
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->targetAddress:Ljava/lang/String;

    .line 2433
    :cond_0
    if-lez p3, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    const v1, 0x7fffffff

    :goto_0
    iput v1, v0, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->targetCallId:I

    .line 2434
    return-object v0
.end method

.method private static fromEctTypeInfo(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2438
    packed-switch p0, :pswitch_data_0

    .line 2446
    const/4 v0, 0x0

    return v0

    .line 2444
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 2442
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2440
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

    .line 704
    packed-switch p0, :pswitch_data_0

    .line 710
    const/4 v0, 0x0

    return v0

    .line 706
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 708
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

    .line 312
    if-nez p0, :cond_0

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 316
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;-><init>()V

    .line 317
    .local v0, "eDialRequest":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    invoke-static {p1, p2, p3, p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->dialRequest:Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 319
    nop

    .line 320
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyServiceCategories()I

    move-result v1

    .line 319
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromEmergencyServiceCategory(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->categories:I

    .line 321
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->urns:[Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyCallRouting()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromEmergencyCallRouting(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->route:I

    .line 323
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->hasKnownUserIntentEmergency()Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->hasKnownUserIntentEmergency:Z

    .line 324
    invoke-virtual {p0}, Lorg/codeaurora/ims/EmergencyCallInfo;->isEmergencyCallTesting()Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->isTesting:Z

    .line 325
    return-object v0
.end method

.method private static fromEmergencyServiceCategory(I)I
    .locals 3
    .param p0, "categories"    # I

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, "toHalCategories":I
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 674
    or-int/lit8 v0, v0, 0x1

    .line 676
    :cond_0
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 678
    or-int/lit8 v0, v0, 0x2

    .line 680
    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 682
    or-int/lit8 v0, v0, 0x4

    .line 684
    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 686
    or-int/lit8 v0, v0, 0x8

    .line 688
    :cond_3
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 690
    or-int/lit8 v0, v0, 0x10

    .line 692
    :cond_4
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 694
    or-int/lit8 v0, v0, 0x20

    .line 696
    :cond_5
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 698
    or-int/lit8 v0, v0, 0x40

    .line 700
    :cond_6
    return v0
.end method

.method private static fromFacility(I)I
    .locals 1
    .param p0, "facilityType"    # I

    .line 2474
    packed-switch p0, :pswitch_data_0

    .line 2500
    const/4 v0, 0x0

    return v0

    .line 2498
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 2496
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 2494
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 2492
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 2490
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 2488
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 2486
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 2484
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 2482
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 2480
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 2478
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 2476
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

    .line 2907
    new-instance v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;-><init>()V

    .line 2908
    .local v0, "geoLocationInfo":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    iput-wide p0, v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lat:D

    .line 2909
    iput-wide p2, v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->lon:D

    .line 2910
    invoke-static {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/StableAidl;->fromAddress(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/AddressInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->addressInfo:Lvendor/qti/hardware/radio/ims/AddressInfo;

    .line 2911
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

    .line 744
    new-instance v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;-><init>()V

    .line 749
    .local v0, "hangup":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    const v1, 0x7fffffff

    if-eqz p0, :cond_0

    .line 750
    iput p0, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connIndex:I

    goto :goto_0

    .line 752
    :cond_0
    iput v1, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connIndex:I

    .line 755
    :goto_0
    if-eqz p1, :cond_1

    .line 756
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connUri:Ljava/lang/String;

    goto :goto_1

    .line 758
    :cond_1
    const-string v2, ""

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->connUri:Ljava/lang/String;

    .line 761
    :goto_1
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->multiParty:Z

    .line 762
    iput v1, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->conf_id:I

    .line 764
    invoke-static {p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromCallFailCauseResponse(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->failCauseResponse:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    .line 766
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

    .line 2285
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

    .line 2299
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallForwardInfo;-><init>()V

    .line 2302
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    iput p3, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    .line 2303
    iput p0, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    .line 2304
    iput p1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    .line 2305
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    .line 2306
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    .line 2307
    if-eqz p2, :cond_0

    .line 2308
    iput-object p2, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    .line 2310
    :cond_0
    iput p4, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    .line 2311
    iput-boolean p9, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->expectMore:Z

    .line 2312
    new-instance v1, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2313
    new-instance v1, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;-><init>()V

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2314
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-static {v1, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromCallForwardTimerInfo(Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;II)V

    .line 2315
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    invoke-static {v1, p7, p8}, Lorg/codeaurora/ims/StableAidl;->fromCallForwardTimerInfo(Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;II)V

    .line 2316
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

    .line 2291
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

    .line 865
    new-instance v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/ConfigInfo;-><init>()V

    .line 866
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromImsConfigItem(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->item:I

    .line 867
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->hasBoolValue:Z

    .line 868
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->boolValue:Z

    .line 869
    iput p2, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    .line 870
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 871
    if-eqz p3, :cond_0

    .line 872
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 874
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/StableAidlErrorCode;->fromImsConfigErrorCode(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    .line 875
    return-object v0
.end method

.method private static fromImsConfigItem(I)I
    .locals 1
    .param p0, "item"    # I

    .line 879
    const/16 v0, 0x4e

    packed-switch p0, :pswitch_data_0

    .line 1039
    const/4 v0, 0x0

    return v0

    .line 1036
    :pswitch_0
    return v0

    .line 1033
    :pswitch_1
    return v0

    .line 1031
    :pswitch_2
    const/16 v0, 0x4d

    return v0

    .line 1029
    :pswitch_3
    const/16 v0, 0x4b

    return v0

    .line 1027
    :pswitch_4
    const/16 v0, 0x4a

    return v0

    .line 1023
    :pswitch_5
    const/16 v0, 0x49

    return v0

    .line 1021
    :pswitch_6
    const/16 v0, 0x48

    return v0

    .line 1025
    :pswitch_7
    const/16 v0, 0x47

    return v0

    .line 1019
    :pswitch_8
    const/16 v0, 0x46

    return v0

    .line 1017
    :pswitch_9
    const/16 v0, 0x45

    return v0

    .line 1015
    :pswitch_a
    const/16 v0, 0x44

    return v0

    .line 1013
    :pswitch_b
    const/16 v0, 0x43

    return v0

    .line 1011
    :pswitch_c
    const/16 v0, 0x42

    return v0

    .line 1009
    :pswitch_d
    const/16 v0, 0x41

    return v0

    .line 1007
    :pswitch_e
    const/16 v0, 0x40

    return v0

    .line 1005
    :pswitch_f
    const/16 v0, 0x3f

    return v0

    .line 1003
    :pswitch_10
    const/16 v0, 0x3e

    return v0

    .line 1001
    :pswitch_11
    const/16 v0, 0x3d

    return v0

    .line 999
    :pswitch_12
    const/16 v0, 0x3c

    return v0

    .line 997
    :pswitch_13
    const/16 v0, 0x3b

    return v0

    .line 995
    :pswitch_14
    const/16 v0, 0x3a

    return v0

    .line 993
    :pswitch_15
    const/16 v0, 0x39

    return v0

    .line 991
    :pswitch_16
    const/16 v0, 0x38

    return v0

    .line 989
    :pswitch_17
    const/16 v0, 0x37

    return v0

    .line 987
    :pswitch_18
    const/16 v0, 0x36

    return v0

    .line 985
    :pswitch_19
    const/16 v0, 0x35

    return v0

    .line 983
    :pswitch_1a
    const/16 v0, 0x34

    return v0

    .line 981
    :pswitch_1b
    const/16 v0, 0x33

    return v0

    .line 979
    :pswitch_1c
    const/16 v0, 0x32

    return v0

    .line 977
    :pswitch_1d
    const/16 v0, 0x31

    return v0

    .line 975
    :pswitch_1e
    const/16 v0, 0x30

    return v0

    .line 973
    :pswitch_1f
    const/16 v0, 0x2f

    return v0

    .line 971
    :pswitch_20
    const/16 v0, 0x2e

    return v0

    .line 969
    :pswitch_21
    const/16 v0, 0x2d

    return v0

    .line 967
    :pswitch_22
    const/16 v0, 0x2c

    return v0

    .line 965
    :pswitch_23
    const/16 v0, 0x2b

    return v0

    .line 963
    :pswitch_24
    const/16 v0, 0x2a

    return v0

    .line 961
    :pswitch_25
    const/16 v0, 0x29

    return v0

    .line 959
    :pswitch_26
    const/16 v0, 0x28

    return v0

    .line 957
    :pswitch_27
    const/16 v0, 0x27

    return v0

    .line 955
    :pswitch_28
    const/16 v0, 0x26

    return v0

    .line 953
    :pswitch_29
    const/16 v0, 0x25

    return v0

    .line 951
    :pswitch_2a
    const/16 v0, 0x24

    return v0

    .line 949
    :pswitch_2b
    const/16 v0, 0x23

    return v0

    .line 947
    :pswitch_2c
    const/16 v0, 0x22

    return v0

    .line 945
    :pswitch_2d
    const/16 v0, 0x21

    return v0

    .line 943
    :pswitch_2e
    const/16 v0, 0x20

    return v0

    .line 941
    :pswitch_2f
    const/16 v0, 0x1f

    return v0

    .line 939
    :pswitch_30
    const/16 v0, 0x1e

    return v0

    .line 937
    :pswitch_31
    const/16 v0, 0x1d

    return v0

    .line 935
    :pswitch_32
    const/16 v0, 0x1c

    return v0

    .line 933
    :pswitch_33
    const/16 v0, 0x1b

    return v0

    .line 931
    :pswitch_34
    const/16 v0, 0x1a

    return v0

    .line 929
    :pswitch_35
    const/16 v0, 0x19

    return v0

    .line 927
    :pswitch_36
    const/16 v0, 0x18

    return v0

    .line 925
    :pswitch_37
    const/16 v0, 0x17

    return v0

    .line 923
    :pswitch_38
    const/16 v0, 0x16

    return v0

    .line 921
    :pswitch_39
    const/16 v0, 0x15

    return v0

    .line 919
    :pswitch_3a
    const/16 v0, 0x14

    return v0

    .line 917
    :pswitch_3b
    const/16 v0, 0x13

    return v0

    .line 915
    :pswitch_3c
    const/16 v0, 0x12

    return v0

    .line 913
    :pswitch_3d
    const/16 v0, 0x11

    return v0

    .line 911
    :pswitch_3e
    const/16 v0, 0x10

    return v0

    .line 909
    :pswitch_3f
    const/16 v0, 0xf

    return v0

    .line 907
    :pswitch_40
    const/16 v0, 0xe

    return v0

    .line 905
    :pswitch_41
    const/16 v0, 0xd

    return v0

    .line 903
    :pswitch_42
    const/16 v0, 0xc

    return v0

    .line 901
    :pswitch_43
    const/16 v0, 0xb

    return v0

    .line 899
    :pswitch_44
    const/16 v0, 0xa

    return v0

    .line 897
    :pswitch_45
    const/16 v0, 0x9

    return v0

    .line 895
    :pswitch_46
    const/16 v0, 0x8

    return v0

    .line 893
    :pswitch_47
    const/4 v0, 0x7

    return v0

    .line 891
    :pswitch_48
    const/4 v0, 0x6

    return v0

    .line 889
    :pswitch_49
    const/4 v0, 0x5

    return v0

    .line 887
    :pswitch_4a
    const/4 v0, 0x4

    return v0

    .line 885
    :pswitch_4b
    const/4 v0, 0x3

    return v0

    .line 883
    :pswitch_4c
    const/4 v0, 0x2

    return v0

    .line 881
    :pswitch_4d
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 3302
    new-instance v0, Lvendor/qti/hardware/radio/ims/MediaConfig;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/MediaConfig;-><init>()V

    .line 3303
    .local v0, "mediaConfig":Lvendor/qti/hardware/radio/ims/MediaConfig;
    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Lorg/codeaurora/ims/StableAidl;->fromSize(II)Lvendor/qti/hardware/radio/ims/Size;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MediaConfig;->screenSize:Lvendor/qti/hardware/radio/ims/Size;

    .line 3304
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Lorg/codeaurora/ims/StableAidl;->fromSize(II)Lvendor/qti/hardware/radio/ims/Size;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxAvcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    .line 3305
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Lorg/codeaurora/ims/StableAidl;->fromSize(II)Lvendor/qti/hardware/radio/ims/Size;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MediaConfig;->maxHevcCodecResolution:Lvendor/qti/hardware/radio/ims/Size;

    .line 3306
    return-object v0
.end method

.method private static fromImsReasonInfo(I)I
    .locals 3
    .param p0, "imsReason"    # I

    .line 567
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    sparse-switch p0, :sswitch_data_0

    .line 614
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    const/16 v0, 0x224

    return v0

    .line 602
    :sswitch_0
    const/16 v0, 0x26a

    return v0

    .line 590
    :sswitch_1
    const/16 v0, 0x25d

    return v0

    .line 584
    :sswitch_2
    const/16 v0, 0x25a

    return v0

    .line 588
    :sswitch_3
    const/16 v0, 0x25c

    return v0

    .line 586
    :sswitch_4
    const/16 v0, 0x25b

    return v0

    .line 612
    :sswitch_5
    const/16 v0, 0x1f8

    return v0

    .line 610
    :sswitch_6
    const/16 v0, 0x1f7

    return v0

    .line 606
    :sswitch_7
    const/16 v0, 0x1f6

    return v0

    .line 608
    :sswitch_8
    const/16 v0, 0x1f5

    return v0

    .line 600
    :sswitch_9
    const/16 v0, 0x269

    return v0

    .line 598
    :sswitch_a
    const/16 v0, 0x268

    return v0

    .line 596
    :sswitch_b
    const/16 v0, 0x267

    return v0

    .line 594
    :sswitch_c
    const/16 v0, 0x266

    return v0

    .line 592
    :sswitch_d
    const/16 v0, 0x265

    return v0

    .line 582
    :sswitch_e
    const/16 v0, 0x264

    return v0

    .line 580
    :sswitch_f
    const/16 v0, 0x263

    return v0

    .line 576
    :sswitch_10
    const/16 v0, 0x262

    return v0

    .line 578
    :sswitch_11
    const/16 v0, 0x261

    return v0

    .line 574
    :sswitch_12
    const/16 v0, 0x260

    return v0

    .line 572
    :sswitch_13
    const/16 v0, 0x25f

    return v0

    .line 570
    :sswitch_14
    const/16 v0, 0x25e

    return v0

    .line 604
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

    .line 810
    packed-switch p0, :pswitch_data_0

    .line 818
    const/4 v0, 0x0

    return v0

    .line 816
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 814
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 812
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

    .line 725
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallLocation;-><init>()V

    .line 726
    .local v0, "location":Lvendor/qti/hardware/radio/ims/CallLocation;
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getRadius()F

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/CallLocation;->radius:F

    .line 727
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lvendor/qti/hardware/radio/ims/CallLocation;->latitude:D

    .line 728
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lvendor/qti/hardware/radio/ims/CallLocation;->longitude:D

    .line 730
    return-object v0
.end method

.method public static fromMultiIdentityLineInfo(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .locals 2
    .param p0, "from"    # Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 512
    new-instance v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;-><init>()V

    .line 514
    .local v0, "to":Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    if-nez p0, :cond_0

    .line 515
    const-string v1, ""

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->msisdn:Ljava/lang/String;

    .line 516
    return-object v0

    .line 519
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->msisdn:Ljava/lang/String;

    .line 520
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineType()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->lineType:I

    .line 521
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->registrationStatus:I

    .line 522
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

    .line 527
    .local p0, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
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

    .line 530
    .local v2, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->fromMultiIdentityLineInfo(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    .end local v2    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    goto :goto_0

    .line 532
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

    .line 2954
    packed-switch p0, :pswitch_data_0

    .line 2966
    const/4 v0, 0x0

    return v0

    .line 2964
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2962
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2960
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2958
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2956
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

    .line 715
    packed-switch p0, :pswitch_data_0

    .line 719
    const/4 v0, 0x1

    return v0

    .line 717
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

    .line 620
    packed-switch p0, :pswitch_data_0

    .line 666
    const/4 v0, 0x0

    return v0

    .line 664
    :pswitch_0
    const/16 v0, 0x16

    return v0

    .line 662
    :pswitch_1
    const/16 v0, 0x15

    return v0

    .line 660
    :pswitch_2
    const/16 v0, 0x14

    return v0

    .line 658
    :pswitch_3
    const/16 v0, 0x13

    return v0

    .line 656
    :pswitch_4
    const/16 v0, 0x12

    return v0

    .line 654
    :pswitch_5
    const/16 v0, 0x11

    return v0

    .line 652
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 650
    :pswitch_7
    const/16 v0, 0xf

    return v0

    .line 648
    :pswitch_8
    const/16 v0, 0xe

    return v0

    .line 646
    :pswitch_9
    const/16 v0, 0xd

    return v0

    .line 644
    :pswitch_a
    const/16 v0, 0xc

    return v0

    .line 642
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 640
    :pswitch_c
    const/16 v0, 0xa

    return v0

    .line 638
    :pswitch_d
    const/16 v0, 0x9

    return v0

    .line 636
    :pswitch_e
    const/16 v0, 0x8

    return v0

    .line 634
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 632
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 630
    :pswitch_11
    const/4 v0, 0x5

    return v0

    .line 628
    :pswitch_12
    const/4 v0, 0x4

    return v0

    .line 626
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 624
    :pswitch_14
    const/4 v0, 0x2

    return v0

    .line 622
    :pswitch_15
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 553
    new-instance v0, Lvendor/qti/hardware/radio/ims/RedialInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/RedialInfo;-><init>()V

    .line 555
    .local v0, "to":Lvendor/qti/hardware/radio/ims/RedialInfo;
    const/16 v1, 0x224

    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailReason:I

    .line 556
    const/4 v1, 0x0

    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailRadioTech:I

    .line 557
    if-nez p0, :cond_0

    .line 558
    return-object v0

    .line 561
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailCause()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromImsReasonInfo(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailReason:I

    .line 562
    invoke-virtual {p0}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailRadioTech()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->fromRadioTech(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/RedialInfo;->callFailRadioTech:I

    .line 563
    return-object v0
.end method

.method public static fromRegState(I)I
    .locals 1
    .param p0, "state"    # I

    .line 1331
    packed-switch p0, :pswitch_data_0

    .line 1339
    const/4 v0, 0x0

    return v0

    .line 1337
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1335
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1333
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

    .line 468
    packed-switch p0, :pswitch_data_0

    .line 473
    const/4 v0, 0x1

    return v0

    .line 470
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

    .line 208
    new-instance v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;-><init>()V

    .line 209
    .local v0, "statusForAccessTech":Lvendor/qti/hardware/radio/ims/StatusForAccessTech;
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromRadioTech(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->networkMode:I

    .line 210
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromStatusType(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->status:I

    .line 211
    iput p3, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->restrictCause:I

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->hasRegistration:Z

    .line 215
    new-instance v2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/RegistrationInfo;-><init>()V

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 216
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    const-string v3, ""

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorMessage:Ljava/lang/String;

    .line 217
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    .line 219
    new-instance v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;-><init>()V

    .line 220
    .local v2, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->isValid:Z

    .line 221
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromCallType(I)I

    move-result v4

    iput v4, v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->callType:I

    .line 222
    new-array v3, v3, [Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    iput-object v3, v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    .line 223
    iget-object v3, v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    aput-object v0, v3, v1

    .line 225
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

    .line 192
    .local p0, "capabilityStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/CapabilityStatus;>;"
    nop

    .line 193
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 194
    .local v0, "serviceStatusInfoList":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 195
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/CapabilityStatus;

    .line 196
    .local v2, "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    nop

    .line 197
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->mapCapabilityToSrvType(I)I

    move-result v3

    .line 198
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v4

    invoke-static {v4}, Lorg/codeaurora/ims/StableAidl;->mapRegistrationTechToRadioTech(I)I

    move-result v4

    .line 199
    invoke-virtual {v2}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v5

    invoke-static {v5}, Lorg/codeaurora/ims/StableAidl;->mapValueToServiceStatus(I)I

    move-result v5

    .line 196
    invoke-static {v3, v4, v5, p1}, Lorg/codeaurora/ims/StableAidl;->fromServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    move-result-object v3

    .line 201
    .local v3, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    aput-object v3, v0, v1

    .line 194
    .end local v2    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .end local v3    # "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static fromSize(II)Lvendor/qti/hardware/radio/ims/Size;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 3310
    new-instance v0, Lvendor/qti/hardware/radio/ims/Size;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/Size;-><init>()V

    .line 3311
    .local v0, "size":Lvendor/qti/hardware/radio/ims/Size;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/Size;->width:I

    .line 3312
    iput p1, v0, Lvendor/qti/hardware/radio/ims/Size;->height:I

    .line 3313
    return-object v0
.end method

.method private static fromSmsDeliverStatus(I)I
    .locals 3
    .param p0, "status"    # I

    .line 2620
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 2630
    const-class v1, Lorg/codeaurora/ims/StableAidl;

    const-string v2, "unknown deliver status"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2631
    return v0

    .line 2628
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2626
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2624
    :pswitch_2
    return v0

    .line 2622
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

    .line 2636
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 2642
    return v0

    .line 2640
    :pswitch_0
    return v0

    .line 2638
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

    .line 156
    new-instance v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/SmsSendRequest;-><init>()V

    .line 157
    .local v0, "smsRequest":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    iput p0, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->messageRef:I

    .line 158
    iput-object p1, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->format:Ljava/lang/String;

    .line 159
    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->smsc:Ljava/lang/String;

    .line 160
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->shallRetry:Z

    .line 161
    array-length v1, p4

    new-array v1, v1, [B

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->pdu:[B

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->pdu:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 163
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->pdu:[B

    aget-byte v3, p4, v1

    aput-byte v3, v2, v1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromStatusType(I)I
    .locals 1
    .param p0, "status"    # I

    .line 1594
    packed-switch p0, :pswitch_data_0

    .line 1604
    const/4 v0, 0x0

    return v0

    .line 1602
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1600
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1598
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1596
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

    .line 2944
    new-instance v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;-><init>()V

    .line 2945
    .local v0, "suppServiceStatusRequest":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromOperationType(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->operationType:I

    .line 2946
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromFacility(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->facilityType:I

    .line 2947
    invoke-static {p2, p4}, Lorg/codeaurora/ims/StableAidl;->fromCbNumList([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->cbNumListInfo:Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    .line 2948
    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->password:Ljava/lang/String;

    .line 2949
    iput-boolean p5, v0, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->expectMore:Z

    .line 2950
    return-object v0
.end method

.method private static fromTirPresentation(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 1307
    packed-switch p0, :pswitch_data_0

    .line 1313
    const/4 v0, 0x3

    return v0

    .line 1311
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1309
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

    .line 2936
    new-instance v0, Lvendor/qti/hardware/radio/ims/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/TtyInfo;-><init>()V

    .line 2937
    .local v0, "info":Lvendor/qti/hardware/radio/ims/TtyInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->fromTtyMode(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/TtyInfo;->mode:I

    .line 2938
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/TtyInfo;->userData:[B

    .line 2939
    return-object v0
.end method

.method private static fromTtyMode(I)I
    .locals 1
    .param p0, "ttyMode"    # I

    .line 2268
    packed-switch p0, :pswitch_data_0

    .line 2278
    const/4 v0, 0x0

    return v0

    .line 2274
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2272
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2270
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2276
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

    .line 495
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v2, "isConferenceUri"

    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
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

    .line 496
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method private static isTirOverwriteAllowed(I)Z
    .locals 1
    .param p0, "tirMode"    # I

    .line 2186
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

    .line 3322
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 3326
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

    .line 3327
    :catch_0
    move-exception v1

    .line 3328
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getInterfaceVersion. Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    return v0

    .line 3323
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return v0
.end method

.method public static mapCapabilityToSrvType(I)I
    .locals 1
    .param p0, "capability"    # I

    .line 229
    sparse-switch p0, :sswitch_data_0

    .line 239
    const/16 v0, 0xa

    return v0

    .line 237
    :sswitch_0
    const/4 v0, 0x5

    return v0

    .line 235
    :sswitch_1
    const/16 v0, 0x19

    return v0

    .line 233
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 231
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

    .line 244
    packed-switch p0, :pswitch_data_0

    .line 252
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 250
    :pswitch_1
    const/16 v0, 0x14

    return v0

    .line 248
    :pswitch_2
    const/16 v0, 0x13

    return v0

    .line 246
    :pswitch_3
    const/16 v0, 0xe

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static mapValueToServiceStatus(I)I
    .locals 1
    .param p0, "value"    # I

    .line 257
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 263
    return v0

    .line 259
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 261
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

    .line 1794
    packed-switch p0, :pswitch_data_0

    .line 1804
    const/4 v0, -0x1

    return v0

    .line 1802
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 1800
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 1798
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1796
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

    .line 1810
    new-instance v0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;-><init>()V

    .line 1812
    .local v0, "outBlockReasonDetails":Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReasonType:I

    if-eqz v1, :cond_0

    .line 1813
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReasonType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRegFailureReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReasonType(I)V

    .line 1817
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReason:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1818
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockReasonDetails;->regFailureReason:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->setRegFailureReason(I)V

    .line 1821
    :cond_1
    return-object v0
.end method

.method private static toBlockStatus(Lvendor/qti/hardware/radio/ims/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 2
    .param p0, "inBlockStatus"    # Lvendor/qti/hardware/radio/ims/BlockStatus;

    .line 1778
    if-nez p0, :cond_0

    .line 1779
    const/4 v0, 0x0

    return-object v0

    .line 1782
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/BlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/BlockStatusInfo;-><init>()V

    .line 1784
    .local v0, "outBlockStatus":Lorg/codeaurora/ims/BlockStatusInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    if-eqz v1, :cond_1

    .line 1785
    iget v1, p0, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toBlockReason(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReason(I)V

    .line 1788
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReasonDetails:Lvendor/qti/hardware/radio/ims/BlockReasonDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toBlockReasonDetails(Lvendor/qti/hardware/radio/ims/BlockReasonDetails;)Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;->setReasonDetails(Lorg/codeaurora/ims/BlockReasonDetailsInfo;)V

    .line 1790
    return-object v0
.end method

.method public static toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;
    .locals 5
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .line 1964
    if-nez p0, :cond_0

    .line 1965
    const/4 v0, 0x0

    return-object v0

    .line 1968
    :cond_0
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->priority:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toPriority(I)I

    move-result v0

    .line 1969
    .local v0, "priority":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->subject:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 1970
    .local v1, "subject":Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/codeaurora/ims/CallComposerInfo$Location;->UNKNOWN:Lorg/codeaurora/ims/CallComposerInfo$Location;

    .line 1971
    .local v2, "location":Lorg/codeaurora/ims/CallComposerInfo$Location;
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/CallLocation;->radius:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 1972
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/CallLocation;

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toLocation(Lvendor/qti/hardware/radio/ims/CallLocation;)Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v2

    .line 1974
    :cond_2
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->imageUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1976
    .local v3, "imageUrl":Landroid/net/Uri;
    new-instance v4, Lorg/codeaurora/ims/CallComposerInfo;

    invoke-direct {v4, v0, v1, v3, v2}, Lorg/codeaurora/ims/CallComposerInfo;-><init>(ILjava/lang/String;Landroid/net/Uri;Lorg/codeaurora/ims/CallComposerInfo$Location;)V

    return-object v4
.end method

.method public static toCallDetails(Lvendor/qti/hardware/radio/ims/CallDetails;)Lorg/codeaurora/ims/CallDetails;
    .locals 5
    .param p0, "inCallDetails"    # Lvendor/qti/hardware/radio/ims/CallDetails;

    .line 1658
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    .line 1660
    .local v0, "outCallDetails":Lorg/codeaurora/ims/CallDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 1662
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    if-eqz v1, :cond_0

    .line 1663
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallDomain(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1666
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1667
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallSubstateConstants(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 1671
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    if-eq v1, v2, :cond_2

    .line 1672
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 1675
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 1676
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1677
    iget-object v3, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    .line 1676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1680
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 1681
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 1683
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    if-eq v1, v2, :cond_4

    .line 1684
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 1687
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    if-eqz v1, :cond_5

    .line 1688
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRttMode(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 1691
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1692
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 1695
    :cond_6
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call Details = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1697
    return-object v0
.end method

.method public static toCallDomain(I)I
    .locals 1
    .param p0, "callDomain"    # I

    .line 451
    packed-switch p0, :pswitch_data_0

    .line 463
    const/4 v0, 0x4

    return v0

    .line 459
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 457
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 455
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 453
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

    .line 2398
    if-nez p0, :cond_0

    .line 2399
    const/4 v0, 0x0

    return-object v0

    .line 2402
    :cond_0
    array-length v0, p0

    .line 2403
    .local v0, "size":I
    new-array v1, v0, [Lorg/codeaurora/ims/CallForwardStatus;

    .line 2405
    .local v1, "toList":[Lorg/codeaurora/ims/CallForwardStatus;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2406
    aget-object v3, p0, v2

    .line 2407
    .local v3, "fromCfStatus":Lvendor/qti/hardware/radio/ims/CallForwardStatus;
    new-instance v4, Lorg/codeaurora/ims/CallForwardStatus;

    iget v5, v3, Lvendor/qti/hardware/radio/ims/CallForwardStatus;->reason:I

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardStatus;->status:I

    invoke-static {v6}, Lorg/codeaurora/ims/StableAidl;->toCfStatus(I)I

    move-result v6

    iget-object v7, v3, Lvendor/qti/hardware/radio/ims/CallForwardStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 2408
    invoke-static {v7}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/codeaurora/ims/CallForwardStatus;-><init>(IILandroid/telephony/ims/ImsReasonInfo;)V

    aput-object v4, v1, v2

    .line 2405
    .end local v3    # "fromCfStatus":Lvendor/qti/hardware/radio/ims/CallForwardStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2410
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static toCallForwardStatusInfo(Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;
    .locals 3
    .param p0, "imsRadioCFStatusInfo"    # Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;

    .line 2379
    new-instance v0, Lorg/codeaurora/ims/CallForwardStatusInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->status:[Lvendor/qti/hardware/radio/ims/CallForwardStatus;

    .line 2381
    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toCallForwardStatus([Lvendor/qti/hardware/radio/ims/CallForwardStatus;)[Lorg/codeaurora/ims/CallForwardStatus;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/CallForwardStatusInfo;-><init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V

    .line 2379
    return-object v0
.end method

.method public static toCallModify(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;
    .locals 3
    .param p0, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 1640
    new-instance v0, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 1642
    .local v0, "callModify":Lorg/codeaurora/ims/CallModify;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallDetails(Lvendor/qti/hardware/radio/ims/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 1644
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callIndex:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 1645
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->callIndex:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 1648
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1649
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->failCause:I

    if-eqz v1, :cond_1

    .line 1650
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->failCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallModifyFailCause(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 1653
    :cond_1
    return-object v0
.end method

.method private static toCallModifyFailCause(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 1717
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1745
    return v0

    .line 1743
    :pswitch_0
    const/16 v0, 0x21

    return v0

    .line 1741
    :pswitch_1
    const/16 v0, 0x20

    return v0

    .line 1739
    :pswitch_2
    const/16 v0, 0x1f

    return v0

    .line 1737
    :pswitch_3
    const/16 v0, 0x1e

    return v0

    .line 1735
    :pswitch_4
    const/16 v0, 0x1d

    return v0

    .line 1733
    :pswitch_5
    const/16 v0, 0x1c

    return v0

    .line 1731
    :pswitch_6
    const/16 v0, 0x1b

    return v0

    .line 1729
    :pswitch_7
    const/16 v0, 0x10

    return v0

    .line 1727
    :pswitch_8
    const/4 v0, 0x7

    return v0

    .line 1725
    :pswitch_9
    const/4 v0, 0x6

    return v0

    .line 1723
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1721
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1719
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

    .line 2229
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->type:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCallProgressInfoType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setType(I)V

    .line 2231
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonCode:I

    const/16 v1, 0x7fff

    if-eq v0, v1, :cond_0

    .line 2232
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonCode:I

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setReasonCode(I)V

    .line 2235
    :cond_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2236
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallProgressInfo;->reasonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CallProgressInfo;->setReasonText(Ljava/lang/String;)V

    .line 2238
    :cond_1
    return-void
.end method

.method private static toCallProgressInfoType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2211
    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    .line 2223
    return v0

    .line 2221
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 2219
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2217
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 2215
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 2213
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

    .line 2164
    packed-switch p0, :pswitch_data_0

    .line 2179
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2176
    :pswitch_0
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2174
    :pswitch_1
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2172
    :pswitch_2
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2170
    :pswitch_3
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2168
    :pswitch_4
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 2166
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

    .line 1701
    sparse-switch p0, :sswitch_data_0

    .line 1712
    const/4 v0, 0x0

    return v0

    .line 1709
    :sswitch_0
    const/16 v0, 0x8

    return v0

    .line 1707
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 1705
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 1703
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

    .line 1439
    packed-switch p0, :pswitch_data_0

    .line 1468
    const/16 v0, 0xa

    return v0

    .line 1441
    :pswitch_0
    const/16 v0, 0x1a

    return v0

    .line 1443
    :pswitch_1
    const/16 v0, 0x1b

    return v0

    .line 1465
    :pswitch_2
    const/16 v0, 0x19

    return v0

    .line 1463
    :pswitch_3
    const/4 v0, 0x5

    return v0

    .line 1461
    :pswitch_4
    const/16 v0, 0x18

    return v0

    .line 1459
    :pswitch_5
    const/16 v0, 0x17

    return v0

    .line 1457
    :pswitch_6
    const/16 v0, 0x16

    return v0

    .line 1455
    :pswitch_7
    const/16 v0, 0x15

    return v0

    .line 1453
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 1451
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 1449
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1447
    :pswitch_b
    const/4 v0, 0x1

    return v0

    .line 1445
    :pswitch_c
    const/4 v0, 0x0

    return v0

    nop

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

.method public static toCallWaitingArray(Lvendor/qti/hardware/radio/ims/CallWaitingInfo;)[I
    .locals 5
    .param p0, "callWaitingInfo"    # Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .line 3286
    const/4 v0, 0x0

    .line 3288
    .local v0, "response":[I
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceStatus:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSuppSvcStatus(I)I

    move-result v1

    .line 3289
    .local v1, "outServiceStatus":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3290
    new-array v0, v2, [I

    .line 3291
    aput v3, v0, v3

    goto :goto_0

    .line 3293
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 3294
    aput v2, v0, v3

    .line 3295
    iget v3, p0, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->serviceClass:I

    aput v3, v0, v2

    .line 3297
    :goto_0
    return-object v0
.end method

.method private static toCfStatus(I)I
    .locals 1
    .param p0, "status"    # I

    .line 2385
    packed-switch p0, :pswitch_data_0

    .line 2390
    const/4 v0, 0x1

    return v0

    .line 2387
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static toClirArray(Lvendor/qti/hardware/radio/ims/ClirInfo;)[I
    .locals 4
    .param p0, "clirInfo"    # Lvendor/qti/hardware/radio/ims/ClirInfo;

    .line 3273
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3274
    .local v0, "response":[I
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 3275
    const/4 v1, 0x0

    iget v3, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    aput v3, v0, v1

    .line 3277
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramM:I

    if-eq v1, v2, :cond_1

    .line 3278
    const/4 v1, 0x1

    iget v2, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramM:I

    aput v2, v0, v1

    .line 3280
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClirResponse from ImsRadio. param_m - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramM:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "param_n - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lvendor/qti/hardware/radio/ims/ClirInfo;->paramN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3282
    return-object v0
.end method

.method public static toConferenceCallState(I)I
    .locals 1
    .param p0, "conferenceCallState"    # I

    .line 1852
    packed-switch p0, :pswitch_data_0

    .line 1860
    const/4 v0, -0x1

    return v0

    .line 1858
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1856
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1854
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

    .line 1623
    new-instance v0, Lorg/codeaurora/ims/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ConfInfo;-><init>()V

    .line 1625
    .local v0, "info":Lorg/codeaurora/ims/ConfInfo;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1626
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    invoke-static {v1}, Lorg/codeaurora/ims/ImsUtils;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfInfoUri(Ljava/util/ArrayList;)V

    .line 1627
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefreshConferenceInfo: confUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->confInfoUri:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1630
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->conferenceCallState:I

    if-eqz v1, :cond_1

    .line 1631
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->conferenceCallState:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toConferenceCallState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfCallState(I)V

    .line 1634
    :cond_1
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefreshConferenceInfo: conferenceCallState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->conferenceCallState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1636
    return-object v0
.end method

.method public static toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;
    .locals 2
    .param p0, "configInfo"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 3260
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->hasBoolValue:Z

    if-eqz v0, :cond_0

    .line 3261
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->boolValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 3262
    :cond_0
    iget v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 3263
    iget v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 3264
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3265
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    return-object v0

    .line 3266
    :cond_2
    iget v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    if-eqz v0, :cond_3

    .line 3267
    iget v0, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsConfigErrorCode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 3269
    :cond_3
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->toImsConfig(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;

    move-result-object v0

    return-object v0
.end method

.method private static toCrsData(Lvendor/qti/hardware/radio/ims/CrsData;Lorg/codeaurora/ims/CrsData;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/CrsData;
    .param p1, "to"    # Lorg/codeaurora/ims/CrsData;

    .line 2206
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CrsData;->type:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCrsType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CrsData;->setCrsType(I)V

    .line 2207
    iget v0, p0, Lvendor/qti/hardware/radio/ims/CrsData;->originalCallType:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/CrsData;->setOriginalCallType(I)V

    .line 2208
    return-void
.end method

.method private static toCrsType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 2190
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2201
    return v0

    .line 2198
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 2196
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2194
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 2192
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

.method private static toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;IIIILjava/lang/String;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 5
    .param p0, "ccInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p1, "verstatVerificationStatus"    # I
    .param p2, "autoRejectionCause"    # I
    .param p3, "SipErrorCode"    # I
    .param p4, "callType"    # I
    .param p5, "number"    # Ljava/lang/String;

    .line 2030
    new-instance v0, Lorg/codeaurora/ims/VerstatInfo;

    .line 2031
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toVerificationStatus(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/codeaurora/ims/VerstatInfo;-><init>(ZI)V

    .line 2032
    .local v0, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    new-instance v1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v1, p0, v0}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;)V

    .line 2034
    .local v1, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsReasonInfoCode(I)I

    move-result v2

    .line 2035
    .local v2, "imsReasonInfoCode":I
    if-nez v2, :cond_0

    .line 2036
    const/16 v3, 0x640

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v2, v3

    .line 2037
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 2038
    new-instance v3, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v3}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2039
    iget-object v3, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-static {p4}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result v4

    iput v4, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2040
    iput-object p5, v1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2041
    return-object v1
.end method

.method public static toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 7
    .param p0, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    .line 2045
    if-nez p0, :cond_0

    .line 2046
    const/4 v0, 0x0

    return-object v0

    .line 2049
    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->verificationStatus:I

    iget v3, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->autoRejectionCause:I

    iget v4, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->sipErrorCode:I

    iget v5, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->callType:I

    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;IIIILjava/lang/String;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    return-object v0
.end method

.method public static toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 8
    .param p0, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;

    .line 2013
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2014
    return-object v1

    .line 2017
    :cond_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 2018
    :cond_1
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v1

    move-object v2, v1

    :goto_0
    nop

    .line 2020
    .local v2, "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
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

    invoke-static/range {v2 .. v7}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lorg/codeaurora/ims/CallComposerInfo;IIIILjava/lang/String;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    return-object v0
.end method

.method private static toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 10
    .param p0, "call"    # Lvendor/qti/hardware/radio/ims/CallInfo;

    .line 2065
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    new-instance v1, Lorg/codeaurora/ims/VerstatInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/VerstatInfo;->canMarkUnwantedCall:Z

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/VerstatInfo;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/VerstatInfo;->verificationStatus:I

    .line 2066
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toVerificationStatus(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/codeaurora/ims/VerstatInfo;-><init>(ZI)V

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/VerstatInfo;)V

    .line 2067
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    if-eqz v1, :cond_0

    .line 2068
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallState(I)Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 2071
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 2072
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->index:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 2075
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    if-eq v1, v2, :cond_2

    .line 2076
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->toa:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 2079
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 2080
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 2082
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    if-eq v1, v2, :cond_3

    .line 2083
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->als:I

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 2086
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 2088
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 2090
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->numberPresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 2092
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 2093
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->namePresentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/DriverCallIms;->presentationFromCLIP(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 2096
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 2098
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->tirMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->isTirOverwriteAllowed(I)Z

    move-result v1

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    .line 2100
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/CrsData;

    iget-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/StableAidl;->toCrsData(Lvendor/qti/hardware/radio/ims/CrsData;Lorg/codeaurora/ims/CrsData;)V

    .line 2101
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isPreparatory:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 2103
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 2104
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->diversionInfo:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 2106
    nop

    .line 2107
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->isVideoConfSupported:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    .line 2108
    :cond_4
    const/4 v1, 0x0

    :goto_0
    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 2110
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallDetails(Lvendor/qti/hardware/radio/ims/CallDetails;)Lorg/codeaurora/ims/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 2112
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2113
    iget-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget v3, v0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 2115
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/CallProgressInfo;

    iget-object v3, v0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/StableAidl;->toCallProgressInfo(Lvendor/qti/hardware/radio/ims/CallProgressInfo;Lorg/codeaurora/ims/CallProgressInfo;)V

    .line 2117
    const/4 v1, 0x0

    .line 2118
    .local v1, "imsReasonCode":I
    const/4 v3, 0x0

    .line 2119
    .local v3, "imsReasonExtraCode":I
    const/4 v4, 0x0

    .line 2120
    .local v4, "imsReasonExtraMessage":Ljava/lang/String;
    iget-object v5, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget v5, v5, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->failCause:I

    .line 2122
    .local v5, "failCause":I
    if-eqz v5, :cond_8

    .line 2123
    const/4 v6, 0x0

    .line 2125
    .local v6, "networkError":Ljava/lang/String;
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2126
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2127
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object v6, v7, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 2128
    sget-object v7, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CallFailCauseResponse: error string = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2132
    :cond_5
    invoke-static {v5}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsReasonInfoCode(I)I

    move-result v1

    .line 2134
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-boolean v7, v7, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->hasErrorDetails:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v7, v7, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v7, v7, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    if-eq v7, v2, :cond_6

    .line 2136
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    move v3, v2

    .end local v3    # "imsReasonExtraCode":I
    .local v2, "imsReasonExtraCode":I
    goto :goto_1

    .line 2138
    .end local v2    # "imsReasonExtraCode":I
    .restart local v3    # "imsReasonExtraCode":I
    :cond_6
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v7, "CallFailCauseResponse has no int error code!"

    invoke-static {v2, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    :goto_1
    invoke-static {v5}, Lorg/codeaurora/ims/StableAidl;->toSipError(I)I

    move-result v2

    iput v2, v0, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    .line 2144
    if-eqz v6, :cond_7

    .line 2145
    move-object v2, v6

    move-object v4, v2

    .line 2147
    .end local v6    # "networkError":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 2148
    :cond_8
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v6, "CallFailCauseResponse failCause is Invalid"

    invoke-static {v2, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    :goto_2
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 2155
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 2157
    iget-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    if-eqz v6, :cond_9

    .line 2158
    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/CallInfo;->additionalCallInfo:Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;

    iget v6, v6, Lvendor/qti/hardware/radio/ims/MsimAdditionalCallInfo;->additionalCode:I

    invoke-static {v6}, Lorg/codeaurora/ims/StableAidlErrorCode;->toMsimAdditionalCallInfoCode(I)I

    move-result v6

    goto :goto_3

    .line 2159
    :cond_9
    const/4 v6, -0x1

    .line 2157
    :goto_3
    invoke-virtual {v2, v6}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->setCode(I)V

    .line 2160
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

    .line 2055
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2057
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2058
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v2

    .line 2059
    .local v2, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    .end local v2    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2061
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static toExtraType(I)I
    .locals 1
    .param p0, "extraHo"    # I

    .line 1954
    packed-switch p0, :pswitch_data_0

    .line 1958
    const/4 v0, -0x1

    return v0

    .line 1956
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

    .line 2541
    const/16 v0, 0x8

    packed-switch p0, :pswitch_data_0

    .line 2568
    return v0

    .line 2563
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 2561
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 2559
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 2557
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 2555
    :pswitch_4
    return v0

    .line 2553
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 2551
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 2549
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 2565
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 2547
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 2545
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 2543
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

    .line 2875
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2883
    return v0

    .line 2881
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 2879
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2877
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

    .line 2747
    const/16 v0, 0x7d3

    packed-switch p0, :pswitch_data_0

    .line 2757
    return v0

    .line 2753
    :pswitch_0
    const/16 v0, 0x7d2

    return v0

    .line 2751
    :pswitch_1
    const/16 v0, 0x7d1

    return v0

    .line 2749
    :pswitch_2
    const/16 v0, 0x7d0

    return v0

    .line 2755
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

    .line 1905
    if-nez p0, :cond_0

    .line 1906
    const/4 v0, 0x0

    return-object v0

    .line 1909
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/HoInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/HoInfo;-><init>()V

    .line 1911
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->type:I

    if-eqz v1, :cond_1

    .line 1912
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toHandoverType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setType(I)V

    .line 1915
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->srcTech:I

    if-eqz v1, :cond_2

    .line 1916
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->srcTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setSrcTech(I)V

    .line 1919
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->targetTech:I

    if-eqz v1, :cond_3

    .line 1920
    iget v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->targetTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setTargetTech(I)V

    .line 1923
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/Extra;->type:I

    if-eqz v1, :cond_4

    .line 1924
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/Extra;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/Extra;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toExtraType(I)I

    move-result v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/Extra;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/Extra;->extraInfo:[B

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/HoInfo;->setExtra(I[B)V

    .line 1928
    :cond_4
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorCode(Ljava/lang/String;)V

    .line 1929
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/HandoverInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/HoInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 1931
    return-object v0
.end method

.method public static toHandoverType(I)I
    .locals 1
    .param p0, "inType"    # I

    .line 1935
    packed-switch p0, :pswitch_data_0

    .line 1949
    const/4 v0, -0x1

    return v0

    .line 1945
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 1947
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 1943
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1941
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1939
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 1937
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

    .line 2851
    packed-switch p0, :pswitch_data_0

    .line 2867
    const/4 v0, -0x1

    return v0

    .line 2863
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2861
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2859
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2857
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2855
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2853
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

    .line 2981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2982
    .local v0, "cfInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsCallForwardInfo;>;"
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cfData:[Lvendor/qti/hardware/radio/ims/CfData;

    if-nez v1, :cond_0

    .line 2983
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cfData is null, which is unexpected for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2983
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2986
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cfData:[Lvendor/qti/hardware/radio/ims/CfData;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2987
    .local v1, "cfData":Lvendor/qti/hardware/radio/ims/CfData;
    iget-object v2, v1, Lvendor/qti/hardware/radio/ims/CfData;->cfInfo:[Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    array-length v2, v2

    .line 2988
    .local v2, "num":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2989
    iget-object v4, v1, Lvendor/qti/hardware/radio/ims/CfData;->cfInfo:[Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    aget-object v4, v4, v3

    .line 2990
    .local v4, "rCfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    new-instance v12, Landroid/telephony/ims/ImsCallForwardInfo;

    iget v5, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    .line 2991
    invoke-static {v5}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardInfo(I)I

    move-result v6

    iget v7, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    iget v8, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    iget v9, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    iget-object v10, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    iget v11, v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    .line 2990
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2995
    sget-object v5, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SS Data] CF Info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    .end local v4    # "rCfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2998
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

    .line 2321
    const/4 v0, 0x0

    .line 2322
    .local v0, "outCfInfoList":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    if-eqz p0, :cond_a

    .line 2323
    array-length v1, p0

    .line 2324
    .local v1, "infoListSize":I
    new-array v0, v1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 2325
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_9

    .line 2326
    new-instance v3, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    invoke-direct {v3}, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;-><init>()V

    aput-object v3, v0, v2

    .line 2327
    aget-object v3, p0, v2

    .line 2328
    .local v3, "inCfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    .line 2329
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->status:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->status:I

    .line 2331
    :cond_0
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    if-eq v4, v5, :cond_1

    .line 2332
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->reason:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->reason:I

    .line 2334
    :cond_1
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    if-eq v4, v5, :cond_2

    .line 2335
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->serviceClass:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->serviceClass:I

    .line 2337
    :cond_2
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    if-eq v4, v5, :cond_3

    .line 2338
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->toa:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->toa:I

    .line 2340
    :cond_3
    aget-object v4, v0, v2

    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->number:Ljava/lang/String;

    .line 2341
    iget v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    if-eq v4, v5, :cond_4

    .line 2342
    aget-object v4, v0, v2

    iget v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->timeSeconds:I

    iput v6, v4, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->timeSeconds:I

    .line 2344
    :cond_4
    iget-object v4, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2345
    .local v4, "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;
    iget v6, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    if-eq v6, v5, :cond_5

    .line 2346
    aget-object v6, v0, v2

    iget v7, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    iput v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startHour:I

    .line 2348
    :cond_5
    iget v6, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    if-eq v6, v5, :cond_6

    .line 2349
    aget-object v6, v0, v2

    iget v7, v4, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    iput v7, v6, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->startMinute:I

    .line 2351
    :cond_6
    iget-object v6, v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;

    .line 2352
    .local v6, "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;
    iget v7, v6, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    if-eq v7, v5, :cond_7

    .line 2353
    aget-object v7, v0, v2

    iget v8, v6, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->hour:I

    iput v8, v7, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endHour:I

    .line 2355
    :cond_7
    iget v7, v6, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    if-eq v7, v5, :cond_8

    .line 2356
    aget-object v5, v0, v2

    iget v7, v6, Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;->minute:I

    iput v7, v5, Lorg/codeaurora/ims/ImsCallForwardTimerInfo;->endMinute:I

    .line 2325
    .end local v3    # "inCfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .end local v4    # "startCallTimerInfo":Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;
    .end local v6    # "endCallTimerInfo":Lvendor/qti/hardware/radio/ims/CallFwdTimerInfo;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2359
    .end local v1    # "infoListSize":I
    .end local v2    # "i":I
    :cond_9
    goto :goto_1

    .line 2360
    :cond_a
    const/4 v1, 0x0

    new-array v0, v1, [Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    .line 2361
    const-class v1, Lorg/codeaurora/ims/StableAidl;

    const-string v2, "inCfInfoList is null."

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2363
    :goto_1
    return-object v0
.end method

.method private static toImsConfig(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;
    .locals 3
    .param p0, "configInfo"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 1044
    if-nez p0, :cond_0

    .line 1045
    const/4 v0, 0x0

    return-object v0

    .line 1048
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 1049
    .local v0, "config":Lorg/codeaurora/ims/ImsConfigItem;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toImsConfigItem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 1050
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 1051
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 1054
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1055
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 1058
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 1060
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    if-eqz v1, :cond_3

    .line 1061
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidlErrorCode;->toImsConfigErrorCode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    .line 1065
    :cond_3
    return-object v0
.end method

.method private static toImsConfigItem(I)I
    .locals 1
    .param p0, "item"    # I

    .line 1069
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1223
    :pswitch_0
    return v0

    .line 1221
    :pswitch_1
    const/16 v0, 0x4d

    return v0

    .line 1219
    :pswitch_2
    const/16 v0, 0x4b

    return v0

    .line 1217
    :pswitch_3
    const/16 v0, 0x4a

    return v0

    .line 1215
    :pswitch_4
    const/16 v0, 0x49

    return v0

    .line 1213
    :pswitch_5
    const/16 v0, 0x48

    return v0

    .line 1211
    :pswitch_6
    const/16 v0, 0x47

    return v0

    .line 1209
    :pswitch_7
    const/16 v0, 0x45

    return v0

    .line 1207
    :pswitch_8
    const/16 v0, 0x44

    return v0

    .line 1205
    :pswitch_9
    const/16 v0, 0x43

    return v0

    .line 1203
    :pswitch_a
    const/16 v0, 0x42

    return v0

    .line 1201
    :pswitch_b
    const/16 v0, 0x41

    return v0

    .line 1199
    :pswitch_c
    const/16 v0, 0x40

    return v0

    .line 1197
    :pswitch_d
    const/16 v0, 0x3f

    return v0

    .line 1195
    :pswitch_e
    const/16 v0, 0x3e

    return v0

    .line 1193
    :pswitch_f
    const/16 v0, 0x3d

    return v0

    .line 1191
    :pswitch_10
    const/16 v0, 0x3c

    return v0

    .line 1189
    :pswitch_11
    const/16 v0, 0x3b

    return v0

    .line 1187
    :pswitch_12
    const/16 v0, 0x3a

    return v0

    .line 1185
    :pswitch_13
    const/16 v0, 0x39

    return v0

    .line 1183
    :pswitch_14
    const/16 v0, 0x38

    return v0

    .line 1181
    :pswitch_15
    const/16 v0, 0x37

    return v0

    .line 1179
    :pswitch_16
    const/16 v0, 0x36

    return v0

    .line 1177
    :pswitch_17
    const/16 v0, 0x35

    return v0

    .line 1175
    :pswitch_18
    const/16 v0, 0x34

    return v0

    .line 1173
    :pswitch_19
    const/16 v0, 0x33

    return v0

    .line 1171
    :pswitch_1a
    const/16 v0, 0x32

    return v0

    .line 1169
    :pswitch_1b
    const/16 v0, 0x31

    return v0

    .line 1167
    :pswitch_1c
    const/16 v0, 0x30

    return v0

    .line 1165
    :pswitch_1d
    const/16 v0, 0x2f

    return v0

    .line 1163
    :pswitch_1e
    const/16 v0, 0x2e

    return v0

    .line 1161
    :pswitch_1f
    const/16 v0, 0x2d

    return v0

    .line 1159
    :pswitch_20
    const/16 v0, 0x2c

    return v0

    .line 1157
    :pswitch_21
    const/16 v0, 0x2b

    return v0

    .line 1155
    :pswitch_22
    const/16 v0, 0x2a

    return v0

    .line 1153
    :pswitch_23
    const/16 v0, 0x29

    return v0

    .line 1151
    :pswitch_24
    const/16 v0, 0x28

    return v0

    .line 1149
    :pswitch_25
    const/16 v0, 0x27

    return v0

    .line 1147
    :pswitch_26
    const/16 v0, 0x26

    return v0

    .line 1145
    :pswitch_27
    const/16 v0, 0x25

    return v0

    .line 1143
    :pswitch_28
    const/16 v0, 0x24

    return v0

    .line 1141
    :pswitch_29
    const/16 v0, 0x23

    return v0

    .line 1139
    :pswitch_2a
    const/16 v0, 0x22

    return v0

    .line 1137
    :pswitch_2b
    const/16 v0, 0x21

    return v0

    .line 1135
    :pswitch_2c
    const/16 v0, 0x20

    return v0

    .line 1133
    :pswitch_2d
    const/16 v0, 0x1f

    return v0

    .line 1131
    :pswitch_2e
    const/16 v0, 0x1e

    return v0

    .line 1129
    :pswitch_2f
    const/16 v0, 0x1d

    return v0

    .line 1127
    :pswitch_30
    const/16 v0, 0x1c

    return v0

    .line 1125
    :pswitch_31
    const/16 v0, 0x1b

    return v0

    .line 1123
    :pswitch_32
    const/16 v0, 0x1a

    return v0

    .line 1121
    :pswitch_33
    const/16 v0, 0x19

    return v0

    .line 1119
    :pswitch_34
    const/16 v0, 0x18

    return v0

    .line 1117
    :pswitch_35
    const/16 v0, 0x17

    return v0

    .line 1115
    :pswitch_36
    const/16 v0, 0x16

    return v0

    .line 1113
    :pswitch_37
    const/16 v0, 0x15

    return v0

    .line 1111
    :pswitch_38
    const/16 v0, 0x14

    return v0

    .line 1109
    :pswitch_39
    const/16 v0, 0x13

    return v0

    .line 1107
    :pswitch_3a
    const/16 v0, 0x12

    return v0

    .line 1105
    :pswitch_3b
    const/16 v0, 0x11

    return v0

    .line 1103
    :pswitch_3c
    const/16 v0, 0x10

    return v0

    .line 1101
    :pswitch_3d
    const/16 v0, 0xf

    return v0

    .line 1099
    :pswitch_3e
    const/16 v0, 0xe

    return v0

    .line 1097
    :pswitch_3f
    const/16 v0, 0xd

    return v0

    .line 1095
    :pswitch_40
    const/16 v0, 0xc

    return v0

    .line 1093
    :pswitch_41
    const/16 v0, 0xb

    return v0

    .line 1091
    :pswitch_42
    const/16 v0, 0xa

    return v0

    .line 1089
    :pswitch_43
    const/16 v0, 0x9

    return v0

    .line 1087
    :pswitch_44
    const/16 v0, 0x8

    return v0

    .line 1085
    :pswitch_45
    const/4 v0, 0x7

    return v0

    .line 1083
    :pswitch_46
    const/4 v0, 0x6

    return v0

    .line 1081
    :pswitch_47
    const/4 v0, 0x5

    return v0

    .line 1079
    :pswitch_48
    const/4 v0, 0x4

    return v0

    .line 1077
    :pswitch_49
    const/4 v0, 0x3

    return v0

    .line 1075
    :pswitch_4a
    const/4 v0, 0x2

    return v0

    .line 1073
    :pswitch_4b
    const/4 v0, 0x1

    return v0

    .line 1071
    :pswitch_4c
    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;
    .locals 3
    .param p0, "inRegistration"    # Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 1344
    if-nez p0, :cond_0

    .line 1345
    const/4 v0, 0x0

    return-object v0

    .line 1348
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsRegistrationInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsRegistrationInfo;-><init>()V

    .line 1349
    .local v0, "outRegistration":Lorg/codeaurora/ims/ImsRegistrationInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->state:I

    if-eqz v1, :cond_1

    .line 1350
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRegState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setState(I)V

    .line 1353
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorCode:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1354
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorCode:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorCode(I)V

    .line 1357
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 1359
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->radioTech:I

    if-eqz v1, :cond_3

    .line 1360
    iget v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setRadioTech(I)V

    .line 1363
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->setPAssociatedUris(Ljava/lang/String;)V

    .line 1365
    return-object v0
.end method

.method public static toImsSsData(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)Landroid/telephony/ims/ImsSsData;
    .locals 7
    .param p0, "ss"    # Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;

    .line 3058
    new-instance v6, Landroid/telephony/ims/ImsSsData$Builder;

    iget v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceType:I

    .line 3059
    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toServiceType(I)I

    move-result v1

    iget v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->requestType:I

    .line 3060
    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toRequestType(I)I

    move-result v2

    iget v0, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->teleserviceType:I

    .line 3061
    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toTeleserviceType(I)I

    move-result v3

    iget v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->serviceClass:I

    iget v5, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->result:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsSsData$Builder;-><init>(IIIII)V

    .line 3063
    .local v0, "ssDataBuilder":Landroid/telephony/ims/ImsSsData$Builder;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsData$Builder;->build()Landroid/telephony/ims/ImsSsData;

    move-result-object v1

    .line 3065
    .local v1, "ssData":Landroid/telephony/ims/ImsSsData;
    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData;->isTypeCf()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3066
    invoke-static {p0, v1}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardInfoList(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;

    move-result-object v2

    .line 3067
    .local v2, "cfInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsCallForwardInfo;>;"
    if-eqz v2, :cond_0

    .line 3068
    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsSsData$Builder;->setCallForwardingInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    .line 3070
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

    .line 3071
    invoke-static {p0, v1}, Lorg/codeaurora/ims/StableAidl;->toImsSsInfoListCb(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;

    move-result-object v2

    .line 3072
    .local v2, "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    if-eqz v2, :cond_2

    .line 3073
    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsSsData$Builder;->setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    .line 3075
    .end local v2    # "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    :cond_2
    goto :goto_0

    .line 3082
    :cond_3
    invoke-static {p0, v1}, Lorg/codeaurora/ims/StableAidl;->toImsSsInfoList(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;Landroid/telephony/ims/ImsSsData;)Ljava/util/List;

    move-result-object v2

    .line 3083
    .restart local v2    # "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    if-eqz v2, :cond_4

    .line 3084
    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsSsData$Builder;->setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    .line 3087
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

    .line 3024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3025
    .local v0, "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->ssInfoData:[Lvendor/qti/hardware/radio/ims/SsInfoData;

    if-nez v1, :cond_0

    .line 3026
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsSsInfo is null, which is unexpected for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3026
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3029
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->ssInfoData:[Lvendor/qti/hardware/radio/ims/SsInfoData;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 3030
    .local v1, "ssInfoData":Lvendor/qti/hardware/radio/ims/SsInfoData;
    iget-object v3, v1, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    array-length v3, v3

    .line 3031
    .local v3, "num":I
    if-lez v3, :cond_3

    .line 3032
    new-instance v4, Landroid/telephony/ims/ImsSsInfo$Builder;

    iget-object v5, v1, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget v5, v5, v2

    invoke-direct {v4, v5}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 3034
    .local v4, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeClir()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3036
    iget-object v5, v1, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget v2, v5, v2

    invoke-virtual {v4, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 3037
    if-le v3, v6, :cond_2

    .line 3038
    iget-object v2, v1, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget v2, v2, v6

    invoke-virtual {v4, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    goto :goto_0

    .line 3040
    :cond_1
    if-le v3, v6, :cond_2

    .line 3041
    iget-object v2, v1, Lvendor/qti/hardware/radio/ims/SsInfoData;->ssInfo:[I

    aget v2, v2, v6

    invoke-virtual {v4, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 3043
    :cond_2
    :goto_0
    invoke-virtual {v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3046
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

    .line 3003
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3004
    .local v0, "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    if-nez v1, :cond_0

    .line 3005
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cbNumInfo is null, which is unexpected for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    invoke-virtual {p1}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3005
    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3008
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    array-length v1, v1

    .line 3009
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3010
    new-instance v3, Landroid/telephony/ims/ImsSsInfo$Builder;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aget-object v4, v4, v2

    iget v4, v4, Lvendor/qti/hardware/radio/ims/CbNumInfo;->status:I

    invoke-direct {v3, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 3013
    .local v3, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    aget-object v4, v4, v2

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 3015
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3016
    sget-object v4, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SS Data] ICB Info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    .end local v3    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3019
    .end local v1    # "num":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;
    .locals 3
    .param p0, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 1282
    if-nez p0, :cond_0

    .line 1283
    const/4 v0, 0x0

    return-object v0

    .line 1286
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;-><init>()V

    .line 1287
    .local v0, "subConfig":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->simultStackCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1288
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->simultStackCount:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSubConfigDetails;->setSimultStackCount(I)V

    .line 1291
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->imsStackEnabled:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1292
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->imsStackEnabled:[Z

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSubConfigDetails;->addImsStackEnabled(Z)V

    .line 1291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1295
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)Lorg/codeaurora/ims/sms/IncomingSms;
    .locals 4
    .param p0, "imsSms"    # Lvendor/qti/hardware/radio/ims/IncomingSms;

    .line 2888
    iget v0, p0, Lvendor/qti/hardware/radio/ims/IncomingSms;->verstat:I

    invoke-static {v0}, Lorg/codeaurora/ims/StableAidl;->toFrameworkVerstat(I)I

    move-result v0

    .line 2889
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

    .line 1256
    packed-switch p0, :pswitch_data_0

    .line 1263
    const/4 v0, 0x2

    return v0

    .line 1260
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1258
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

    .line 1981
    new-instance v6, Lorg/codeaurora/ims/CallComposerInfo$Location;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallLocation;->radius:F

    iget-wide v2, p0, Lvendor/qti/hardware/radio/ims/CallLocation;->latitude:D

    iget-wide v4, p0, Lvendor/qti/hardware/radio/ims/CallLocation;->longitude:D

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/CallComposerInfo$Location;-><init>(FDD)V

    .line 1984
    .local v0, "location":Lorg/codeaurora/ims/CallComposerInfo$Location;
    return-object v0
.end method

.method private static toMessageDetails(Lvendor/qti/hardware/radio/ims/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    .locals 2
    .param p0, "details"    # Lvendor/qti/hardware/radio/ims/MessageDetails;

    .line 3209
    if-nez p0, :cond_0

    .line 3210
    const/4 v0, 0x0

    return-object v0

    .line 3213
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;-><init>()V

    .line 3215
    .local v0, "mwiMessageDetails":Lorg/codeaurora/ims/Mwi$MwiMessageDetails;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3216
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->toAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mToAddress:Ljava/lang/String;

    .line 3219
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3220
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->fromAddress:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mFromAddress:Ljava/lang/String;

    .line 3223
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->subject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3224
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->subject:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mSubject:Ljava/lang/String;

    .line 3227
    :cond_3
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3228
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->date:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mDate:Ljava/lang/String;

    .line 3231
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->priority:I

    if-eqz v1, :cond_5

    .line 3232
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->priority:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toMwiMessagePriority(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mPriority:I

    .line 3235
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3236
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageId:Ljava/lang/String;

    .line 3239
    :cond_6
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->type:I

    if-eqz v1, :cond_7

    .line 3240
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageDetails;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toMwiMessageType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageDetails;->mMessageType:I

    .line 3242
    :cond_7
    return-object v0
.end method

.method private static toMessageSummary(Lvendor/qti/hardware/radio/ims/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    .locals 3
    .param p0, "summary"    # Lvendor/qti/hardware/radio/ims/MessageSummary;

    .line 3160
    if-nez p0, :cond_0

    .line 3161
    const/4 v0, 0x0

    return-object v0

    .line 3164
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;-><init>()V

    .line 3166
    .local v0, "mwiMessageSummary":Lorg/codeaurora/ims/Mwi$MwiMessageSummary;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->type:I

    if-eqz v1, :cond_1

    .line 3167
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->type:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toMwiMessageType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mMessageType:I

    .line 3170
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newMessageCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 3171
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewMessage:I

    .line 3174
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldMessageCount:I

    if-eq v1, v2, :cond_3

    .line 3175
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldMessage:I

    .line 3178
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newUrgentMessageCount:I

    if-eq v1, v2, :cond_4

    .line 3179
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->newUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mNewUrgent:I

    .line 3182
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldUrgentMessageCount:I

    if-eq v1, v2, :cond_5

    .line 3183
    iget v1, p0, Lvendor/qti/hardware/radio/ims/MessageSummary;->oldUrgentMessageCount:I

    iput v1, v0, Lorg/codeaurora/ims/Mwi$MwiMessageSummary;->mOldUrgent:I

    .line 3185
    :cond_5
    return-object v0
.end method

.method public static toMessageWaitingIndication(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;
    .locals 9
    .param p0, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;

    .line 3129
    const-class v0, Lorg/codeaurora/ims/StableAidl;

    if-nez p0, :cond_0

    .line 3130
    const/4 v0, 0x0

    return-object v0

    .line 3133
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/Mwi;

    invoke-direct {v1}, Lorg/codeaurora/ims/Mwi;-><init>()V

    .line 3134
    .local v1, "mwi":Lorg/codeaurora/ims/Mwi;
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageSummary:[Lvendor/qti/hardware/radio/ims/MessageSummary;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 3135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toMessageWaitingIndication summaryLength = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageSummary:[Lvendor/qti/hardware/radio/ims/MessageSummary;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3137
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageSummary:[Lvendor/qti/hardware/radio/ims/MessageSummary;

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 3138
    .local v6, "summary":Lvendor/qti/hardware/radio/ims/MessageSummary;
    if-eqz v6, :cond_1

    .line 3139
    iget-object v7, v1, Lorg/codeaurora/ims/Mwi;->mwiMsgSummary:Ljava/util/List;

    invoke-static {v6}, Lorg/codeaurora/ims/StableAidl;->toMessageSummary(Lvendor/qti/hardware/radio/ims/MessageSummary;)Lorg/codeaurora/ims/Mwi$MwiMessageSummary;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3137
    .end local v6    # "summary":Lvendor/qti/hardware/radio/ims/MessageSummary;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3143
    :cond_2
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    .line 3144
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3145
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    iput-object v2, v1, Lorg/codeaurora/ims/Mwi;->mUeAddress:Ljava/lang/String;

    .line 3147
    :cond_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageDetails:[Lvendor/qti/hardware/radio/ims/MessageDetails;

    if-eqz v2, :cond_5

    .line 3148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toMessageWaitingIndication detailsLength = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageDetails:[Lvendor/qti/hardware/radio/ims/MessageDetails;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3150
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->messageDetails:[Lvendor/qti/hardware/radio/ims/MessageDetails;

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 3151
    .local v4, "details":Lvendor/qti/hardware/radio/ims/MessageDetails;
    if-eqz v4, :cond_4

    .line 3152
    iget-object v5, v1, Lorg/codeaurora/ims/Mwi;->mwiMsgDetails:Ljava/util/List;

    invoke-static {v4}, Lorg/codeaurora/ims/StableAidl;->toMessageDetails(Lvendor/qti/hardware/radio/ims/MessageDetails;)Lorg/codeaurora/ims/Mwi$MwiMessageDetails;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3150
    .end local v4    # "details":Lvendor/qti/hardware/radio/ims/MessageDetails;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3156
    :cond_5
    return-object v1
.end method

.method public static toMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 547
    new-instance v0, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->msisdn:Ljava/lang/String;

    iget v2, p0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->lineType:I

    iget v3, p0, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->registrationStatus:I

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Ljava/lang/String;II)V

    .line 549
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

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v0, "linesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 539
    .local v3, "line":Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v4

    .line 540
    .local v4, "lineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v3    # "line":Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .end local v4    # "lineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    :cond_0
    return-object v0
.end method

.method public static toMultiSimVoiceCapability(I)I
    .locals 2
    .param p0, "voiceCapability"    # I

    .line 3334
    packed-switch p0, :pswitch_data_0

    .line 3344
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v1, "toMultiSimVoiceCapability: Invalid voice capability"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    const/4 v0, 0x0

    return v0

    .line 3338
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 3340
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 3336
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

    .line 3246
    packed-switch p0, :pswitch_data_0

    .line 3255
    const/4 v0, -0x1

    return v0

    .line 3252
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 3250
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 3248
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

    .line 3189
    packed-switch p0, :pswitch_data_0

    .line 3204
    const/4 v0, -0x1

    return v0

    .line 3201
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 3199
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 3197
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 3195
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 3193
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 3191
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

    .line 1893
    packed-switch p0, :pswitch_data_0

    .line 1899
    const/4 v0, -0x1

    return v0

    .line 1897
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1895
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

    .line 1867
    if-nez p0, :cond_0

    .line 1868
    const/4 v0, 0x0

    return-object v0

    .line 1871
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ParticipantStatusDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/ParticipantStatusDetails;-><init>()V

    .line 1873
    .local v0, "participantStatus":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->callId:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 1874
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->callId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setCallId(I)V

    .line 1877
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->operation:I

    if-eqz v1, :cond_2

    .line 1878
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->operation:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toParticipantStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setOperation(I)V

    .line 1881
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->participantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setParticipantUri(Ljava/lang/String;)V

    .line 1883
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->sipStatus:I

    if-eq v1, v2, :cond_3

    .line 1884
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->sipStatus:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setSipStatus(I)V

    .line 1887
    :cond_3
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->isEct:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ParticipantStatusDetails;->setIsEct(Z)V

    .line 1889
    return-object v0
.end method

.method private static toPriority(I)I
    .locals 1
    .param p0, "priority"    # I

    .line 1988
    packed-switch p0, :pswitch_data_0

    .line 1992
    const/4 v0, 0x1

    return v0

    .line 1990
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

    .line 1609
    packed-switch p0, :pswitch_data_0

    .line 1617
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v1, "toRadioState: Invalid Radio State Change"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0

    .line 1615
    :pswitch_0
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0

    .line 1613
    :pswitch_1
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0

    .line 1611
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

    .line 1529
    packed-switch p0, :pswitch_data_0

    .line 1575
    const v0, 0x7fffffff

    return v0

    .line 1573
    :pswitch_0
    const/16 v0, 0x14

    return v0

    .line 1571
    :pswitch_1
    const/16 v0, 0x13

    return v0

    .line 1569
    :pswitch_2
    const/16 v0, 0x12

    return v0

    .line 1567
    :pswitch_3
    const/16 v0, 0x11

    return v0

    .line 1565
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 1563
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 1561
    :pswitch_6
    const/16 v0, 0xe

    return v0

    .line 1559
    :pswitch_7
    const/16 v0, 0xd

    return v0

    .line 1557
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 1555
    :pswitch_9
    const/16 v0, 0xb

    return v0

    .line 1553
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 1551
    :pswitch_b
    const/16 v0, 0x9

    return v0

    .line 1549
    :pswitch_c
    const/16 v0, 0x8

    return v0

    .line 1547
    :pswitch_d
    const/4 v0, 0x7

    return v0

    .line 1545
    :pswitch_e
    const/4 v0, 0x6

    return v0

    .line 1543
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 1541
    :pswitch_10
    const/4 v0, 0x4

    return v0

    .line 1539
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 1537
    :pswitch_12
    const/4 v0, 0x2

    return v0

    .line 1535
    :pswitch_13
    const/4 v0, 0x1

    return v0

    .line 1533
    :pswitch_14
    const/4 v0, 0x0

    return v0

    .line 1531
    :pswitch_15
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1825
    packed-switch p0, :pswitch_data_0

    .line 1847
    const/4 v0, -0x1

    return v0

    .line 1843
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 1841
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 1839
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 1837
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 1835
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 1833
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 1831
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 1829
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 1827
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 1845
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

    .line 1318
    packed-switch p0, :pswitch_data_0

    .line 1326
    const/4 v0, -0x1

    return v0

    .line 1322
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1324
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1320
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

    .line 1762
    new-instance v0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;-><init>()V

    .line 1764
    .local v0, "regBlockStatus":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWwan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWwan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    if-eqz v1, :cond_0

    .line 1766
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWwan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toBlockStatus(Lvendor/qti/hardware/radio/ims/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWwan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 1769
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWlan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWlan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/BlockStatus;->blockReason:I

    if-eqz v1, :cond_1

    .line 1771
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->blockStatusOnWlan:Lvendor/qti/hardware/radio/ims/BlockStatus;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toBlockStatus(Lvendor/qti/hardware/radio/ims/BlockStatus;)Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->setStatusOnWlan(Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 1774
    :cond_1
    return-object v0
.end method

.method public static toRequestType(I)I
    .locals 1
    .param p0, "requestType"    # I

    .line 2815
    packed-switch p0, :pswitch_data_0

    .line 2828
    const/4 v0, -0x1

    return v0

    .line 2825
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 2823
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2821
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2819
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 2817
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

    .line 1750
    packed-switch p0, :pswitch_data_0

    .line 1756
    const/4 v0, 0x0

    return v0

    .line 1752
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

    .line 478
    packed-switch p0, :pswitch_data_0

    .line 483
    const/4 v0, 0x0

    return v0

    .line 480
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

    .line 853
    packed-switch p0, :pswitch_data_0

    .line 859
    const/4 v0, 0x2

    return v0

    .line 857
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 855
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

    .line 842
    packed-switch p0, :pswitch_data_0

    .line 848
    const/4 v0, -0x1

    return v0

    .line 844
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 846
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

    .line 3103
    packed-switch p0, :pswitch_data_0

    .line 3113
    const/4 v0, 0x0

    return v0

    .line 3111
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 3109
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 3107
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 3105
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

    .line 1370
    if-nez p0, :cond_0

    .line 1371
    sget-object v0, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v1, "inList is null."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const/4 v0, 0x0

    return-object v0

    .line 1375
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->copySrvStatusList([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus;

    move-result-object v0

    .line 1376
    .local v0, "outList":[Lorg/codeaurora/ims/ServiceStatus;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1378
    .local v1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    return-object v1
.end method

.method private static toServiceStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Lorg/codeaurora/ims/ServiceStatus;
    .locals 6
    .param p0, "fromInfo"    # Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 1402
    new-instance v0, Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ServiceStatus;-><init>()V

    .line 1403
    .local v0, "toInfo":Lorg/codeaurora/ims/ServiceStatus;
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->isValid:Z

    iput-boolean v1, v0, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    .line 1404
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->callType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toCallType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus;->type:I

    .line 1405
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    array-length v1, v1

    const v2, 0x7fffffff

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 1406
    invoke-static {p0}, Lorg/codeaurora/ims/StableAidl;->unpackAccTechStatus(Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    goto :goto_0

    .line 1408
    :cond_0
    new-array v1, v3, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    iput-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 1409
    iget-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    new-instance v4, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v4}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 1411
    iget-object v1, v0, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v5

    .line 1412
    .local v1, "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/16 v4, 0xe

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1414
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    if-eqz v4, :cond_1

    .line 1415
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    invoke-static {v4}, Lorg/codeaurora/ims/StableAidl;->toStatusType(I)I

    move-result v4

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 1417
    :cond_1
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    if-eq v4, v2, :cond_2

    .line 1418
    iget v4, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    iput v4, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 1422
    .end local v1    # "act":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    :cond_2
    :goto_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    if-eqz v1, :cond_3

    .line 1423
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toStatusType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 1426
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->restrictCause:I

    if-eqz v1, :cond_4

    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1429
    sget-object v1, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    const-string v2, "Partially Enabled Status due to Restrict Cause"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1430
    iput v3, v0, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 1433
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->rttMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRttMode(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    .line 1435
    return-object v0
.end method

.method public static toServiceType(I)I
    .locals 1
    .param p0, "serviceType"    # I

    .line 2762
    packed-switch p0, :pswitch_data_0

    .line 2811
    const/4 v0, -0x1

    return v0

    .line 2808
    :pswitch_0
    const/16 v0, 0x16

    return v0

    .line 2806
    :pswitch_1
    const/16 v0, 0x15

    return v0

    .line 2804
    :pswitch_2
    const/16 v0, 0x14

    return v0

    .line 2802
    :pswitch_3
    const/16 v0, 0x13

    return v0

    .line 2800
    :pswitch_4
    const/16 v0, 0x12

    return v0

    .line 2798
    :pswitch_5
    const/16 v0, 0x11

    return v0

    .line 2796
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 2794
    :pswitch_7
    const/16 v0, 0xf

    return v0

    .line 2792
    :pswitch_8
    const/16 v0, 0xe

    return v0

    .line 2790
    :pswitch_9
    const/16 v0, 0xd

    return v0

    .line 2788
    :pswitch_a
    const/16 v0, 0xc

    return v0

    .line 2786
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 2784
    :pswitch_c
    const/16 v0, 0xa

    return v0

    .line 2782
    :pswitch_d
    const/16 v0, 0x9

    return v0

    .line 2780
    :pswitch_e
    const/16 v0, 0x8

    return v0

    .line 2778
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 2776
    :pswitch_10
    const/4 v0, 0x6

    return v0

    .line 2774
    :pswitch_11
    const/4 v0, 0x5

    return v0

    .line 2772
    :pswitch_12
    const/4 v0, 0x4

    return v0

    .line 2770
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 2768
    :pswitch_14
    const/4 v0, 0x2

    return v0

    .line 2766
    :pswitch_15
    const/4 v0, 0x1

    return v0

    .line 2764
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

    .line 2241
    packed-switch p0, :pswitch_data_0

    .line 2263
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2261
    :pswitch_1
    const/16 v0, 0x244

    return v0

    .line 2259
    :pswitch_2
    const/16 v0, 0x201

    return v0

    .line 2257
    :pswitch_3
    const/16 v0, 0x1f9

    return v0

    .line 2255
    :pswitch_4
    const/16 v0, 0x1f7

    return v0

    .line 2253
    :pswitch_5
    const/16 v0, 0x1f6

    return v0

    .line 2251
    :pswitch_6
    const/16 v0, 0x1f5

    return v0

    .line 2249
    :pswitch_7
    const/16 v0, 0x1f4

    return v0

    .line 2247
    :pswitch_8
    const/16 v0, 0x1e0

    return v0

    .line 2245
    :pswitch_9
    const/16 v0, 0x198

    return v0

    .line 2243
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

    .line 1268
    const/4 v0, 0x0

    .line 1269
    .local v0, "imsReasonCode":I
    const/4 v1, 0x0

    .line 1270
    .local v1, "imsReasonExtraCode":I
    if-nez p0, :cond_0

    .line 1271
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v2

    .line 1273
    :cond_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 1274
    .local v2, "imsReasonExtraMessage":Ljava/lang/String;
    iget v3, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    .line 1275
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    .line 1277
    :cond_1
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v3
.end method

.method public static toSmsCallBackMode(I)I
    .locals 1
    .param p0, "mode"    # I

    .line 3118
    packed-switch p0, :pswitch_data_0

    .line 3123
    const/4 v0, 0x0

    return v0

    .line 3120
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

    .line 170
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSmsSendStatus(I)I

    move-result v0

    .line 171
    .local v0, "statusResult":I
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toSmsManagerError(I)I

    move-result v1

    .line 172
    .local v1, "reason":I
    new-instance v2, Lorg/codeaurora/ims/sms/SmsResponse;

    invoke-direct {v2, p0, v0, v1}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(III)V

    return-object v2
.end method

.method private static toSmsSendStatus(I)I
    .locals 1
    .param p0, "hidlResult"    # I

    .line 176
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 186
    return v0

    .line 184
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 182
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 180
    :pswitch_2
    return v0

    .line 178
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

    .line 1500
    const/4 v0, 0x0

    .line 1502
    .local v0, "outStatus":Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    if-eqz p0, :cond_4

    .line 1503
    new-instance v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    move-object v0, v1

    .line 1504
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->networkMode:I

    if-eqz v1, :cond_0

    .line 1505
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->networkMode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRadioTech(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1508
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->status:I

    if-eqz v1, :cond_1

    .line 1509
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toStatusType(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    .line 1512
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->restrictCause:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 1513
    iget v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 1516
    :cond_2
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->hasRegistration:Z

    if-eqz v1, :cond_4

    .line 1517
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    if-eqz v1, :cond_3

    .line 1519
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->state:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toRegState(I)I

    move-result v1

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    goto :goto_0

    .line 1521
    :cond_3
    const/4 v1, 0x2

    iput v1, v0, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    .line 1525
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static toStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;
    .locals 4
    .param p0, "report"    # Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;

    .line 2871
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

    .line 1580
    packed-switch p0, :pswitch_data_0

    .line 1589
    const/4 v0, 0x3

    return v0

    .line 1586
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 1584
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1582
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

    .line 2691
    packed-switch p0, :pswitch_data_0

    .line 2697
    const v0, 0x7fffffff

    return v0

    .line 2695
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2693
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

    .line 2662
    if-nez p0, :cond_0

    .line 2663
    const/4 v0, 0x0

    return-object v0

    .line 2665
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/SuppNotifyInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppNotifyInfo;-><init>()V

    .line 2666
    .local v0, "outNotification":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->notificationType:I

    if-eqz v1, :cond_1

    .line 2667
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->notificationType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSuppNotifyInfo(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNotificationType(I)V

    .line 2670
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->code:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 2671
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setCode(I)V

    .line 2673
    :cond_2
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->index:I

    if-eq v1, v2, :cond_3

    .line 2674
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setIndex(I)V

    .line 2676
    :cond_3
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->type:I

    if-eq v1, v2, :cond_4

    .line 2677
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->type:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setType(I)V

    .line 2679
    :cond_4
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->connId:I

    if-eq v1, v2, :cond_5

    .line 2680
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->connId:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setConnId(I)V

    .line 2682
    :cond_5
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setNumber(Ljava/lang/String;)V

    .line 2683
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHistoryInfo(Ljava/lang/String;)V

    .line 2684
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->hasHoldTone:Z

    if-eqz v1, :cond_6

    .line 2685
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->holdTone:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppNotifyInfo;->setHoldTone(Z)V

    .line 2687
    :cond_6
    return-object v0
.end method

.method public static toSuppService(Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;)Lorg/codeaurora/ims/SuppService;
    .locals 5
    .param p0, "clipProvisionStatus"    # Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;

    .line 1228
    const-class v0, Lorg/codeaurora/ims/StableAidl;

    new-instance v1, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v1}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 1229
    .local v1, "clipProvStatus":Lorg/codeaurora/ims/SuppService;
    iget v2, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->clipStatus:I

    .line 1230
    .local v2, "clipStatus":I
    if-eqz v2, :cond_0

    .line 1231
    iget v3, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->clipStatus:I

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toSuppServiceStatus(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 1232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toSuppService. Clipstatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    :cond_0
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toSuppService. Errorcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "String "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1240
    return-object v1
.end method

.method public static toSuppService(Lvendor/qti/hardware/radio/ims/ColrInfo;)Lorg/codeaurora/ims/SuppService;
    .locals 5
    .param p0, "colrInfo"    # Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 823
    new-instance v0, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 825
    .local v0, "colrValue":Lorg/codeaurora/ims/SuppService;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setServiceClassStatus(I)V

    .line 826
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->provisionStatus:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassProvisionStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setProvisionStatus(I)V

    .line 827
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 829
    iget v1, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->presentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toIpPresentation(I)I

    move-result v1

    .line 830
    .local v1, "presentation":I
    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setPresentation(I)V

    .line 832
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColrResponse from ImsRadio. presentation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    :cond_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v2}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 836
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColrResponse from ImsRadio. errorcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget-object v4, v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    return-object v0
.end method

.method private static toSuppServiceStatus(I)I
    .locals 1
    .param p0, "clipStatus"    # I

    .line 1244
    packed-switch p0, :pswitch_data_0

    .line 1251
    const/4 v0, 0x2

    return v0

    .line 1248
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1246
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

    .line 2505
    new-instance v0, Lorg/codeaurora/ims/SuppSvcResponse;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppSvcResponse;-><init>()V

    .line 2506
    .local v0, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassStatus(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setStatus(I)V

    .line 2507
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    .line 2508
    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toServiceClassProvisionStatus(I)I

    move-result v1

    .line 2507
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setProvisionStatus(I)V

    .line 2509
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    if-eqz v1, :cond_0

    .line 2510
    iget v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toFacility(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFacilityType(I)V

    .line 2512
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 2513
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2514
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setFailureCause(Ljava/lang/String;)V

    .line 2516
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->cbNumListInfo:[Lvendor/qti/hardware/radio/ims/CbNumListInfo;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 2517
    .local v5, "numList":Lvendor/qti/hardware/radio/ims/CbNumListInfo;
    iget v6, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->serviceClass:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_2

    .line 2518
    goto :goto_2

    .line 2520
    :cond_2
    new-instance v6, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;

    iget v7, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->serviceClass:I

    invoke-direct {v6, v7}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;-><init>(I)V

    .line 2523
    .local v6, "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    iget-object v7, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    if-eqz v7, :cond_3

    .line 2524
    iget-object v7, v5, Lvendor/qti/hardware/radio/ims/CbNumListInfo;->cbNumInfo:[Lvendor/qti/hardware/radio/ims/CbNumInfo;

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 2525
    .local v10, "numInfo":Lvendor/qti/hardware/radio/ims/CbNumInfo;
    new-instance v11, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;

    iget v12, v10, Lvendor/qti/hardware/radio/ims/CbNumInfo;->status:I

    iget-object v13, v10, Lvendor/qti/hardware/radio/ims/CbNumInfo;->number:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;-><init>(ILjava/lang/String;)V

    .line 2528
    .local v11, "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    invoke-virtual {v6, v11}, Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;->addLine(Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;)V

    .line 2524
    .end local v10    # "numInfo":Lvendor/qti/hardware/radio/ims/CbNumInfo;
    .end local v11    # "lineStatus":Lorg/codeaurora/ims/SuppSvcResponse$LineStatus;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2531
    :cond_3
    invoke-virtual {v0, v6}, Lorg/codeaurora/ims/SuppSvcResponse;->addBarredLines(Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;)V

    .line 2516
    .end local v5    # "numList":Lvendor/qti/hardware/radio/ims/CbNumListInfo;
    .end local v6    # "lines":Lorg/codeaurora/ims/SuppSvcResponse$BarredLines;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2534
    :cond_4
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->hasErrorDetails:Z

    if-eqz v1, :cond_5

    .line 2535
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppSvcResponse;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2537
    :cond_5
    return-object v0
.end method

.method public static toSuppSvcStatus(I)I
    .locals 1
    .param p0, "inServiceStatus"    # I

    .line 2414
    packed-switch p0, :pswitch_data_0

    .line 2420
    const/4 v0, -0x1

    return v0

    .line 2416
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2418
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

    .line 2832
    packed-switch p0, :pswitch_data_0

    .line 2847
    const/4 v0, -0x1

    return v0

    .line 2844
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2842
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2840
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2838
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2836
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2834
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

    .line 2647
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2657
    return v0

    .line 2655
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 2653
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2651
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 2649
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

    .line 2722
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

    .line 2728
    packed-switch p0, :pswitch_data_0

    .line 2742
    const/4 v0, -0x1

    return v0

    .line 2740
    :pswitch_0
    const/4 v0, 0x5

    return v0

    .line 2738
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 2736
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2734
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2732
    :pswitch_4
    const/4 v0, 0x1

    return v0

    .line 2730
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

    .line 1997
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 2004
    const/4 v0, 0x0

    return v0

    .line 2001
    :pswitch_0
    return v0

    .line 1999
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toViceUriInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)Lorg/codeaurora/ims/ViceUriInfo;
    .locals 5
    .param p0, "viceInfo"    # Lvendor/qti/hardware/radio/ims/ViceInfo;

    .line 2971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2972
    .local v0, "viceInfoUri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ViceInfo;->viceInfoUri:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2973
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/ViceInfo;->viceInfoUri:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2972
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2974
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ViceUriInfo;

    invoke-direct {v1, v0}, Lorg/codeaurora/ims/ViceUriInfo;-><init>(Ljava/util/ArrayList;)V

    .line 2975
    .local v1, "info":Lorg/codeaurora/ims/ViceUriInfo;
    sget-object v2, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRefreshViceInfo: viceUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2976
    return-object v1
.end method

.method public static toVoWiFiQuality(I)[I
    .locals 3
    .param p0, "voWiFiCallQuality"    # I

    .line 2702
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2703
    .local v1, "ret":[I
    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2714
    aput v2, v1, v2

    goto :goto_0

    .line 2711
    :pswitch_0
    const/4 v0, 0x4

    aput v0, v1, v2

    .line 2712
    goto :goto_0

    .line 2708
    :pswitch_1
    const/4 v0, 0x2

    aput v0, v1, v2

    .line 2709
    goto :goto_0

    .line 2705
    :pswitch_2
    aput v0, v1, v2

    .line 2706
    nop

    .line 2717
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

    .line 3091
    packed-switch p0, :pswitch_data_0

    .line 3098
    const/4 v0, 0x2

    return v0

    .line 3095
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 3093
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

    .line 1482
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    array-length v0, v0

    .line 1484
    .local v0, "statusListLen":I
    new-array v1, v0, [Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    .line 1487
    .local v1, "statusForAccessTech":[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1488
    new-instance v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    invoke-direct {v3}, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;-><init>()V

    aput-object v3, v1, v2

    .line 1489
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->accTechStatus:[Lvendor/qti/hardware/radio/ims/StatusForAccessTech;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/codeaurora/ims/StableAidl;->toStatusForAccessTech(Lvendor/qti/hardware/radio/ims/StatusForAccessTech;)Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1490
    sget-object v3, Lorg/codeaurora/ims/StableAidl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " networkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " restrictCause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " registered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    iget v5, v5, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->registered:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1487
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1495
    .end local v2    # "j":I
    :cond_0
    return-object v1
.end method
