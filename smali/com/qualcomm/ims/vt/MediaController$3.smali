.class Lcom/qualcomm/ims/vt/MediaController$3;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/vt/MediaController;->requestCallDataUsage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/MediaController;

.field final synthetic val$mediaId:I


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/MediaController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/MediaController;

    .line 128
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController$3;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    iput p2, p0, Lcom/qualcomm/ims/vt/MediaController$3;->val$mediaId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController$3;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$fgetmMedia(Lcom/qualcomm/ims/vt/MediaController;)Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController$3;->val$mediaId:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->requestCallDataUsage(I)V

    .line 132
    return-void
.end method
