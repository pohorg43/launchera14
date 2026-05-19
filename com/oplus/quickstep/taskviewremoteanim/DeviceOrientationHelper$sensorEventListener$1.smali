.class public final Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper$sensorEventListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    const-string p0, "onSensorChanged: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    goto :goto_d

    :cond_c
    move-object v2, v1

    :goto_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceOrientationHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1d

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    :cond_1d
    if-eqz v1, :cond_9f

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getForceNotChangeOrientation$p()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_9f

    :cond_2b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const-string v1, "event.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_39

    move v0, v1

    goto :goto_3a

    :cond_39
    move v0, v3

    :goto_3a
    xor-int/2addr v0, v1

    if-eqz v0, :cond_9f

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    float-to-int p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskView"

    invoke-static {v0, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getActivity$p()Lcom/android/launcher3/Launcher;

    move-result-object p0

    if-nez p0, :cond_62

    const-string p0, "onSensorChanged: launcher is null, so return"

    invoke-static {v0, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_62
    const/4 p0, 0x4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_69

    if-eq p1, p0, :cond_69

    return-void

    :cond_69
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getActivity$p()Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->isScreenPhysicsHeightLessThanWidth(Landroid/content/Context;)Z

    move-result v2

    sget-object v4, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->INSTANCE:Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;

    if-eq p1, v0, :cond_81

    if-eq p1, p0, :cond_7a

    if-eqz v2, :cond_7f

    goto :goto_86

    :cond_7a
    if-eqz v2, :cond_7f

    const/16 v1, 0x9

    goto :goto_86

    :cond_7f
    move v1, v3

    goto :goto_86

    :cond_81
    if-eqz v2, :cond_84

    goto :goto_86

    :cond_84
    const/16 v1, 0x8

    :goto_86
    invoke-static {v1}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$setNewOrientation$p(I)V

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getActivity$p()Lcom/android/launcher3/Launcher;

    move-result-object p0

    if-eqz p0, :cond_9f

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getChangeOrientationCallback$p()Ljava/lang/Runnable;

    move-result-object p0

    if-nez p0, :cond_96

    goto :goto_9f

    :cond_96
    sget-object p0, Lcom/oplus/util/OplusExecutors;->TASK_VIEW_TRANSACTION_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->access$getChangeOrientationCallback$p()Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_9f
    :goto_9f
    return-void
.end method
