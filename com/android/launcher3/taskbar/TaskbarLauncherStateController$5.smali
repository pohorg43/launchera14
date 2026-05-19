.class Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->playStateTransitionAnim(Landroid/animation/AnimatorSet;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

.field public final synthetic val$committed:Z

.field public final synthetic val$isInStashedState:Z

.field public final synthetic val$noNeedAnimation:Z

.field public final synthetic val$skipUpdateTaskbarIconAlpha:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;ZZZZ)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->val$isInStashedState:Z

    iput-boolean p3, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->val$committed:Z

    iput-boolean p4, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->val$noNeedAnimation:Z

    iput-boolean p5, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->val$skipUpdateTaskbarIconAlpha:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->val$isInStashedState:Z

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->val$committed:Z

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Hotseat;->setIconsAlpha(F)V

    :cond_15
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->val$noNeedAnimation:Z

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "playStateTransitionAnim onAnimationStart noNeedAnimation not set taskbar alpha"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->val$skipUpdateTaskbarIconAlpha:Z

    if-eqz p1, :cond_1e

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "playStateTransitionAnim onAnimationStart not update taskbar icon alpha"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Hotseat;->getIconsAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_40

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$5;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mIconAlphaForHome:Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getIconsAlpha()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    :cond_40
    return-void
.end method
