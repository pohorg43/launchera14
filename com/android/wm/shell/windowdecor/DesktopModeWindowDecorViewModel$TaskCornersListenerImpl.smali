.class Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$TaskCornersListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskCornersListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V

    return-void
.end method

.method public static synthetic a(ILcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->lambda$onTaskCornersRemoved$2(ILcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void
.end method

.method public static synthetic b(ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->lambda$onTaskCornersRemoved$3(ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method public static synthetic c(ILandroid/graphics/Region;Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->lambda$onTaskCornersChanged$0(ILandroid/graphics/Region;Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void
.end method

.method public static synthetic d(ILandroid/graphics/Region;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->lambda$onTaskCornersChanged$1(ILandroid/graphics/Region;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method private static synthetic lambda$onTaskCornersChanged$0(ILandroid/graphics/Region;Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->onTaskCornersChanged(ILandroid/graphics/Region;)V

    return-void
.end method

.method private static synthetic lambda$onTaskCornersChanged$1(ILandroid/graphics/Region;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->onTaskCornersChanged(ILandroid/graphics/Region;)V

    return-void
.end method

.method private static synthetic lambda$onTaskCornersRemoved$2(ILcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->removeCornersForTask(I)V

    return-void
.end method

.method private static synthetic lambda$onTaskCornersRemoved$3(ILcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->removeCornersForTask(I)V

    return-void
.end method


# virtual methods
.method public onTaskCornersChanged(ILandroid/graphics/Region;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$600(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/m;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/wm/shell/windowdecor/m;-><init>(ILandroid/graphics/Region;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$700(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/windowdecor/m;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/wm/shell/windowdecor/m;-><init>(ILandroid/graphics/Region;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTaskCornersRemoved(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$600(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/l;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/wm/shell/windowdecor/l;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$700(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/windowdecor/l;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/windowdecor/l;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
