.class public interface abstract Lcom/oplus/zoom/ui/baseview/IView;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FLOAT_HANDLE_VIEW_TITLE:Ljava/lang/String; = "OplusOSZoomFloatHandleView"


# virtual methods
.method public animAdd(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2

    return-void
.end method

.method public animRemove(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2

    return-void
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWindowParams()Landroid/view/WindowManager$LayoutParams;
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public setHook(Lcom/oplus/zoom/ui/baseview/ViewHook;)V
    .registers 2

    return-void
.end method
