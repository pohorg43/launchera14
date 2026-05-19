.class Lcom/android/quickstep/TaskViewUtils$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->composeRecentsSplitLaunchAnimator(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/statehandlers/DepthController;IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$finishCallback:Ljava/lang/Runnable;

.field public final synthetic val$launchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/GroupedTaskView;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$5;->val$launchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$5;->val$finishCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "TaskViewUtils"

    const-string v0, "RecentsSplitLaunchAnimator onEnd"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/TaskViewUtils$5;->val$finishCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/quickstep/TaskViewUtils$5;->val$launchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/quickstep/TaskViewUtils;->access$000(Lcom/android/quickstep/views/GroupedTaskView;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "TaskViewUtils"

    const-string v0, "RecentsSplitLaunchAnimator onStart. Set target state to NORMAL and hide DockView"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/TaskViewUtils$5;->val$launchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quickstep/views/LauncherRecentsView;

    if-eqz p1, :cond_22

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1}, Lcom/android/launcher3/states/OPlusBaseState;->setTargetLauncherState(Lcom/android/launcher3/states/OPlusBaseState;)V

    iget-object p1, p0, Lcom/android/quickstep/TaskViewUtils$5;->val$launchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/LauncherRecentsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockViewVisible(Z)V

    :cond_22
    iget-object p0, p0, Lcom/android/quickstep/TaskViewUtils$5;->val$launchingTaskView:Lcom/android/quickstep/views/GroupedTaskView;

    const/high16 p1, -0x80000000

    invoke-static {p0, p1}, Lcom/android/quickstep/TaskViewUtils;->access$000(Lcom/android/quickstep/views/GroupedTaskView;I)V

    return-void
.end method
