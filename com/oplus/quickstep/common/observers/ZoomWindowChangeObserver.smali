.class public final Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;
.super Lcom/oplus/zoomwindow/IOplusZoomWindowObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;,
        Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;

.field private static final TAG:Ljava/lang/String; = "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"


# instance fields
.field private mZoomWindowChange:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->Companion:Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputMethodChanged(Z)V
    .registers 2

    const-string p0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string p1, "onInputMethodChanged"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomWindowDied(Ljava/lang/String;)V
    .registers 2

    const-string p0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string p1, "onZoomWindowDied"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 4

    const-string v0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string v1, "onZoomWindowHide"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->mZoomWindowChange:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2c

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-eqz v0, :cond_2c

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->mZoomWindowChange:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;

    if-eqz p0, :cond_27

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;->onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    :cond_27
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarUtils;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->setZoomWindowPkg(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 4

    const-string v0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string v1, "onZoomWindowShow"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->mZoomWindowChange:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-eqz v0, :cond_44

    iget-object p0, p0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->mZoomWindowChange:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;

    if-eqz p0, :cond_27

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;->onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V

    :cond_27
    const-string p0, "Hotseat_expand"

    const-string v0, "onZoomWindowShow to updateDockerRecentTaskData"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getAppContext()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;ZZ)V

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarUtils;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarUtils;

    if-eqz p1, :cond_41

    iget-object v1, p1, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomPkg:Ljava/lang/String;

    :cond_41
    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->setZoomWindowPkg(Ljava/lang/String;)V

    :cond_44
    return-void
.end method

.method public final registerZoomWindowObserver()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    :try_end_c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    const-string v0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string v1, "registerZoomWindowObserver with an exception"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method

.method public final setZoomWindowChange(Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver$ZoomWindowChange;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/quickstep/common/observers/ZoomWindowChangeObserver;->mZoomWindowChange:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final unregisterZoomWindowObserver()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    :try_end_c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    const-string v0, "com.oplus.quickstep.common.observers.ZoomWindowChangeObserver"

    const-string v1, "unregisterZoomWindowObserver with an exception"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method
