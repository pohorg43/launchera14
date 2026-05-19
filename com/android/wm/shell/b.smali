.class public final synthetic Lcom/android/wm/shell/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/b;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_18

    const/4 v0, 0x3

    if-eq p2, v0, :cond_12

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/b;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/b;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void

    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/b;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void

    :cond_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/b;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/b;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/b;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->F(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void

    :pswitch_e  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/b;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->b(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void

    :pswitch_16  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/b;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-static {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->d(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/b;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->c(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void

    :goto_26
    iget-object p0, p0, Lcom/android/wm/shell/b;->b:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->c(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
