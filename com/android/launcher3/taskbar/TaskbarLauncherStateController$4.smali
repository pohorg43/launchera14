.class Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->onStateChangeApplied(IJZ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$602(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)Z

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Gesture alignment anim end"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Gesture alignment anim start"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->hasAnyFlag(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$602(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)Z

    return-void
.end method
