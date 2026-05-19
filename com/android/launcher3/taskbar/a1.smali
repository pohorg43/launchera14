.class public final synthetic Lcom/android/launcher3/taskbar/a1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/OplusAnimatedFloat$OplusUpdateCallback;
.implements Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/a1;->a:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    return-void
.end method


# virtual methods
.method public onTaskLaunched()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/a1;->a:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->f(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    return-void
.end method

.method public onUpdate(FLjava/lang/Float;Ljava/lang/Float;)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/taskbar/a1;->a:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->e(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;FLjava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method
