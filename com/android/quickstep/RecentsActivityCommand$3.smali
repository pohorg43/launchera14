.class Lcom/android/quickstep/RecentsActivityCommand$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentsActivityCommand;->createWindowAndAdjacentAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/RecentsActivityCommand;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsActivityCommand;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivityCommand$3;->this$0:Lcom/android/quickstep/RecentsActivityCommand;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivityCommand$3;->this$0:Lcom/android/quickstep/RecentsActivityCommand;

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivityCommand;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    if-eqz p1, :cond_21

    check-cast p0, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object p0

    if-nez p0, :cond_1c

    return-void

    :cond_1c
    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    :cond_21
    sput-boolean v0, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    return-void
.end method
