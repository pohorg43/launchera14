.class final Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/desktopmode/DesktopMode;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/desktopmode/DesktopModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DesktopModeImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;Lcom/android/wm/shell/desktopmode/DesktopModeController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->lambda$addDesktopGestureExclusionRegionListener$1(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->lambda$addVisibleTasksListener$0(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic lambda$addDesktopGestureExclusionRegionListener$1(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->addTaskCornerListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic lambda$addVisibleTasksListener$0(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public addDesktopGestureExclusionRegionListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Region;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->access$100(Lcom/android/wm/shell/desktopmode/DesktopModeController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/desktopmode/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/desktopmode/b;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopModeController;

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->access$100(Lcom/android/wm/shell/desktopmode/DesktopModeController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/desktopmode/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/desktopmode/b;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
