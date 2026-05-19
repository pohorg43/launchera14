.class public final Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/view/OplusChoreographerHelper$IOplusVsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;->printLaunchAnimaTraceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $choreographer:Landroid/view/Choreographer;

.field public final synthetic $helper:Lcom/oplus/view/OplusChoreographerHelper;

.field public final synthetic $sTime:J

.field public final synthetic $totalLatency:J

.field public final synthetic this$0:Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;


# direct methods
.method public constructor <init>(JJLcom/oplus/view/OplusChoreographerHelper;Landroid/view/Choreographer;Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;)V
    .registers 8

    iput-wide p1, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;->$sTime:J

    iput-wide p3, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;->$totalLatency:J

    iput-object p5, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;->$helper:Lcom/oplus/view/OplusChoreographerHelper;

    iput-object p6, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;->$choreographer:Landroid/view/Choreographer;

    iput-object p7, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;->this$0:Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVsync(JJ)V
    .registers 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_____cmz_onVsync____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x8

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;->$sTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;->$totalLatency:J

    long-to-double v2, v2

    const-wide v6, 0x412e848000000000L  # 1000000.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {}, Lcom/android/launcher3/touch/OplusItemClickHandler;->getCurLaunchAppName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "cmz_trace_appStart_p0.anim:LAUNCH_APP.first.onSync, timeSFVsync=%s, timeOnAnimStart=%s, timeAppRecvVsync=%s, vsyncId=%s, totalLatency=%.3f, app = %s"

    const-string v3, "format(format, *args)"

    invoke-static {v1, v0, v2, v3}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "LauncherBooster"

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;->$helper:Lcom/oplus/view/OplusChoreographerHelper;

    iget-object v1, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;->$choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/view/OplusChoreographerHelper;->removeVsyncDataCallback(Landroid/view/Choreographer;Lcom/oplus/view/OplusChoreographerHelper$IOplusVsyncCallback;)V

    iget-object v2, p0, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx$printLaunchAnimaTraceInfo$iOplusVsyncCallback$1;->this$0:Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;->callGetLaunchAnimInfo(Ljava/lang/String;JJ)V

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
