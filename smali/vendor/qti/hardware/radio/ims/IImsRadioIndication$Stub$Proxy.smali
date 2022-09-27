.class Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedVersion:I

    .line 658
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 655
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 656
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 661
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 665
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1679
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1681
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1683
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1684
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1685
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1686
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1687
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v3

    invoke-interface {v3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1693
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1687
    monitor-exit p0

    return-object v3

    .line 1690
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1691
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1693
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1695
    goto :goto_0

    .line 1693
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1695
    throw v2

    .line 1697
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 1678
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1657
    iget v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1659
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1661
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1662
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1663
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1664
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1665
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v3

    invoke-interface {v3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1665
    return v3

    .line 1668
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1669
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1671
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    goto :goto_0

    .line 1671
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    throw v2

    .line 1675
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V
    .locals 5
    .param p1, "info"    # Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1426
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1427
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1428
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1432
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1435
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1436
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1437
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1438
    return-void

    .line 1441
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onCallComposerInfoAvailable is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "info":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "info":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1447
    nop

    .line 1448
    return-void

    .line 1446
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1447
    throw v1
.end method

.method public onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V
    .locals 4
    .param p1, "callList"    # [Lvendor/qti/hardware/radio/ims/CallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 671
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 672
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 673
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 674
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 675
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 676
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    return-void

    .line 680
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onCallStateChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "callList":[Lvendor/qti/hardware/radio/ims/CallInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "callList":[Lvendor/qti/hardware/radio/ims/CallInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    nop

    .line 687
    return-void

    .line 685
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    throw v1
.end method

.method public onConferenceCallStateCompleted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1564
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1565
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1566
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1567
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1568
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onConferenceCallStateCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1569
    return-void

    .line 1572
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onConferenceCallStateCompleted is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1577
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1578
    nop

    .line 1579
    return-void

    .line 1577
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1578
    throw v1
.end method

.method public onEmergencyCallBackModeChanged(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 829
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 832
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 833
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 834
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onEmergencyCallBackModeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    return-void

    .line 838
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onEmergencyCallBackModeChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "mode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "mode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    nop

    .line 845
    return-void

    .line 843
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    throw v1
.end method

.method public onGeolocationInfoRequested(DD)V
    .locals 5
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1012
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1014
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1015
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1016
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1017
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1018
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onGeolocationInfoRequested(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    return-void

    .line 1022
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onGeolocationInfoRequested is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "lat":D
    .end local p3    # "lon":D
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "lat":D
    .restart local p3    # "lon":D
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    nop

    .line 1029
    return-void

    .line 1027
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    throw v1
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V
    .locals 5
    .param p1, "handover"    # Lvendor/qti/hardware/radio/ims/HandoverInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 760
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 761
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 762
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/HandoverInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 769
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 770
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 771
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 772
    return-void

    .line 775
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onHandover is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "handover":Lvendor/qti/hardware/radio/ims/HandoverInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "handover":Lvendor/qti/hardware/radio/ims/HandoverInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    nop

    .line 782
    return-void

    .line 780
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    throw v1
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 5
    .param p1, "config"    # Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1034
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1035
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1036
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1040
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1043
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1044
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1045
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1046
    return-void

    .line 1049
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onImsSubConfigChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "config":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "config":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1055
    nop

    .line 1056
    return-void

    .line 1054
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1055
    throw v1
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V
    .locals 5
    .param p1, "autoCallRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1259
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1260
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1261
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1265
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1268
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1269
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1270
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1271
    return-void

    .line 1274
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onIncomingCallAutoRejected is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1279
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1280
    nop

    .line 1281
    return-void

    .line 1279
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1280
    throw v1
.end method

.method public onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V
    .locals 5
    .param p1, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1453
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1454
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1455
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1456
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1459
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1462
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1463
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1464
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1465
    return-void

    .line 1468
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onIncomingCallComposerCallAutoRejected is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "autoRejectionInfo":Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1473
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "autoRejectionInfo":Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    nop

    .line 1475
    return-void

    .line 1473
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1474
    throw v1
.end method

.method public onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 5
    .param p1, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1584
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1585
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1586
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1587
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/DtmfInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1590
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1593
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1594
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1595
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1596
    return-void

    .line 1599
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onIncomingDtmfStart is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1604
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    nop

    .line 1606
    return-void

    .line 1604
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    throw v1
.end method

.method public onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 5
    .param p1, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1611
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1612
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1613
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/DtmfInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1617
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1619
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1620
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1621
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1622
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1623
    return-void

    .line 1626
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onIncomingDtmfStop is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1631
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    nop

    .line 1633
    return-void

    .line 1631
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    throw v1
.end method

.method public onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V
    .locals 5
    .param p1, "imsSms"    # Lvendor/qti/hardware/radio/ims/IncomingSms;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1211
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1212
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1213
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/IncomingSms;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1217
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1220
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1221
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1222
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1223
    return-void

    .line 1226
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onIncomingSms is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "imsSms":Lvendor/qti/hardware/radio/ims/IncomingSms;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1231
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "imsSms":Lvendor/qti/hardware/radio/ims/IncomingSms;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1232
    nop

    .line 1233
    return-void

    .line 1231
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1232
    throw v1
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V
    .locals 5
    .param p1, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 985
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 986
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 987
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 991
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 994
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 995
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 996
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 997
    return-void

    .line 1000
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onMessageWaiting is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1006
    nop

    .line 1007
    return-void

    .line 1005
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1006
    throw v1
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 5
    .param p1, "wfcRoamingConfigurationSupport"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1348
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1349
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1351
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1352
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1353
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onModemSupportsWfcRoamingModeConfiguration(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1354
    return-void

    .line 1357
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onModemSupportsWfcRoamingModeConfiguration is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "wfcRoamingConfigurationSupport":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1362
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "wfcRoamingConfigurationSupport":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1363
    nop

    .line 1364
    return-void

    .line 1362
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1363
    throw v1
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 5
    .param p1, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 931
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 932
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 933
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 940
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 941
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 942
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    return-void

    .line 946
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onModifyCall is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 952
    nop

    .line 953
    return-void

    .line 951
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 952
    throw v1
.end method

.method public onMultiIdentityInfoPending()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1328
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1329
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1330
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1331
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1332
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onMultiIdentityInfoPending()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1333
    return-void

    .line 1336
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onMultiIdentityInfoPending is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1341
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    nop

    .line 1343
    return-void

    .line 1341
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    throw v1
.end method

.method public onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    .locals 5
    .param p1, "info"    # [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1307
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1308
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1309
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1310
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1311
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1312
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1313
    return-void

    .line 1316
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onMultiIdentityRegistrationStatusChange is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "info":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1321
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "info":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1322
    nop

    .line 1323
    return-void

    .line 1321
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1322
    throw v1
.end method

.method public onMultiSimVoiceCapabilityChanged(I)V
    .locals 5
    .param p1, "voiceCapability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1638
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1639
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1641
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1642
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1643
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onMultiSimVoiceCapabilityChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1644
    return-void

    .line 1647
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onMultiSimVoiceCapabilityChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "voiceCapability":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1652
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "voiceCapability":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1653
    nop

    .line 1654
    return-void

    .line 1652
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1653
    throw v1
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V
    .locals 5
    .param p1, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1061
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1062
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1063
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1067
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1070
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1071
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1072
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1073
    return-void

    .line 1076
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onParticipantStatusInfo is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "participantStatusInfo":Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1081
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "participantStatusInfo":Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1082
    nop

    .line 1083
    return-void

    .line 1081
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1082
    throw v1
.end method

.method public onRadioStateChanged(I)V
    .locals 5
    .param p1, "radioState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 808
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 811
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 812
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 813
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onRadioStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    return-void

    .line 817
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onRadioStateChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "radioState":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "radioState":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 823
    nop

    .line 824
    return-void

    .line 822
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 823
    throw v1
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V
    .locals 5
    .param p1, "conferenceInfo"    # Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 877
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 878
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 879
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 883
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 886
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 887
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 888
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 889
    return-void

    .line 892
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onRefreshConferenceInfo is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "conferenceInfo":Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "conferenceInfo":Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 898
    nop

    .line 899
    return-void

    .line 897
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 898
    throw v1
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V
    .locals 5
    .param p1, "viceInfo"    # Lvendor/qti/hardware/radio/ims/ViceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 904
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 905
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 906
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/ViceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 913
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 914
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 915
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 916
    return-void

    .line 919
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onRefreshViceInfo is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "viceInfo":Lvendor/qti/hardware/radio/ims/ViceInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 924
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "viceInfo":Lvendor/qti/hardware/radio/ims/ViceInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    nop

    .line 926
    return-void

    .line 924
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    throw v1
.end method

.method public onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V
    .locals 5
    .param p1, "blockStatusInfo"    # Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1088
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1089
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1090
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1094
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1097
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1098
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1099
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1100
    return-void

    .line 1103
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onRegistrationBlockStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "blockStatusInfo":Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "blockStatusInfo":Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1109
    nop

    .line 1110
    return-void

    .line 1108
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1109
    throw v1
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 5
    .param p1, "registration"    # Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 733
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 734
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 735
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 742
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 743
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 744
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 745
    return-void

    .line 748
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onRegistrationChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "registration":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "registration":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    nop

    .line 755
    return-void

    .line 753
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    throw v1
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 5
    .param p1, "geoLocationDataStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1480
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1482
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1483
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1484
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1485
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onRetrievingGeoLocationDataStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1486
    return-void

    .line 1489
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onRetrievingGeoLocationDataStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "geoLocationDataStatus":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1494
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "geoLocationDataStatus":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1495
    nop

    .line 1496
    return-void

    .line 1494
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1495
    throw v1
.end method

.method public onRing()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 692
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 693
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 694
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 695
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 696
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onRing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 697
    return-void

    .line 700
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onRing is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 706
    nop

    .line 707
    return-void

    .line 705
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 706
    throw v1
.end method

.method public onRingbackTone(I)V
    .locals 5
    .param p1, "tone"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 712
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 715
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 716
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 717
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onRingbackTone(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 718
    return-void

    .line 721
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onRingbackTone is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "tone":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "tone":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 727
    nop

    .line 728
    return-void

    .line 726
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 727
    throw v1
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1115
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1117
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1118
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1119
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1120
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onRttMessageReceived(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1121
    return-void

    .line 1124
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onRttMessageReceived is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "message":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1130
    nop

    .line 1131
    return-void

    .line 1129
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1130
    throw v1
.end method

.method public onServiceDomainChanged(I)V
    .locals 5
    .param p1, "domain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1522
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1524
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1525
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1526
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1527
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onServiceDomainChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1528
    return-void

    .line 1531
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onServiceDomainChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "domain":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1536
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "domain":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1537
    nop

    .line 1538
    return-void

    .line 1536
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1537
    throw v1
.end method

.method public onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 5
    .param p1, "srvStatusList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 787
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 788
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 789
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 790
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 791
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 792
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 793
    return-void

    .line 796
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onServiceStatusChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "srvStatusList":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "srvStatusList":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    nop

    .line 803
    return-void

    .line 801
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    throw v1
.end method

.method public onSipDtmfReceived(Ljava/lang/String;)V
    .locals 5
    .param p1, "configCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1501
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1503
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1504
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1505
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1506
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onSipDtmfReceived(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1507
    return-void

    .line 1510
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onSipDtmfReceived is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "configCode":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1515
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "configCode":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1516
    nop

    .line 1517
    return-void

    .line 1515
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1516
    throw v1
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1543
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1545
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1546
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1547
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1548
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onSmsCallBackModeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1549
    return-void

    .line 1552
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onSmsCallBackModeChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "mode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1557
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "mode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1558
    nop

    .line 1559
    return-void

    .line 1557
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1558
    throw v1
.end method

.method public onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V
    .locals 5
    .param p1, "smsStatusReport"    # Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1184
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1185
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1186
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1190
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1193
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1194
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1195
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1196
    return-void

    .line 1199
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onSmsSendStatusReport is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "smsStatusReport":Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "smsStatusReport":Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1205
    nop

    .line 1206
    return-void

    .line 1204
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1205
    throw v1
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V
    .locals 5
    .param p1, "suppServiceNotification"    # Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 958
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 959
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 960
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 964
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 966
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 967
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 968
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 969
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    return-void

    .line 973
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onSuppServiceNotification is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "suppServiceNotification":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "suppServiceNotification":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    nop

    .line 980
    return-void

    .line 978
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    throw v1
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V
    .locals 5
    .param p1, "ss"    # Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1157
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1158
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1159
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1163
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1166
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1167
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1168
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1169
    return-void

    .line 1172
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onSupplementaryServiceIndication is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "ss":Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "ss":Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1178
    nop

    .line 1179
    return-void

    .line 1177
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1178
    throw v1
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V
    .locals 5
    .param p1, "ttyInfo"    # Lvendor/qti/hardware/radio/ims/TtyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 850
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 851
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 852
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    invoke-virtual {p1, v0, v2}, Lvendor/qti/hardware/radio/ims/TtyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 856
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 859
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 860
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 861
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 862
    return-void

    .line 865
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onTtyNotification is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "ttyInfo":Lvendor/qti/hardware/radio/ims/TtyInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 870
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "ttyInfo":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 871
    nop

    .line 872
    return-void

    .line 870
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 871
    throw v1
.end method

.method public onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1369
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1372
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1373
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1376
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1379
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1380
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1381
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1382
    return-void

    .line 1385
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onUssdMessageFailed is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1390
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1391
    nop

    .line 1392
    return-void

    .line 1390
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1391
    throw v1
.end method

.method public onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1397
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1400
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1401
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1405
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1408
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1409
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1410
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1411
    return-void

    .line 1414
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onUssdReceived is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "type":I
    .end local p2    # "msg":Ljava/lang/String;
    .end local p3    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "type":I
    .restart local p2    # "msg":Ljava/lang/String;
    .restart local p3    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1420
    nop

    .line 1421
    return-void

    .line 1419
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1420
    throw v1
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 5
    .param p1, "voWiFiCallQualityInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1136
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1139
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1140
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1141
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onVoWiFiCallQuality(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1142
    return-void

    .line 1145
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onVoWiFiCallQuality is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "voWiFiCallQualityInfo":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1150
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "voWiFiCallQualityInfo":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1151
    nop

    .line 1152
    return-void

    .line 1150
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1151
    throw v1
.end method

.method public onVoiceInfoChanged(I)V
    .locals 5
    .param p1, "voiceInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1286
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1289
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1290
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1291
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onVoiceInfoChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1292
    return-void

    .line 1295
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onVoiceInfoChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "voiceInfo":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1300
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "voiceInfo":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1301
    nop

    .line 1302
    return-void

    .line 1300
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1301
    throw v1
.end method

.method public onVopsChanged(Z)V
    .locals 5
    .param p1, "isVopsEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1238
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1239
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1241
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1242
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1243
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->onVopsChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1244
    return-void

    .line 1247
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onVopsChanged is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .end local p1    # "isVopsEnabled":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1252
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    .restart local p1    # "isVopsEnabled":Z
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1253
    nop

    .line 1254
    return-void

    .line 1252
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1253
    throw v1
.end method
