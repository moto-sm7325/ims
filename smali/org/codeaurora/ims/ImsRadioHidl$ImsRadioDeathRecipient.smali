.class final Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;
.super Ljava/lang/Object;
.source "ImsRadioHidl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsRadioHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImsRadioDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsRadioHidl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsRadioHidl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsRadioHidl;

    .line 116
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;->this$0:Lorg/codeaurora/ims/ImsRadioHidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 1
    .param p1, "cookie"    # J

    .line 122
    const-string v0, " IImsRadio Died"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;->this$0:Lorg/codeaurora/ims/ImsRadioHidl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioHidl;->-$$Nest$mresetServiceAndRequestList(Lorg/codeaurora/ims/ImsRadioHidl;)V

    .line 124
    return-void
.end method
