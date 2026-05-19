.class public interface abstract Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputHandler"
.end annotation


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;I)V
    .registers 3

    return-void
.end method

.method public abstract onInputEvent(Landroid/view/MotionEvent;I)Z
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    return-void
.end method

.method public onSingleTap(Landroid/view/MotionEvent;I)V
    .registers 3

    return-void
.end method
