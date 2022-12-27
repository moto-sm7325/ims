.class Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedVersion:I

    .line 832
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 829
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 830
    return-void
.end method


# virtual methods
.method public addParticipantResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1609
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1612
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1613
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1614
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1615
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->addParticipantResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1616
    return-void

    .line 1619
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method addParticipantResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1624
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1625
    nop

    .line 1626
    return-void

    .line 1624
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1625
    throw v1
.end method

.method public answerResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 867
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 871
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 872
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 873
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->answerResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 874
    return-void

    .line 877
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method answerResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 883
    nop

    .line 884
    return-void

    .line 882
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 883
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 835
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelModifyCallResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1726
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1728
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1729
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1730
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1731
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1732
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->cancelModifyCallResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1733
    return-void

    .line 1736
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method cancelModifyCallResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1741
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1742
    nop

    .line 1743
    return-void

    .line 1741
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1742
    throw v1
.end method

.method public cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1879
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1881
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1883
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1884
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1887
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1889
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1890
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1891
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1892
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1901
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1893
    return-void

    .line 1896
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method cancelPendingUssdResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1901
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1902
    nop

    .line 1903
    return-void

    .line 1901
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1902
    throw v1
.end method

.method public conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1152
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1156
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1160
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1163
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1164
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1165
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1166
    return-void

    .line 1169
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method conferenceResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "errorInfo":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "errorInfo":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1175
    nop

    .line 1176
    return-void

    .line 1174
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1175
    throw v1
.end method

.method public deflectCallResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1631
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1633
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1635
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1636
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1637
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->deflectCallResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1638
    return-void

    .line 1641
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method deflectCallResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1646
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1647
    nop

    .line 1648
    return-void

    .line 1646
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1647
    throw v1
.end method

.method public dialResponse(II)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 845
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 849
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 850
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 851
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->dialResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 852
    return-void

    .line 855
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method dialResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 860
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    nop

    .line 862
    return-void

    .line 860
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    throw v1
.end method

.method public exitEmergencyCallbackModeResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1291
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1295
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1296
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1297
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->exitEmergencyCallbackModeResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1298
    return-void

    .line 1301
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method exitEmergencyCallbackModeResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1306
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1307
    nop

    .line 1308
    return-void

    .line 1306
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1307
    throw v1
.end method

.method public explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1511
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1515
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1519
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1521
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1522
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1523
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1524
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1525
    return-void

    .line 1528
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method explicitCallTransferResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "errorInfo":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "errorInfo":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1534
    nop

    .line 1535
    return-void

    .line 1533
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1534
    throw v1
.end method

.method public getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callWaitingInfo"    # Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1475
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1478
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1479
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1480
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1483
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1485
    :goto_0
    if-eqz p4, :cond_1

    .line 1486
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    invoke-virtual {p4, v0, v2}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1490
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1492
    :goto_1
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1493
    .local v1, "_status":Z
    if-nez v1, :cond_3

    .line 1494
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1495
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1496
    return-void

    .line 1499
    :cond_2
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCallWaitingResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "callWaitingInfo":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .end local p4    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1504
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "callWaitingInfo":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .restart local p4    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1505
    nop

    .line 1506
    return-void

    .line 1504
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1505
    throw v1
.end method

.method public getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clipProvisionStatus"    # Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1181
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1185
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1189
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1192
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1193
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1194
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1195
    return-void

    .line 1198
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getClipResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1203
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "clipProvisionStatus":Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1204
    nop

    .line 1205
    return-void

    .line 1203
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1204
    throw v1
.end method

.method public getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clirInfo"    # Lvendor/qti/hardware/radio/ims/ClirInfo;
    .param p4, "hasClirInfo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1210
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1214
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/ClirInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1218
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    :goto_0
    if-eqz p4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1222
    .local v1, "_status":Z
    if-nez v1, :cond_3

    .line 1223
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1224
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1225
    return-void

    .line 1228
    :cond_2
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getClirResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "clirInfo":Lvendor/qti/hardware/radio/ims/ClirInfo;
    .end local p4    # "hasClirInfo":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1233
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "clirInfo":Lvendor/qti/hardware/radio/ims/ClirInfo;
    .restart local p4    # "hasClirInfo":Z
    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1234
    nop

    .line 1235
    return-void

    .line 1233
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1234
    throw v1
.end method

.method public getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lvendor/qti/hardware/radio/ims/ColrInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1262
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1266
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/ColrInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1270
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1273
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1274
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1275
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1276
    return-void

    .line 1279
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getColrResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "colrInfo":Lvendor/qti/hardware/radio/ims/ColrInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1284
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "colrInfo":Lvendor/qti/hardware/radio/ims/ColrInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1285
    nop

    .line 1286
    return-void

    .line 1284
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1285
    throw v1
.end method

.method public getConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1065
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1069
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/ConfigInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1073
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1076
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1077
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1078
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1079
    return-void

    .line 1082
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getConfigResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1088
    nop

    .line 1089
    return-void

    .line 1087
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1088
    throw v1
.end method

.method public getImsRegistrationStateResponse(IILvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "registration"    # Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1092
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1094
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1098
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1102
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1105
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1106
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1107
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getImsRegistrationStateResponse(IILvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1108
    return-void

    .line 1111
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getImsRegistrationStateResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "registration":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "registration":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1117
    nop

    .line 1118
    return-void

    .line 1116
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1117
    throw v1
.end method

.method public getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1675
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1678
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1679
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1683
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1685
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1686
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1687
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1688
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1689
    return-void

    .line 1692
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getImsSubConfigResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "subConfigInfo":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1697
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "subConfigInfo":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1698
    nop

    .line 1699
    return-void

    .line 1697
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1698
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 839
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 1995
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1996
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1997
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1999
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2000
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2001
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 2002
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2003
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v3

    invoke-interface {v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2003
    monitor-exit p0

    return-object v3

    .line 2006
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2007
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2009
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
    goto :goto_0

    .line 2009
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
    throw v2

    .line 2013
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 1994
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

    .line 1973
    iget v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1975
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1977
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1978
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1979
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1980
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1981
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v3

    invoke-interface {v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1981
    return v3

    .line 1984
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1985
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1987
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1989
    goto :goto_0

    .line 1987
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1989
    throw v2

    .line 1991
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getRtpErrorStatisticsResponse(IIJ)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetErrorCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1586
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1589
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1590
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1591
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1592
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1593
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getRtpErrorStatisticsResponse(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1594
    return-void

    .line 1597
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getRtpErrorStatisticsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "packetErrorCount":J
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1602
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "packetErrorCount":J
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1603
    nop

    .line 1604
    return-void

    .line 1602
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1603
    throw v1
.end method

.method public getRtpStatisticsResponse(IIJ)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1563
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1565
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1566
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1567
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1568
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1569
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1570
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->getRtpStatisticsResponse(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1571
    return-void

    .line 1574
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getRtpStatisticsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "packetCount":J
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "packetCount":J
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1580
    nop

    .line 1581
    return-void

    .line 1579
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1580
    throw v1
.end method

.method public hangupResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 889
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 893
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 894
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 895
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->hangupResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 896
    return-void

    .line 899
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method hangupResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 905
    nop

    .line 906
    return-void

    .line 904
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 905
    throw v1
.end method

.method public holdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "sipError"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 978
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 982
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 986
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 989
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 990
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 991
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->holdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 992
    return-void

    .line 995
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method holdResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "sipError":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1000
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "sipError":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1001
    nop

    .line 1002
    return-void

    .line 1000
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1001
    throw v1
.end method

.method public modifyCallConfirmResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1423
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1427
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1428
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1429
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->modifyCallConfirmResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1430
    return-void

    .line 1433
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method modifyCallConfirmResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1438
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1439
    nop

    .line 1440
    return-void

    .line 1438
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1439
    throw v1
.end method

.method public modifyCallInitiateResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1401
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1405
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1406
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1407
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->modifyCallInitiateResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1408
    return-void

    .line 1411
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method modifyCallInitiateResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1416
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1417
    nop

    .line 1418
    return-void

    .line 1416
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1417
    throw v1
.end method

.method public queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardInfoList"    # [Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1445
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1447
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1449
    const/4 v2, 0x1

    if-eqz p4, :cond_0

    .line 1450
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    invoke-virtual {p4, v0, v1}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1454
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1456
    :goto_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1457
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1458
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1459
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1460
    return-void

    .line 1463
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method queryCallForwardStatusResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "callForwardInfoList":[Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .end local p4    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1468
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "callForwardInfoList":[Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .restart local p4    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1469
    nop

    .line 1470
    return-void

    .line 1468
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1469
    throw v1
.end method

.method public queryMultiSimVoiceCapabilityResponse(III)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "voiceCapability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1952
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1954
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1956
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1957
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1958
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1959
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->queryMultiSimVoiceCapabilityResponse(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1960
    return-void

    .line 1963
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method queryMultiSimVoiceCapabilityResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "voiceCapability":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1968
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "voiceCapability":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1969
    nop

    .line 1970
    return-void

    .line 1968
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1969
    throw v1
.end method

.method public queryServiceStatusResponse(II[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "srvStatusList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 933
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 937
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 938
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 939
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 940
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->queryServiceStatusResponse(II[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    return-void

    .line 944
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method queryServiceStatusResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "srvStatusList":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "srvStatusList":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    nop

    .line 951
    return-void

    .line 949
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    throw v1
.end method

.method public queryVirtualLineInfoResponse(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "virtualLineInfo"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1798
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1800
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1802
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1803
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1804
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1805
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->queryVirtualLineInfoResponse(ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1806
    return-void

    .line 1809
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method queryVirtualLineInfoResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "msisdn":Ljava/lang/String;
    .end local p3    # "virtualLineInfo":[Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1814
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "msisdn":Ljava/lang/String;
    .restart local p3    # "virtualLineInfo":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1815
    nop

    .line 1816
    return-void

    .line 1814
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1815
    throw v1
.end method

.method public registerMultiIdentityLinesResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1776
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1778
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1779
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1780
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1781
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1782
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->registerMultiIdentityLinesResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1783
    return-void

    .line 1786
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method registerMultiIdentityLinesResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1791
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1792
    nop

    .line 1793
    return-void

    .line 1791
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1792
    throw v1
.end method

.method public requestRegistrationChangeResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 911
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 915
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 916
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 917
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->requestRegistrationChangeResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 918
    return-void

    .line 921
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method requestRegistrationChangeResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 926
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 927
    nop

    .line 928
    return-void

    .line 926
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 927
    throw v1
.end method

.method public resumeResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "sipError"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1007
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1011
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1015
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1018
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1019
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1020
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->resumeResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1021
    return-void

    .line 1024
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method resumeResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "sipError":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "sipError":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1030
    nop

    .line 1031
    return-void

    .line 1029
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1030
    throw v1
.end method

.method public sendDtmfResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1313
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1315
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1317
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1318
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1319
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->sendDtmfResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1320
    return-void

    .line 1323
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendDtmfResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1329
    nop

    .line 1330
    return-void

    .line 1328
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1329
    throw v1
.end method

.method public sendGeolocationInfoResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1653
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1657
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1658
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1659
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->sendGeolocationInfoResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1660
    return-void

    .line 1663
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendGeolocationInfoResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1668
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1669
    nop

    .line 1670
    return-void

    .line 1668
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1669
    throw v1
.end method

.method public sendRttMessageResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1704
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1708
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1709
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1710
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->sendRttMessageResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1711
    return-void

    .line 1714
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendRttMessageResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1719
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1720
    nop

    .line 1721
    return-void

    .line 1719
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1720
    throw v1
.end method

.method public sendSipDtmfResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1906
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1908
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1912
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1913
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1914
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->sendSipDtmfResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1915
    return-void

    .line 1918
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendSipDtmfResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1923
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1924
    nop

    .line 1925
    return-void

    .line 1923
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1924
    throw v1
.end method

.method public sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "smsResponse"    # Lvendor/qti/hardware/radio/ims/SmsSendResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1748
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1750
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1751
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1755
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1757
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1758
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1759
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1760
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1761
    return-void

    .line 1764
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendSmsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "smsResponse":Lvendor/qti/hardware/radio/ims/SmsSendResponse;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1769
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "smsResponse":Lvendor/qti/hardware/radio/ims/SmsSendResponse;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1770
    nop

    .line 1771
    return-void

    .line 1769
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1770
    throw v1
.end method

.method public sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1850
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1853
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1854
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1858
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1860
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1861
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1862
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1863
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    return-void

    .line 1867
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendUssdResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1872
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "errorDetails":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    nop

    .line 1874
    return-void

    .line 1872
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1873
    throw v1
.end method

.method public setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardStatus"    # Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1821
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1823
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1824
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1825
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1826
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1829
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1831
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1832
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1833
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1834
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1835
    return-void

    .line 1838
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCallForwardStatusResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "callForwardStatus":Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1843
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "callForwardStatus":Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    nop

    .line 1845
    return-void

    .line 1843
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    throw v1
.end method

.method public setClirResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1240
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1244
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1245
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1246
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->setClirResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    return-void

    .line 1250
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setClirResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1255
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1256
    nop

    .line 1257
    return-void

    .line 1255
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1256
    throw v1
.end method

.method public setConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1036
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1040
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/ConfigInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1044
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1047
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1048
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1049
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->setConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1050
    return-void

    .line 1053
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setConfigResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1059
    nop

    .line 1060
    return-void

    .line 1058
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1059
    throw v1
.end method

.method public setMediaConfigurationResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1930
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1932
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1933
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1934
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1935
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1936
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->setMediaConfigurationResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1937
    return-void

    .line 1940
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setMediaConfigurationResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1945
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1946
    nop

    .line 1947
    return-void

    .line 1945
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1946
    throw v1
.end method

.method public setServiceStatusResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 956
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 960
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 961
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 962
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->setServiceStatusResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 963
    return-void

    .line 966
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setServiceStatusResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 972
    nop

    .line 973
    return-void

    .line 971
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 972
    throw v1
.end method

.method public setSuppServiceNotificationResponse(III)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "serviceStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1540
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1542
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1545
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1546
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1547
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->setSuppServiceNotificationResponse(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1548
    return-void

    .line 1551
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setSuppServiceNotificationResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "serviceStatus":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1556
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "serviceStatus":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1557
    nop

    .line 1558
    return-void

    .line 1556
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1557
    throw v1
.end method

.method public setUiTTYModeResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1379
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1382
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1383
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1384
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1385
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->setUiTTYModeResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1386
    return-void

    .line 1389
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setUiTTYModeResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1394
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    nop

    .line 1396
    return-void

    .line 1394
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    throw v1
.end method

.method public startDtmfResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1335
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1339
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1340
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1341
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->startDtmfResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1342
    return-void

    .line 1345
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method startDtmfResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1350
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1351
    nop

    .line 1352
    return-void

    .line 1350
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1351
    throw v1
.end method

.method public stopDtmfResponse(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1357
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1361
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1362
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1363
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->stopDtmfResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1364
    return-void

    .line 1367
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method stopDtmfResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1372
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1373
    nop

    .line 1374
    return-void

    .line 1372
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1373
    throw v1
.end method

.method public suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/SuppServiceStatus;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/SuppServiceStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1123
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 1127
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    invoke-virtual {p3, v0, v2}, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1131
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1134
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1135
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1136
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/SuppServiceStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1137
    return-void

    .line 1140
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method suppServiceStatusResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "errorCode":I
    .end local p3    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/SuppServiceStatus;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "errorCode":I
    .restart local p3    # "suppServiceStatus":Lvendor/qti/hardware/radio/ims/SuppServiceStatus;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1146
    nop

    .line 1147
    return-void

    .line 1145
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1146
    throw v1
.end method
