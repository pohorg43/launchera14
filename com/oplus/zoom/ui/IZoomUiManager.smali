.class public interface abstract Lcom/oplus/zoom/ui/IZoomUiManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation


# virtual methods
.method public abstract addFloatHandle(Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
.end method

.method public abstract dismissSnackBar()V
.end method

.method public abstract getFloatHandleInfo(I)Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;
.end method

.method public abstract getFloatHandleRegion(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
.end method

.method public abstract hideAllTipsView()V
.end method

.method public abstract onConfigChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract removeFloatHandle(I)V
.end method

.method public abstract showCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract showTipsOnZoomWindowShow(Lcom/oplus/zoom/common/ZoomPositionInfo;Z)V
.end method

.method public abstract showTipsOnZoomWindowShow(Lcom/oplus/zoom/common/ZoomPositionInfo;ZZ)V
.end method
