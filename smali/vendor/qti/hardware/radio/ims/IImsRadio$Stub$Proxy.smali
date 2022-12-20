.class Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lvendor/qti/hardware/radio/ims/IImsRadio;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedVersion:I

    .line 893
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 890
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 891
    return-void
.end method


# virtual methods
.method public acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "smsInfo"    # Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1926
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1928
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1929
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1933
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1936
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1937
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1938
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1939
    return-void

    .line 1942
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method acknowledgeSms is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "smsInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1947
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "smsInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1948
    nop

    .line 1949
    return-void

    .line 1947
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1948
    throw v1
.end method

.method public acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "smsReportInfo"    # Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1954
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1956
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1957
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1961
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1963
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1964
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1965
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1966
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1967
    return-void

    .line 1970
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method acknowledgeSmsReport is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "smsReportInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1975
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "smsReportInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    nop

    .line 1977
    return-void

    .line 1975
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    throw v1
.end method

.method public addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "dialRequest"    # Lvendor/qti/hardware/radio/ims/DialRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 959
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 962
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/DialRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 966
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 969
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 970
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 971
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 972
    return-void

    .line 975
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method addParticipant is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "dialRequest":Lvendor/qti/hardware/radio/ims/DialRequest;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "dialRequest":Lvendor/qti/hardware/radio/ims/DialRequest;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 981
    nop

    .line 982
    return-void

    .line 980
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 981
    throw v1
.end method

.method public answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "answerRequest"    # Lvendor/qti/hardware/radio/ims/AnswerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1008
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1011
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/AnswerRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1015
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1018
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1019
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1020
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V
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

    const-string v3, "Method answer is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "answerRequest":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "answerRequest":Lvendor/qti/hardware/radio/ims/AnswerRequest;
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

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 896
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "dialRequest"    # Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2122
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2124
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 2125
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2129
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2131
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2132
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 2133
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2134
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2135
    return-void

    .line 2138
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method callComposerDial is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "dialRequest":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2143
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "dialRequest":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2144
    nop

    .line 2145
    return-void

    .line 2143
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2144
    throw v1
.end method

.method public cancelModifyCall(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1876
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1880
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1881
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1882
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->cancelModifyCall(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1883
    return-void

    .line 1886
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method cancelModifyCall is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "callId":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1891
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "callId":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1892
    nop

    .line 1893
    return-void

    .line 1891
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1892
    throw v1
.end method

.method public cancelPendingUssd(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2101
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2104
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 2105
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2106
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->cancelPendingUssd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2107
    return-void

    .line 2110
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method cancelPendingUssd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2115
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2116
    nop

    .line 2117
    return-void

    .line 2115
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2116
    throw v1
.end method

.method public conference(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1229
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1232
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1233
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1234
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->conference(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1235
    return-void

    .line 1238
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method conference is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1244
    nop

    .line 1245
    return-void

    .line 1243
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1244
    throw v1
.end method

.method public deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "deflectRequestInfo"    # Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1777
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1779
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1780
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1781
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1784
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1787
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1788
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1789
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1790
    return-void

    .line 1793
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method deflectCall is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1798
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1799
    nop

    .line 1800
    return-void

    .line 1798
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1799
    throw v1
.end method

.method public dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "dialRequest"    # Lvendor/qti/hardware/radio/ims/DialRequest;
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
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 934
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/DialRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 938
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 941
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 942
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 943
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 944
    return-void

    .line 947
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method dial is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "dialRequest":Lvendor/qti/hardware/radio/ims/DialRequest;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "dialRequest":Lvendor/qti/hardware/radio/ims/DialRequest;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    nop

    .line 954
    return-void

    .line 952
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    throw v1
.end method

.method public emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "dialRequest"    # Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2051
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2053
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 2054
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2055
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2058
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2060
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2061
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 2062
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2063
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    return-void

    .line 2067
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method emergencyDial is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "dialRequest":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2072
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "dialRequest":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2073
    nop

    .line 2074
    return-void

    .line 2072
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2073
    throw v1
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 5
    .param p1, "token"    # I
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
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1372
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1373
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1374
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->exitEmergencyCallbackMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1375
    return-void

    .line 1378
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method exitEmergencyCallbackMode is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1383
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1384
    nop

    .line 1385
    return-void

    .line 1383
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1384
    throw v1
.end method

.method public explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "ectInfo"    # Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1679
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1681
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1682
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1686
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1689
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1690
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1691
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1692
    return-void

    .line 1695
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method explicitCallTransfer is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "ectInfo":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1700
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "ectInfo":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1701
    nop

    .line 1702
    return-void

    .line 1700
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1701
    throw v1
.end method

.method public getCallWaiting(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1607
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1608
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1610
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1611
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1612
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1613
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getCallWaiting(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1614
    return-void

    .line 1617
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCallWaiting is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "serviceClass":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1622
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "serviceClass":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1623
    nop

    .line 1624
    return-void

    .line 1622
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1623
    throw v1
.end method

.method public getClip(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1250
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1253
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1254
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1255
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getClip(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1256
    return-void

    .line 1259
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getClip is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1264
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1265
    nop

    .line 1266
    return-void

    .line 1264
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1265
    throw v1
.end method

.method public getClir(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1271
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1274
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1275
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1276
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getClir(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1277
    return-void

    .line 1280
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getClir is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1285
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1286
    nop

    .line 1287
    return-void

    .line 1285
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1286
    throw v1
.end method

.method public getColr(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1320
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1323
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1324
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1325
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getColr(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1326
    return-void

    .line 1329
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getColr is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1334
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    nop

    .line 1336
    return-void

    .line 1334
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    throw v1
.end method

.method public getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "config"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1201
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1203
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1204
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/ConfigInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1208
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1211
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1212
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1213
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1214
    return-void

    .line 1217
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getConfig is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1222
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1223
    nop

    .line 1224
    return-void

    .line 1222
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1223
    throw v1
.end method

.method public getImsRegistrationState(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 987
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 989
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 990
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 991
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 992
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getImsRegistrationState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 993
    return-void

    .line 996
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getImsRegistrationState is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1001
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    nop

    .line 1003
    return-void

    .line 1001
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    throw v1
.end method

.method public getImsSubConfig(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1833
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1835
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1836
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1837
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1838
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getImsSubConfig(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1839
    return-void

    .line 1842
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getImsSubConfig is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1847
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    nop

    .line 1849
    return-void

    .line 1847
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 900
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 2241
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2243
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2245
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2246
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2247
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 2248
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2249
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v3

    invoke-interface {v3}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2255
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2249
    monitor-exit p0

    return-object v3

    .line 2252
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2253
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2255
    .end local v2    # "_status":Z
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2257
    goto :goto_0

    .line 2255
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2257
    throw v2

    .line 2259
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 2240
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

    .line 2219
    iget v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2221
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2223
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2224
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2225
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 2226
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2227
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v3

    invoke-interface {v3}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2227
    return v3

    .line 2230
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2231
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2233
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2235
    goto :goto_0

    .line 2233
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2235
    throw v2

    .line 2237
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_1
    :goto_0
    iget v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getRtpErrorStatistics(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1756
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1759
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1760
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1761
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getRtpErrorStatistics(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1762
    return-void

    .line 1765
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getRtpErrorStatistics is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1770
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1771
    nop

    .line 1772
    return-void

    .line 1770
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1771
    throw v1
.end method

.method public getRtpStatistics(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1735
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1738
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1739
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1740
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getRtpStatistics(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1741
    return-void

    .line 1744
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getRtpStatistics is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1749
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1750
    nop

    .line 1751
    return-void

    .line 1749
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1750
    throw v1
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1985
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1986
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1987
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1988
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v3

    invoke-interface {v3}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1998
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1988
    return-object v3

    .line 1991
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getSmsFormat is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    throw v3

    .line 1994
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1995
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1998
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2000
    nop

    .line 2001
    return-object v2

    .line 1998
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2000
    throw v2
.end method

.method public hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "hangup"    # Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
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
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1039
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1043
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1046
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1047
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1048
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1049
    return-void

    .line 1052
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method hangup is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "hangup":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1057
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "hangup":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1058
    nop

    .line 1059
    return-void

    .line 1057
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1058
    throw v1
.end method

.method public hold(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1129
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1133
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1134
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1135
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->hold(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1136
    return-void

    .line 1139
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method hold is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "callId":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1144
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "callId":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    nop

    .line 1146
    return-void

    .line 1144
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    throw v1
.end method

.method public modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1523
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1526
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1527
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1530
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1532
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1533
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1534
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1535
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1536
    return-void

    .line 1539
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method modifyCallConfirm is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1544
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1545
    nop

    .line 1546
    return-void

    .line 1544
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1545
    throw v1
.end method

.method public modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1495
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1497
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1498
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1499
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1502
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1504
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1505
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1506
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1507
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1508
    return-void

    .line 1511
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method modifyCallInitiate is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1516
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1517
    nop

    .line 1518
    return-void

    .line 1516
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1517
    throw v1
.end method

.method public queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "callForwardInfo"    # Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1551
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1553
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1554
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1555
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1558
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1560
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1561
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1562
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1563
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1564
    return-void

    .line 1567
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method queryCallForwardStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1572
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1573
    nop

    .line 1574
    return-void

    .line 1572
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1573
    throw v1
.end method

.method public queryMultiSimVoiceCapability(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2200
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2202
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2203
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 2204
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2205
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryMultiSimVoiceCapability(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2206
    return-void

    .line 2209
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method queryMultiSimVoiceCapability is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2214
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2215
    nop

    .line 2216
    return-void

    .line 2214
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2215
    throw v1
.end method

.method public queryServiceStatus(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1086
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1089
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1090
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1091
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryServiceStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    return-void

    .line 1095
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method queryServiceStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1100
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1101
    nop

    .line 1102
    return-void

    .line 1100
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1101
    throw v1
.end method

.method public queryVirtualLineInfo(ILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2029
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2031
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2032
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2033
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 2034
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2035
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2036
    return-void

    .line 2039
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method queryVirtualLineInfo is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "msisdn":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2044
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "msisdn":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2045
    nop

    .line 2046
    return-void

    .line 2044
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2045
    throw v1
.end method

.method public registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "info"    # [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2007
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2009
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2010
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2011
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 2012
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2013
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2022
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2014
    return-void

    .line 2017
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method registerMultiIdentityLines is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "info":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2022
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "info":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    nop

    .line 2024
    return-void

    .line 2022
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2023
    throw v1
.end method

.method public requestRegistrationChange(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1064
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1068
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1069
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1070
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->requestRegistrationChange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1071
    return-void

    .line 1074
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method requestRegistrationChange is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "state":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "state":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1080
    nop

    .line 1081
    return-void

    .line 1079
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1080
    throw v1
.end method

.method public resume(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1151
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1155
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1156
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1157
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->resume(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1158
    return-void

    .line 1161
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method resume is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "callId":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1166
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "callId":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1167
    nop

    .line 1168
    return-void

    .line 1166
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1167
    throw v1
.end method

.method public sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1390
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1392
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1393
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/DtmfInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1397
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1400
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1401
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1402
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1403
    return-void

    .line 1406
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendDtmf is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1411
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1412
    nop

    .line 1413
    return-void

    .line 1411
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1412
    throw v1
.end method

.method public sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "geoLocationInfo"    # Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1805
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1807
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1808
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1812
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1814
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1815
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1816
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1817
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1818
    return-void

    .line 1821
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendGeolocationInfo is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "geoLocationInfo":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1826
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "geoLocationInfo":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1827
    nop

    .line 1828
    return-void

    .line 1826
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1827
    throw v1
.end method

.method public sendRttMessage(ILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1854
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1855
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1856
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1857
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1858
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1859
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1860
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendRttMessage(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1861
    return-void

    .line 1864
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendRttMessage is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "message":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1869
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    nop

    .line 1871
    return-void

    .line 1869
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    throw v1
.end method

.method public sendSipDtmf(ILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "requestCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2150
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2153
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2154
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 2155
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2156
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2157
    return-void

    .line 2160
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendSipDtmf is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "requestCode":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2165
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "requestCode":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2166
    nop

    .line 2167
    return-void

    .line 2165
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2166
    throw v1
.end method

.method public sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "smsRequest"    # Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1898
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1900
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1901
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1905
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1908
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1909
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1910
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1911
    return-void

    .line 1914
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendSms is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "smsRequest":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1919
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "smsRequest":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1920
    nop

    .line 1921
    return-void

    .line 1919
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1920
    throw v1
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "ussd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2079
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2081
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2082
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2083
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 2084
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2085
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendUssd(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2086
    return-void

    .line 2089
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendUssd is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "ussd":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2094
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "ussd":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2095
    nop

    .line 2096
    return-void

    .line 2094
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2095
    throw v1
.end method

.method public setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "callForwardInfo"    # Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1579
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1582
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1586
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1589
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1590
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1591
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1592
    return-void

    .line 1595
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCallForwardStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1600
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1601
    nop

    .line 1602
    return-void

    .line 1600
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1601
    throw v1
.end method

.method public setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "callWaitingInfo"    # Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1629
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1632
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1633
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1636
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1638
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1639
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1640
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1641
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1642
    return-void

    .line 1645
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCallWaiting is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "callWaitingInfo":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1650
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "callWaitingInfo":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1651
    nop

    .line 1652
    return-void

    .line 1650
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1651
    throw v1
.end method

.method public setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V
    .locals 5
    .param p1, "imsRadioResponse"    # Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .param p2, "imsRadioIndication"    # Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 908
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 909
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 910
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 911
    .local v2, "_status":Z
    if-nez v2, :cond_3

    .line 912
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 913
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 914
    return-void

    .line 917
    :cond_2
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setCallback is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "imsRadioResponse":Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .end local p2    # "imsRadioIndication":Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    throw v3

    .line 920
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "imsRadioResponse":Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .restart local p2    # "imsRadioIndication":Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    nop

    .line 926
    return-void

    .line 923
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    throw v2
.end method

.method public setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "clirInfo"    # Lvendor/qti/hardware/radio/ims/ClirInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1292
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1295
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/ClirInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1299
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1302
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1303
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1304
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1305
    return-void

    .line 1308
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setClir is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "clirInfo":Lvendor/qti/hardware/radio/ims/ClirInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1313
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "clirInfo":Lvendor/qti/hardware/radio/ims/ClirInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1314
    nop

    .line 1315
    return-void

    .line 1313
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1314
    throw v1
.end method

.method public setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "colrInfo"    # Lvendor/qti/hardware/radio/ims/ColrInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1341
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1343
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1344
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/ColrInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1348
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1351
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1352
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1353
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V
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

    const-string v3, "Method setColr is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "colrInfo":Lvendor/qti/hardware/radio/ims/ColrInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1362
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "colrInfo":Lvendor/qti/hardware/radio/ims/ColrInfo;
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

.method public setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "config"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1173
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1176
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/ConfigInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1180
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1183
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1184
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1185
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1186
    return-void

    .line 1189
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setConfig is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1194
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1195
    nop

    .line 1196
    return-void

    .line 1194
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1195
    throw v1
.end method

.method public setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "config"    # Lvendor/qti/hardware/radio/ims/MediaConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2172
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 2175
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2176
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/MediaConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 2179
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2181
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2182
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 2183
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2184
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2185
    return-void

    .line 2188
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setMediaConfiguration is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "config":Lvendor/qti/hardware/radio/ims/MediaConfig;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2193
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "config":Lvendor/qti/hardware/radio/ims/MediaConfig;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2194
    nop

    .line 2195
    return-void

    .line 2193
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2194
    throw v1
.end method

.method public setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "srvStatusInfoList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1107
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1110
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1111
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1112
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1113
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1114
    return-void

    .line 1117
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setServiceStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "srvStatusInfoList":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1122
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "srvStatusInfoList":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1123
    nop

    .line 1124
    return-void

    .line 1122
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1123
    throw v1
.end method

.method public setSuppServiceNotification(II)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1657
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1658
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1661
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1662
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1663
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setSuppServiceNotification(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1664
    return-void

    .line 1667
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setSuppServiceNotification is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "status":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1672
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "status":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    nop

    .line 1674
    return-void

    .line 1672
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1673
    throw v1
.end method

.method public setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "ttyInfo"    # Lvendor/qti/hardware/radio/ims/TtyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1467
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1470
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/TtyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1474
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1477
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1478
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1479
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1480
    return-void

    .line 1483
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setUiTtyMode is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "ttyInfo":Lvendor/qti/hardware/radio/ims/TtyInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1488
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "ttyInfo":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1489
    nop

    .line 1490
    return-void

    .line 1488
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1489
    throw v1
.end method

.method public startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1420
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1421
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/DtmfInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1425
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1428
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1429
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1430
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1431
    return-void

    .line 1434
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method startDtmf is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1439
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1440
    nop

    .line 1441
    return-void

    .line 1439
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1440
    throw v1
.end method

.method public stopDtmf(I)V
    .locals 5
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1446
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1449
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 1450
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1451
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->stopDtmf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1452
    return-void

    .line 1455
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method stopDtmf is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1460
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1461
    nop

    .line 1462
    return-void

    .line 1460
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1461
    throw v1
.end method

.method public suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "suppServiceStatusRequest"    # Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1707
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1709
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1710
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    invoke-virtual {p2, v0, v2}, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1714
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1716
    :goto_0
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1717
    .local v1, "_status":Z
    if-nez v1, :cond_2

    .line 1718
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1719
    invoke-static {}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getDefaultImpl()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1720
    return-void

    .line 1723
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method suppServiceStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .end local p1    # "token":I
    .end local p2    # "suppServiceStatusRequest":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1728
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    .restart local p1    # "token":I
    .restart local p2    # "suppServiceStatusRequest":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1729
    nop

    .line 1730
    return-void

    .line 1728
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1729
    throw v1
.end method
