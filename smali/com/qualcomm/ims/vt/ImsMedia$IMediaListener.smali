.class public interface abstract Lcom/qualcomm/ims/vt/ImsMedia$IMediaListener;
.super Ljava/lang/Object;
.source "ImsMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/ImsMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMediaListener"
.end annotation


# virtual methods
.method public abstract onDataUsageChanged(ILorg/codeaurora/ims/QtiVideoCallDataUsage;)V
.end method

.method public abstract onOrientationModeChanged(II)V
.end method

.method public abstract onPeerResolutionChanged(III)V
.end method

.method public abstract onPlayerStateChanged(II)V
.end method

.method public abstract onRecordingSurfaceChanged(ILandroid/view/Surface;II)V
.end method

.method public abstract onVideoQualityEvent(II)V
.end method
