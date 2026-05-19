.class public interface abstract Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayChangedListener"
.end annotation


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(IILandroid/content/res/Configuration;)V
    .registers 4

    return-void
.end method

.method public onDisplayRemove(I)V
    .registers 2

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .registers 2

    return-void
.end method

.method public onFixedRotationStarted(II)V
    .registers 3

    return-void
.end method

.method public onRotateDisplay(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    return-void
.end method
