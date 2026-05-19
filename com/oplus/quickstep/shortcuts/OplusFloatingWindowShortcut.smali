.class public final Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;
.super Lcom/oplus/quickstep/shortcuts/RecentShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/quickstep/shortcuts/RecentShortcut<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusFloatingWindowShortcut"


# instance fields
.field private final taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;->Companion:Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut$Companion;

    return-void
.end method

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

    const v2, 0x7f080731

    const v3, 0x7f120444

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/quickstep/shortcuts/RecentShortcut;-><init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p2, p0, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    return-void
.end method

.method public static synthetic i(Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;->onClick$lambda$0(Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;)V

    return-void
.end method

.method public static synthetic j(ILandroid/os/Bundle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;->perform$lambda$2(ILandroid/os/Bundle;)V

    return-void
.end method

.method private static final onClick$lambda$0(Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;->perform()V

    return-void
.end method

.method private static final perform$lambda$2(ILandroid/os/Bundle;)V
    .registers 3

    const-string v0, "$bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecentsCore(ILandroid/os/Bundle;)Z

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->setStartDone()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusTaskUtils;->INSTANCE:Lcom/oplus/quickstep/utils/OplusTaskUtils;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isQucikClick()Z

    move-result v0

    const-string v1, "OplusFloatingWindowShortcut"

    if-eqz v0, :cond_15

    const-string p0, "quick click the mini window menu"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    const-string v0, "click the mini window menu"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final perform()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v1, p0, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onClickChangeWindowModeShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/shortcuts/RecentShortcut;->clearMenuView(Z)V

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    const/4 v1, 0x2

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/states/OPlusBaseState;->addActionFlag(I)V

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/states/OPlusBaseState;->resetActionFlag()V

    :cond_2c
    iget-object v0, p0, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_40

    const-string p0, "OplusFloatingWindowShortcut"

    const-string v0, "task is null ,return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_40
    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusFloatingWindowShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zoom_task_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "android:activity.mZoomLaunchFlags"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/oplus/util/OplusExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lm2/a;

    invoke-direct {v3, p0, v0, v1}, Lm2/a;-><init>(ILandroid/os/Bundle;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setIconAndLabelFor(Landroid/widget/TextView;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/widget/TextView;)V

    if-eqz p1, :cond_15

    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    :cond_15
    return-void
.end method
