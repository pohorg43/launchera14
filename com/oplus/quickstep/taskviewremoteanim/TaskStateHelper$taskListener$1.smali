.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;
.super Lcom/android/wm/shell/transition/OplusTaskListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskStateHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskStateHelper.kt\ncom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,291:1\n1855#2,2:292\n1855#2,2:294\n1855#2,2:296\n1855#2,2:298\n1855#2,2:300\n1855#2,2:302\n1855#2,2:304\n1855#2,2:306\n*S KotlinDebug\n*F\n+ 1 TaskStateHelper.kt\ncom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1\n*L\n52#1:292,2\n62#1:294,2\n75#1:296,2\n86#1:298,2\n97#1:300,2\n108#1:302,2\n120#1:304,2\n131#1:306,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/transition/OplusTaskListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;->onBackPressedOnTaskRoot$lambda$12(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;->onTaskAppeared$lambda$4(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic c(Z)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;->onLandScapeSceneExit$lambda$16(Z)V

    return-void
.end method

.method public static synthetic d(Z)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;->onTransitionFinish$lambda$14(Z)V

    return-void
.end method

.method public static synthetic e(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;->onTaskVanished$lambda$10(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic f(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$taskListener$1;->onTaskInfoChanged$lambda$6(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private static final onBackPressedOnTaskRoot$lambda$12(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    if-eqz p0, :cond_5

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_6

    :cond_5
    const/4 v0, -0x1

    :goto_6
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getGlobalListeners$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_e

    :cond_1e
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getTaskIdListeners$p()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-eqz v0, :cond_2d

    invoke-interface {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_2d
    return-void
.end method

.method private static final onLandScapeSceneExit$lambda$16(Z)V
    .registers 3

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getGlobalListeners$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onLandScapeSceneExit(Z)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method private static final onTaskAppeared$lambda$4(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 6

    if-eqz p0, :cond_3a

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    const-string v1, "info.launchCookies"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getPendingLaunchCookieListeners$p()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getPendingLaunchCookieListeners$p()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getTaskIdListeners$p()Landroid/util/SparseArray;

    move-result-object v1

    iget v3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    :cond_3a
    if-eqz p0, :cond_3f

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_40

    :cond_3f
    const/4 v0, -0x1

    :goto_40
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getGlobalListeners$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v2, p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    goto :goto_48

    :cond_58
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getTaskIdListeners$p()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-eqz v0, :cond_67

    invoke-interface {v0, p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_67
    return-void
.end method

.method private static final onTaskInfoChanged$lambda$6(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    if-eqz p0, :cond_5

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_6

    :cond_5
    const/4 v0, -0x1

    :goto_6
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getGlobalListeners$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_e

    :cond_1e
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getTaskIdListeners$p()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-eqz v0, :cond_2d

    invoke-interface {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_2d
    return-void
.end method

.method private static final onTaskVanished$lambda$10(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    if-eqz p0, :cond_29

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    const-string v1, "info.launchCookies"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getPendingLaunchCookieListeners$p()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-eqz v1, :cond_d

    invoke-interface {v1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_d

    :cond_29
    if-eqz p0, :cond_2e

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_2f

    :cond_2e
    const/4 v0, -0x1

    :goto_2f
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getGlobalListeners$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v2, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_37

    :cond_47
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getTaskIdListeners$p()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    if-eqz v0, :cond_56

    invoke-interface {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_56
    return-void
.end method

.method private static final onTransitionFinish$lambda$14(Z)V
    .registers 3

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->access$getGlobalListeners$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;

    invoke-interface {v1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;->onTransitionFinish(Z)V

    goto :goto_8

    :cond_18
    return-void
.end method


# virtual methods
.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBackPressedOnTaskRoot: taskInfo="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/quickstep/util/n;

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/n;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v0, "MAIN_EXECUTOR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->runOnTargetThread(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLandScapeSceneExit(Z)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "onLandScapeSceneExit: isRecent="

    const-string v0, "TaskStateHelper"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_d
    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->enableSwipeUp()V

    new-instance p0, Lcom/android/launcher3/taskbar/k0;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/k0;-><init>(ZI)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v0, "MAIN_EXECUTOR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->runOnTargetThread(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTaskAppeared: taskInfo="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string p2, "MAIN_EXECUTOR"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->runOnTargetThread(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTaskInfoChanged: taskInfo="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    new-instance p0, Lcom/coui/appcompat/reddot/a;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/reddot/a;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v0, "MAIN_EXECUTOR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->runOnTargetThread(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTaskVanished: taskInfo="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/dock/e;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/e;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v0, "MAIN_EXECUTOR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->runOnTargetThread(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTransitionFinish(Z)V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "onTransitionFinish: isRecent="

    const-string v0, "TaskStateHelper"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_d
    new-instance p0, Lcom/android/launcher3/taskbar/k0;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/k0;-><init>(ZI)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v0, "MAIN_EXECUTOR"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->runOnTargetThread(Lcom/android/launcher3/util/LooperExecutor;Ljava/lang/Runnable;)V

    return-void
.end method
