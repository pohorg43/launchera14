.class public interface abstract Lcom/oplus/splitscreen/observer/OplusZoomStateObserver$ZoomWindowObserver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/observer/OplusZoomStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ZoomWindowObserver"
.end annotation


# virtual methods
.method public onInputMethodChanged(Z)V
    .registers 2

    return-void
.end method

.method public onZoomWindowDied(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 2

    return-void
.end method

.method public onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 2

    return-void
.end method
