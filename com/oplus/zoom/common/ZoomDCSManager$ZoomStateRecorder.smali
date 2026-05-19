.class Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomDCSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZoomStateRecorder"
.end annotation


# instance fields
.field private callPkg:Ljava/lang/String;

.field private floatHandleStartTime:J

.field private miniZoomStartTime:J

.field private taskId:I

.field public final synthetic this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

.field private zoomPkg:Ljava/lang/String;

.field private zoomStartTime:J


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/common/ZoomDCSManager;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->taskId:I

    iput-object p3, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomPkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->callPkg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->lambda$onStartZoomWindow$0()V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->lambda$onExitZoomWindow$1()V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->lambda$onExitZoomFloatHandle$5()V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->lambda$onStartMiniZoomWindow$2()V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->lambda$onZoomCloseWithType$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->lambda$onStartZoomFloatHandle$4()V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->lambda$onExitMiniZoomWindow$3()V

    return-void
.end method

.method public static synthetic h(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->lambda$onZoomScaleChange$6(FF)V

    return-void
.end method

.method private synthetic lambda$onExitMiniZoomWindow$3()V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->miniZoomStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->miniZoomStartTime:J

    iget-object v3, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomPkg:Ljava/lang/String;

    const-string v4, "zoom_pkg"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitMiniZoomWindow taskid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomDCSManager"

    invoke-static {v2, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exit_mini_zoom_window"

    invoke-direct {p0, v1, v0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->updateZoomDCS(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onExitZoomFloatHandle$5()V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->floatHandleStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->floatHandleStartTime:J

    iget-object v3, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomPkg:Ljava/lang/String;

    const-string v4, "zoom_pkg"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitZoomFloatHandle taskid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomDCSManager"

    invoke-static {v2, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exit_zoom_float_handle"

    invoke-direct {p0, v1, v0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->updateZoomDCS(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onExitZoomWindow$1()V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomStartTime:J

    iget-object v3, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomPkg:Ljava/lang/String;

    const-string v4, "zoom_pkg"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitZoomWindow taskid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomDCSManager"

    invoke-static {v2, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exit_zoom_window"

    invoke-direct {p0, v1, v0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->updateZoomDCS(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onStartMiniZoomWindow$2()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->miniZoomStartTime:J

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomPkg:Ljava/lang/String;

    const-string v2, "zoom_pkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zoom_next_pkg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->callPkg:Ljava/lang/String;

    const-string v2, "call_pkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    iget-wide v2, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->miniZoomStartTime:J

    invoke-static {v1, v2, v3}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$200(Lcom/oplus/zoom/common/ZoomDCSManager;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartMiniZoomWindow taskid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomDCSManager"

    invoke-static {v2, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_mini_zoom_window"

    invoke-direct {p0, v1, v0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->updateZoomDCS(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onStartZoomFloatHandle$4()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->floatHandleStartTime:J

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomPkg:Ljava/lang/String;

    const-string v2, "zoom_pkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartZoomFloatHandle taskid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomDCSManager"

    invoke-static {v2, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "show_zoom_float_handle"

    invoke-direct {p0, v1, v0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->updateZoomDCS(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onStartZoomWindow$0()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomStartTime:J

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomPkg:Ljava/lang/String;

    const-string v2, "zoom_pkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zoom_next_pkg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    iget-wide v2, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomStartTime:J

    invoke-static {v1, v2, v3}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$200(Lcom/oplus/zoom/common/ZoomDCSManager;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->callPkg:Ljava/lang/String;

    const-string v2, "call_pkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartZoomWindow taskid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", eventMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomDCSManager"

    invoke-static {v2, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_zoom_window"

    invoke-direct {p0, v1, v0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->updateZoomDCS(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onZoomCloseWithType$7(Ljava/lang/String;)V
    .registers 4

    const-string v0, "close_type"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadZoomCloseType: evenMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomDCSManager"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "on_delete_zoom_button_selected"

    invoke-direct {p0, v0, p1}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->updateZoomDCS(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onZoomScaleChange$6(FF)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getRotation()I

    move-result v1

    const-string v2, "screen_state"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_24

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getRotation()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1e

    goto :goto_24

    :cond_1e
    const-string v1, "portrait"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_24
    :goto_24
    const-string v1, "landscape"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_29
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const-string v1, "before_scale"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const-string p2, "after_scale"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->zoomPkg:Ljava/lang/String;

    const-string p2, "zoom_pkg"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "zoom_next_pkg"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onZoomScaleChange: evenMap = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZoomDCSManager"

    invoke-static {p2, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "resize_window"

    invoke-direct {p0, p1, v0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->updateZoomDCS(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateZoomDCS(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$100(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "20126"

    const-string v1, "001"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method


# virtual methods
.method public onExitMiniZoomWindow()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$000(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/common/g;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/common/g;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExitZoomFloatHandle()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$000(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/common/d;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/common/d;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExitZoomWindow()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$000(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/common/c;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/common/c;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartMiniZoomWindow()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$000(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/common/e;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/common/e;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartZoomFloatHandle()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$000(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/common/f;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/common/f;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartZoomWindow()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$000(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/common/b;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/common/b;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onZoomCloseWithType(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$000(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/common/i;

    invoke-direct {v1, p0, p1}, Lcom/oplus/zoom/common/i;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onZoomScaleChange(FF)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->this$0:Lcom/oplus/zoom/common/ZoomDCSManager;

    invoke-static {v0}, Lcom/oplus/zoom/common/ZoomDCSManager;->access$000(Lcom/oplus/zoom/common/ZoomDCSManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/common/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/zoom/common/h;-><init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
