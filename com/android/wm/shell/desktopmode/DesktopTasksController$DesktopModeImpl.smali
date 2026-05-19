.class final Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/desktopmode/DesktopMode;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/desktopmode/DesktopTasksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DesktopModeImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->addVisibleTasksListener$lambda$0(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static final addDesktopGestureExclusionRegionListener$lambda$1(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->setTaskCornerListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static final addVisibleTasksListener$lambda$0(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->addDesktopGestureExclusionRegionListener$lambda$1(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

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

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->access$getMainExecutor$p(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance v1, Lcom/android/wm/shell/desktopmode/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/desktopmode/b;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->access$getMainExecutor$p(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    new-instance v1, Lcom/android/wm/shell/desktopmode/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/desktopmode/b;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
