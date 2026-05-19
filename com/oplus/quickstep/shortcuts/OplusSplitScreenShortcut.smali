.class public final Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher3/BaseDraggingActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$Companion;

.field public static final TAG:Ljava/lang/String; = "OplusSplitScreenShortcut"


# instance fields
.field private final recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field private final splitScreenObserver:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$splitScreenObserver$1;

.field private final taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->Companion:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)V
    .registers 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    const v2, 0x7f080734

    const v3, 0x7f1204d2

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p2, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    new-instance p1, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$splitScreenObserver$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$splitScreenObserver$1;-><init>(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)V

    iput-object p1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->splitScreenObserver:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$splitScreenObserver$1;

    return-void
.end method

.method public static final synthetic access$getMTarget$p$s1693085027(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getRecentsView$p(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->recentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method public static final synthetic access$getTaskContainer$p(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;)Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    return-object p0
.end method

.method public static synthetic i(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->onClick$lambda$0(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;Landroid/view/View;)V

    return-void
.end method

.method private final onActivityStarted(Lcom/android/launcher3/BaseDraggingActivity;)V
    .registers 2

    sget-object p0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsModel;->forceReloadedTasks()V

    return-void
.end method

.method private static final onClick$lambda$0(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;Landroid/view/View;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->performSplit(Landroid/view/View;)V

    return-void
.end method

.method private final performSplit(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v2, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onClickChangeWindowModeShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V

    new-instance v1, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$performSplit$onLayoutChangeListener$1;

    invoke-direct {v1, p0, v0}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$performSplit$onLayoutChangeListener$1;-><init>(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;I)V

    new-instance v2, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$performSplit$onDeviceProfileChangeListener$1;

    invoke-direct {v2, p0, v1}, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$performSplit$onDeviceProfileChangeListener$1;-><init>(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$performSplit$onLayoutChangeListener$1;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/popup/SystemShortcut;->dismissTaskMenuView(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->splitScreenForRecentTasks(I)Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->splitScreenObserver:Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut$splitScreenObserver$1;

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->registerSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->supportTaskViewRemoteAnimation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_50

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->canGoBackToTaskView()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView(Z)V

    :cond_62
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v0, v2}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_77

    const-string p0, "OplusSplitScreenShortcut"

    const-string p1, "display is null, start split screen failed"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_77
    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    instance-of p0, p0, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_88

    invoke-static {v1}, Lcom/android/launcher3/OplusLauncherInjector;->setFromSplitScreenShortcutChanged(Z)V

    :cond_88
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

    if-eqz v0, :cond_15

    const-string p0, "OplusSplitScreenShortcut"

    const-string p1, "quick click the split menu"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_22

    return-void

    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    iget-object v1, p0, Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;->taskContainer:Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onClickChangeWindowModeShortcut(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V

    new-instance v0, Lcom/android/wm/shell/animation/c;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/oplus/quickstep/shortcuts/OplusSplitScreenShortcut;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
