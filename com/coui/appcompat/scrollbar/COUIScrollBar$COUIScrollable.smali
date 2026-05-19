.class public interface abstract Lcom/coui/appcompat/scrollbar/COUIScrollBar$COUIScrollable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scrollbar/COUIScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "COUIScrollable"
.end annotation


# virtual methods
.method public abstract getCOUIScrollableView()Landroid/view/View;
.end method

.method public abstract superComputeVerticalScrollExtent()I
.end method

.method public abstract superComputeVerticalScrollOffset()I
.end method

.method public abstract superComputeVerticalScrollRange()I
.end method

.method public abstract superOnTouchEvent(Landroid/view/MotionEvent;)V
.end method
