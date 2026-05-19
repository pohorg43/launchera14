.class public final Lcom/oplus/quickstep/shortcuts/OplusLockAppShortcut;
.super Lcom/oplus/quickstep/shortcuts/RecentShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/quickstep/shortcuts/RecentShortcut<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusLockAppShortcut.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusLockAppShortcut.kt\ncom/oplus/quickstep/shortcuts/OplusLockAppShortcut\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1#2:87\n37#3,2:88\n1855#4,2:90\n*S KotlinDebug\n*F\n+ 1 OplusLockAppShortcut.kt\ncom/oplus/quickstep/shortcuts/OplusLockAppShortcut\n*L\n44#1:88,2\n44#1:90,2\n*E\n"
    }
.end annotation


# instance fields
.field private final taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;I)V
    .registers 11

    const-string v0, "taskContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    const-string v0, "taskContainer.itemInfo"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    const-string v0, "taskContainer.taskView"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080733

    move-object v1, p0

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/quickstep/shortcuts/RecentShortcut;-><init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p2, p0, Lcom/oplus/quickstep/shortcuts/OplusLockAppShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    return-void
.end method


# virtual methods
.method public final varargs lock([Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 16

    const-string p0, "OplusLockAppShortcut"

    const-string v0, "QuickStep"

    const-string v1, "tasks"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v2}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v2

    array-length v10, p1

    const/4 v11, 0x0

    move v12, v11

    :goto_13
    if-ge v12, v10, :cond_75

    aget-object v3, p1, v12

    if-eqz v3, :cond_72

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_72

    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lock(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p0, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "packageName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v6, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v9}, Lcom/oplus/quickstep/applock/OplusLockManager;->lockApp$default(Lcom/oplus/quickstep/applock/OplusLockManager;Ljava/lang/String;ILandroid/content/Intent;ZILjava/lang/Object;)Lcom/oplus/quickstep/applock/Result;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6d

    instance-of v5, v3, Lcom/oplus/quickstep/applock/Result$True;

    if-eqz v5, :cond_6e

    move v1, v11

    goto :goto_6e

    :cond_6d
    move-object v3, v4

    :cond_6e
    :goto_6e
    const/4 v5, 0x2

    invoke-static {v13, v3, v11, v5, v4}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->handleLockFail$default(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;Lcom/oplus/quickstep/applock/Result;ZILjava/lang/Object;)V

    :cond_72
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    :cond_75
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_77
    .catchall {:try_start_a .. :try_end_77} :catchall_78

    goto :goto_7d

    :catchall_78
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_7d
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_97

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock app error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isQucikClick()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/shortcuts/OplusLockAppShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_23

    move v1, v3

    goto :goto_86

    :cond_23
    const-string v4, "it.task ?: return@let"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const/4 v5, 0x0

    if-eqz v4, :cond_71

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v1, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getSecondaryTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    new-array v1, v5, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {v4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/shared/recents/model/Task;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->lockApps([Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/applock/Result;

    instance-of v4, v2, Lcom/oplus/quickstep/applock/Result$True;

    if-eqz v4, :cond_69

    move v1, v5

    :cond_69
    sget-object v4, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v2, v5, v6, v7}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->handleLockFail$default(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;Lcom/oplus/quickstep/applock/Result;ZILjava/lang/Object;)V

    goto :goto_58

    :cond_71
    invoke-virtual {v2}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, v1, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->onClickLockShortcut()Z

    move-result v1

    goto :goto_86

    :cond_7e
    new-array v0, v3, [Lcom/android/systemui/shared/recents/model/Task;

    aput-object v2, v0, v5

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/shortcuts/OplusLockAppShortcut;->lock([Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v1

    :cond_86
    :goto_86
    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/shortcuts/RecentShortcut;->clearMenuView(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/shortcuts/OplusLockAppShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->isShowSuperLockRelatedUI()Z

    move-result v0

    if-eqz v0, :cond_a2

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isUserOperateSuperLockInMenu()Z

    move-result v2

    if-nez v2, :cond_a2

    invoke-virtual {v0, v3}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->setIsUserOperateSuperLockInMenu(Z)V

    :cond_a2
    if-eqz v1, :cond_b2

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    if-eqz v0, :cond_b2

    new-instance v1, Lcom/oplus/quickstep/events/ui/UpdateLockViewEvent;

    invoke-direct {v1}, Lcom/oplus/quickstep/events/ui/UpdateLockViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    :cond_b2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statsSuperLockingAppInfo()V

    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusLockAppShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onClickDynamicSwitchShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method
