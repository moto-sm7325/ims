.class public Lorg/codeaurora/ims/sms/SmsResponse;
.super Ljava/lang/Object;
.source "SmsResponse.java"


# instance fields
.field private final mMessageRef:I

.field private final mNetworkErrorCode:I

.field private final mRat:I

.field private final mSendSmsReason:I

.field private final mSendSmsResult:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "msgRef"    # I
    .param p2, "result"    # I
    .param p3, "reason"    # I

    .line 20
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(IIII)V

    .line 21
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "msgRef"    # I
    .param p2, "result"    # I
    .param p3, "reason"    # I
    .param p4, "networkErrorCode"    # I

    .line 24
    const v5, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(IIIII)V

    .line 25
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "msgRef"    # I
    .param p2, "result"    # I
    .param p3, "reason"    # I
    .param p4, "networkErrorCode"    # I
    .param p5, "rat"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mMessageRef:I

    .line 29
    iput p2, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsResult:I

    .line 30
    iput p3, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsReason:I

    .line 31
    iput p4, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mNetworkErrorCode:I

    .line 32
    iput p5, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mRat:I

    .line 33
    return-void
.end method


# virtual methods
.method public getMsgRef()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mMessageRef:I

    return v0
.end method

.method public getNetworkErrorCode()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mNetworkErrorCode:I

    return v0
.end method

.method public getRat()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mRat:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsReason:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsResult:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mMessageRef = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mMessageRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSendSmsResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSendSmsReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mSendSmsReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNetworkErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mNetworkErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/sms/SmsResponse;->mRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
