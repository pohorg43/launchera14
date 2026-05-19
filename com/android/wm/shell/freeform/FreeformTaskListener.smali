.class public Lcom/android/wm/shell/freeform/FreeformTaskListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/freeform/FreeformTaskListener$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FreeformTaskListener"


# instance fields
.field private final mDesktopModeTaskRepository:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/freeform/FreeformTaskListener$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p4, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    if-eqz p1, :cond_1a

    new-instance p2, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/freeform/FreeformTaskListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->onInit()V

    return-void
.end method

.method public static synthetic b(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->lambda$onFocusTaskChanged$3(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    return-void
.end method

.method public static synthetic c(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->lambda$onTaskInfoChanged$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    return-void
.end method

.method public static synthetic d(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->lambda$onTaskVanished$1(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    return-void
.end method

.method public static synthetic e(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->lambda$onTaskAppeared$0(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    return-void
.end method

.method private findTaskSurface(I)Landroid/view/SurfaceControl;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no surface for taskId="

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$onFocusTaskChanged$3(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 2

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addOrMoveFreeformTaskToTop(I)V

    return-void
.end method

.method private static synthetic lambda$onTaskAppeared$0(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 10

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addOrMoveFreeformTaskToTop(I)V

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_34

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addActiveTask(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz v0, :cond_2d

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x5ffcda50

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v0, v4, v1, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateVisibleFreeformTasks(IIZ)V

    :cond_34
    return-void
.end method

.method private static synthetic lambda$onTaskInfoChanged$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 10

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_28

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addActiveTask(II)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz v0, :cond_28

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x5ffcda50

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateVisibleFreeformTasks(IIZ)V

    return-void
.end method

.method private static synthetic lambda$onTaskVanished$1(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 10

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->removeFreeformTask(I)V

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->removeActiveTask(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz v0, :cond_27

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x78d115d0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v0, v4, v6, v5, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateVisibleFreeformTasks(IIZ)V

    return-void
.end method

.method private onInit()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, -0x5

    aput v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->addFocusListener(Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " tasks"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 11

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v0, :cond_25

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0xf946556

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v0, :cond_39

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    new-instance v0, Lcom/android/launcher3/g;

    invoke-direct {v0, p1}, Lcom/android/launcher3/g;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_39
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_56

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x9f39e55

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v0, v4, v5, v1, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskListener$1;)V

    iput-object p1, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p2, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_45

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v1, p1, p2, v0, v0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_45
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    move-result p2

    if-eqz p2, :cond_55

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    new-instance p2, Lcom/android/launcher/guide/side/e;

    invoke-direct {p2, p1}, Lcom/android/launcher/guide/side/e;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_55
    return-void

    :cond_56
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Task appeared more than once: #"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v1, :cond_24

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x10372543

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v3, v4, v6, v5, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iput-object p1, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/bubbles/j;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/j;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3b
    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 10

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x7132b805

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v0, v4, v1, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/b;

    invoke-direct {v2, p1, v1}, Lcom/android/wm/shell/b;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_31
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_3a

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_3a
    return-void
.end method

.method public reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "FreeformTaskListener"

    return-object p0
.end method
