.class public interface abstract Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/animation/ZoomWindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ZoomAnimationCallback"
.end annotation


# virtual methods
.method public abstract notifyReleaseDragBg()V
.end method

.method public abstract onAnimationCancel(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onAnimationEnd(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onAnimationStart(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
.end method
