.class public final Lcom/oplus/quickstep/shortcuts/OplusUnLockAppShortcut;
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
        "SMAP\nOplusUnLockAppShortcut.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusUnLockAppShortcut.kt\ncom/oplus/quickstep/shortcuts/OplusUnLockAppShortcut\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,54:1\n1#2:55\n37#3,2:56\n*S KotlinDebug\n*F\n+ 1 OplusUnLockAppShortcut.kt\ncom/oplus/quickstep/shortcuts/OplusUnLockAppShortcut\n*L\n39#1:56,2\n*E\n"
    }
.end annotation


# instance fields
.field private final taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 10

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

    const v2, 0x7f080739

    const v3, 0x7f12044e

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/quickstep/shortcuts/RecentShortcut;-><init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p2, p0, Lcom/oplus/quickstep/shortcuts/OplusUnLockAppShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

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

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/shortcuts/OplusUnLockAppShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_79

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-nez v4, :cond_24

    goto :goto_79

    :cond_24
    const-string v5, "task ?: return@run"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    const/4 v6, 0x0

    if-eqz v5, :cond_54

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v2, Lcom/android/quickstep/views/OplusGroupedTaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getSecondaryTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    new-array v2, v6, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-interface {v5, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/systemui/shared/recents/model/Task;

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApps([Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_79

    :cond_54
    sget-object v5, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->INSTANCE:Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;

    invoke-virtual {v5}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->getHasFeature()Z

    move-result v5

    if-eqz v5, :cond_62

    iget-object v1, v2, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {v1}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->onClickUnLockShortcut()V

    goto :goto_79

    :cond_62
    iget-object v2, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v2, :cond_79

    const-string v4, "key"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "packageName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v6, v3, v4, v2}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApp(ZZLjava/lang/String;I)V

    :cond_79
    :goto_79
    invoke-virtual {p0, v3}, Lcom/oplus/quickstep/shortcuts/RecentShortcut;->clearMenuView(Z)V

    iget-object v1, p0, Lcom/oplus/quickstep/shortcuts/OplusUnLockAppShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {v1}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->isShowSuperLockRelatedUI()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isUserOperateSuperLockInMenu()Z

    move-result v1

    if-nez v1, :cond_93

    invoke-virtual {v0, v3}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->setIsUserOperateSuperLockInMenu(Z)V

    :cond_93
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/statistics/LauncherStatistics;->statsSuperLockingAppInfo()V

    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusUnLockAppShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onClickDynamicSwitchShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method
