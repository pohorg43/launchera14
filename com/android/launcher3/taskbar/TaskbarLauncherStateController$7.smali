.class Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->addIconAlignmentEndCallback(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

.field public final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$7;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$7;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$7;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$7;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$500(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$7;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$500(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_16
    return-void
.end method
