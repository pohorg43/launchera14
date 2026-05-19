.class public interface abstract Lcom/oplus/flexiblewindow/FlexibleWindowManager$IEmbeddedWindowCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/flexiblewindow/FlexibleWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEmbeddedWindowCallback"
.end annotation


# virtual methods
.method public abstract adjustFlexiblePositionForIme(ZI)V
.end method

.method public abstract autoScaleToOriginPosition()V
.end method

.method public abstract notifyCanvasContainerReleaseTasks()V
.end method

.method public abstract notifyFlexibleTaskVanish(I)V
.end method

.method public abstract notifyFlexibleTaskVanish(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract notifyTaskEmbeddedStatus(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
.end method

.method public abstract onRecentsAnimationExecuting(ZI)V
.end method

.method public abstract startReplaceSplitWhenNormalSplit(ILandroid/content/Intent;II)V
.end method

.method public abstract startThreeSplitFromNormalSplit(Landroid/content/Intent;I)V
.end method
