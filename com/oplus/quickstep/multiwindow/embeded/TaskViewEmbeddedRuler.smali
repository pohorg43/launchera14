.class public final Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskViewEmbeddedRuler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskViewEmbeddedRuler.kt\ncom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1726#2,3:226\n1747#2,3:229\n1855#2:232\n1747#2,3:233\n1855#2,2:236\n1856#2:238\n1855#2,2:241\n1747#2,3:246\n1726#2,3:249\n37#3,2:239\n37#3,2:243\n1#4:245\n*S KotlinDebug\n*F\n+ 1 TaskViewEmbeddedRuler.kt\ncom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler\n*L\n63#1:226,3\n76#1:229,3\n87#1:232\n92#1:233,3\n96#1:236,2\n87#1:238\n118#1:241,2\n142#1:246,3\n221#1:249,3\n118#1:239,2\n133#1:243,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler$Companion;

.field private static final SKIP_FALL_SCREEN_PROGRESS:F = 0.97f

.field private static final TAG:Ljava/lang/String; = "TaskViewEmbeddedRuler"


# instance fields
.field private mTaskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->Companion:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/TaskView;)V
    .registers 3

    const-string v0, "mTaskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->launchEmbeddableTask$lambda$8(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final launchEmbeddableTask$lambda$8(Ljava/util/function/Consumer;)V
    .registers 2

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final isProgressAlmostEnd(Lcom/android/quickstep/util/TaskViewSimulator;)Z
    .registers 2

    const-string p0, "simulator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const p1, 0x3f7851ec  # 0.97f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isShowSuperLockRelatedUI()Z
    .registers 6

    iget-object p0, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    instance-of v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    const/4 v0, 0x0

    if-eqz p0, :cond_42

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getAllTaskKeysIncluded()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_42

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    :cond_1a
    move v0, v2

    goto :goto_42

    :cond_1c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    sget-object v3, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v3}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppAllowSuperLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    :cond_42
    :goto_42
    return v0
.end method

.method public final launchEmbeddableTask(Lcom/android/launcher3/statemanager/StatefulActivity;Ljava/util/function/Consumer;Z)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    const-string v2, "activity"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isDeviceStateSupport()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    iget-object v2, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    instance-of v4, v2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    check-cast v2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    goto :goto_1d

    :cond_1c
    move-object v2, v5

    :goto_1d
    if-nez v2, :cond_20

    return v3

    :cond_20
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getGroupTask()Lcom/android/quickstep/util/GroupTask;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget-object v4, v4, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v4, :cond_2d

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_2e

    :cond_2d
    move-object v4, v5

    :goto_2e
    if-nez v4, :cond_31

    return v3

    :cond_31
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getGroupTask()Lcom/android/quickstep/util/GroupTask;

    move-result-object v6

    if-eqz v6, :cond_3d

    iget-object v6, v6, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v6, :cond_3d

    iget-object v5, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    :cond_3d
    if-nez v5, :cond_40

    return v3

    :cond_40
    new-instance v6, Lcom/oplus/quickstep/multiwindow/embeded/a;

    invoke-direct {v6, p2, v3}, Lcom/oplus/quickstep/multiwindow/embeded/a;-><init>(Ljava/util/function/Consumer;I)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1, v3, v3, v6, v1}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;IILjava/lang/Runnable;Landroid/os/Handler;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v6

    if-nez v6, :cond_57

    move v2, v3

    goto :goto_5f

    :cond_57
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    :goto_5f
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    if-eqz p3, :cond_67

    invoke-static {v1}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->setFreezeRecentTasksList(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    :cond_67
    const/4 v2, 0x2

    new-array v6, v2, [Landroid/content/Intent;

    iget-object v7, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    aput-object v7, v6, v3

    iget-object v7, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v6}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v7, v2, [I

    iget v9, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v9, v7, v3

    iget v9, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v9, v7, v8

    new-array v9, v2, [I

    iget v2, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    aput v2, v9, v3

    iget v2, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    aput v2, v9, v8

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    const-string v1, "opts.toBundle()"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x10

    const/4 v10, 0x0

    move-object v0, p1

    move-object v1, v6

    move-object v2, v7

    move-object v3, v9

    move v6, v8

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->start$default(Landroid/content/Context;Ljava/util/List;[I[IILandroid/os/Bundle;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final launchEmbeddableTaskAnimated(Lcom/android/launcher3/BaseDraggingActivity;Landroid/view/View;)Z
    .registers 14

    const-string v2, "activity"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "launchView"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isDeviceStateSupport()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    const/4 v2, 0x1

    sput-boolean v2, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    iget-object v4, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    instance-of v5, v4, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const/4 v6, 0x0

    if-eqz v5, :cond_1f

    check-cast v4, Lcom/android/quickstep/views/OplusGroupedTaskView;

    goto :goto_20

    :cond_1f
    move-object v4, v6

    :goto_20
    if-nez v4, :cond_23

    return v3

    :cond_23
    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getGroupTask()Lcom/android/quickstep/util/GroupTask;

    move-result-object v5

    if-eqz v5, :cond_30

    iget-object v5, v5, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v5, :cond_30

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_31

    :cond_30
    move-object v5, v6

    :goto_31
    if-nez v5, :cond_34

    return v3

    :cond_34
    invoke-virtual {v4}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getGroupTask()Lcom/android/quickstep/util/GroupTask;

    move-result-object v7

    if-eqz v7, :cond_41

    iget-object v7, v7, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v7, :cond_41

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_42

    :cond_41
    move-object v7, v6

    :goto_42
    if-nez v7, :cond_45

    return v3

    :cond_45
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/statistics/LauncherStatistics;->statStartAppFromTask()V

    sget-object v8, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v8}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/common/util/LauncherBooster$GpuBoost;->setStartAppPackage(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v6}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v1

    const-string v6, "activity.getActivityLaun…Options(launchView, null)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v8

    if-nez v8, :cond_70

    move v4, v3

    goto :goto_78

    :cond_70
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    :goto_78
    invoke-virtual {v6, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 v4, 0x2

    new-array v6, v4, [Landroid/content/Intent;

    iget-object v8, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    aput-object v8, v6, v3

    iget-object v8, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    aput-object v8, v6, v2

    invoke-static {v6}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v8, v4, [I

    iget v9, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v9, v8, v3

    iget v9, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    aput v9, v8, v2

    new-array v4, v4, [I

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    aput v5, v4, v3

    iget v3, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    aput v3, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const-string v1, "opts.toBundle()"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v0, p1

    move-object v1, v6

    move-object v2, v8

    move-object v3, v4

    move v4, v5

    move-object v5, v7

    move v6, v9

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->start$default(Landroid/content/Context;Ljava/util/List;[I[IILandroid/os/Bundle;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final needShowLockShortcut()Z
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_10

    return v1

    :cond_10
    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_27

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_25
    move v1, v3

    goto :goto_42

    :cond_27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppAllowLock(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_42

    :cond_3e
    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppAllowLock(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    :goto_42
    return v1
.end method

.method public final needShowUnlockShortcut()Z
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_10

    return v1

    :cond_10
    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_25

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_41

    :cond_25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppAllowUnlock(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_41

    :cond_3d
    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppAllowUnlock(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    :cond_41
    :goto_41
    return v1
.end method

.method public final needSkipApplySimulator()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    instance-of p0, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isDeviceStateSupport()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final onClickLockShortcut()Z
    .registers 7

    iget-object p0, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_a

    return v0

    :cond_a
    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v1

    new-instance v2, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {p0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, p0}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->lockApps([Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/Result;

    instance-of v2, v1, Lcom/oplus/quickstep/applock/Result$True;

    if-eqz v2, :cond_4c

    move v0, v4

    :cond_4c
    sget-object v2, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    const/4 v5, 0x0

    invoke-static {v2, v1, v4, v3, v5}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->handleLockFail$default(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;Lcom/oplus/quickstep/applock/Result;ZILjava/lang/Object;)V

    goto :goto_3b

    :cond_53
    return v0
.end method

.method public final onClickProtectShortcut(Lcom/android/systemui/shared/recents/model/Task;Z)V
    .registers 12

    const-string v0, "protectedTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->isDeviceStateSupport()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;->getAllRecentTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_35

    :cond_34
    move-object v2, v3

    :goto_35
    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_40

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_41

    :cond_40
    move-object v4, v3

    :goto_41
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_1c

    :cond_4e
    invoke-virtual {v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    instance-of v4, v2, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_5f

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    :cond_5d
    move v2, v5

    goto :goto_8e

    :cond_5f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_7a

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_7b

    :cond_7a
    move-object v4, v3

    :goto_7b
    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v6, :cond_86

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_87

    :cond_86
    move-object v6, v3

    :goto_87
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    const/4 v2, 0x1

    :goto_8e
    if-nez p2, :cond_cc

    invoke-virtual {v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_98
    :goto_98
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_98

    iget-object v7, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v7, :cond_b1

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_b2

    :cond_b1
    move-object v7, v3

    :goto_b2
    iget-object v8, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v8, :cond_bd

    iget v8, v8, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_be

    :cond_bd
    move-object v8, v3

    :goto_be
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_98

    invoke-virtual {v6}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isProtect()Z

    move-result v6

    if-eqz v6, :cond_98

    move v2, v5

    goto :goto_98

    :cond_cc
    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_e3

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    goto :goto_e4

    :cond_e3
    move-object v1, v3

    :goto_e4
    instance-of v2, v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v2, :cond_eb

    move-object v3, v1

    check-cast v3, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    :cond_eb
    if-eqz v3, :cond_1c

    invoke-virtual {v3, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateContentProtectStateImmediate(Z)V

    goto/16 :goto_1c

    :cond_f2
    return-void
.end method

.method public final onClickUnLockShortcut()V
    .registers 12

    iget-object v0, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2e

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    new-array v2, v4, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/shared/recents/model/Task;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApps([Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_40

    :cond_2e
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "packageName"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v4, v3, v2, v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApp(ZZLjava/lang/String;I)V

    :cond_40
    :goto_40
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "com.oplus.exserviceui"

    invoke-virtual {v1, v5, v2}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v2

    const-string v6, "TaskViewEmbeddedRuler"

    const-string v7, "com.oplus.pscanvas"

    if-nez v2, :cond_5e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_af

    :cond_5e
    iget-object p0, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;

    invoke-virtual {p0}, Lcom/oplus/quickstep/multiwindow/embeded/RecentViewEmbeddedRuler;->getAllRecentTasks()Ljava/util/List;

    move-result-object p0

    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_75

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_aa

    :cond_75
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_79
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v2, v1}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->hasLockedEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onClickUnLockShortcut(), "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", task="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", locked="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v8, v6}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v8, :cond_79

    move p0, v3

    goto :goto_ab

    :cond_aa
    :goto_aa
    move p0, v4

    :goto_ab
    if-nez p0, :cond_af

    move p0, v3

    goto :goto_b0

    :cond_af
    move p0, v4

    :goto_b0
    if-eqz p0, :cond_bd

    const-string p0, "onClickUnLockShortcut(), unlockEmbeddedContainer."

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3, v5, v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApp(ZZLjava/lang/String;I)V

    invoke-virtual {v1, v4, v3, v7, v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApp(ZZLjava/lang/String;I)V

    :cond_bd
    return-void
.end method

.method public final updateLockState()V
    .registers 6

    iget-object p0, p0, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {p0, v1}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->hasLockedEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/oplus/quickstep/applock/OplusLockManager;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "task.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/oplus/quickstep/applock/OplusLockManager;->lockApp(Ljava/lang/String;ILandroid/content/Intent;Z)Lcom/oplus/quickstep/applock/Result;

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {v0, p0, v4, v1, v3}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->handleLockFail$default(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;Lcom/oplus/quickstep/applock/Result;ZILjava/lang/Object;)V

    :cond_36
    return-void
.end method
