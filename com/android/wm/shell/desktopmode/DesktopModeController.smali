.class public Lcom/android/wm/shell/desktopmode/DesktopModeController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;,
        Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;,
        Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/desktopmode/DesktopModeController;",
        ">;",
        "Lcom/android/wm/shell/transition/Transitions$TransitionHandler;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDesktopModeImpl:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

.field private final mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mSettingsObserver:Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 12
    .param p8  # Landroid/os/Handler;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .param p9  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;Lcom/android/wm/shell/desktopmode/DesktopModeController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeImpl:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iput-object p6, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p7, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iput-object p9, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;

    invoke-direct {p3, p0, p1, p8}, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mSettingsObserver:Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto1Enabled()Z

    move-result p1

    if-eqz p1, :cond_2e

    new-instance p1, Lcom/android/wm/shell/desktopmode/h;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/h;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->onInit()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/desktopmode/DesktopModeController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->lambda$bringDesktopAppsToFront$0(Ljava/util/List;Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    return p0
.end method

.method private bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getActiveTasks(I)Landroid/util/ArraySet;

    move-result-object p1

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x25d9ddaf

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v2, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4d

    return-void

    :cond_4d
    invoke-direct {p0, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz p1, :cond_5c

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x1a7b199d

    invoke-static {p1, v4, v3, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5c
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getFreeformTasksInZOrder()Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/desktopmode/a;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/a;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_72
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_84

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_72

    :cond_84
    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/desktopmode/DesktopModeController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0
.end method

.method private clearBoundsForStandardTasks(Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)Landroid/window/WindowContainerTransaction;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;",
            "Landroid/window/WindowContainerTransaction;",
            ")",
            "Landroid/window/WindowContainerTransaction;"
        }
    .end annotation

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x9ffeaab

    invoke-static {p0, v2, v0, v1, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz v2, :cond_42

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x2be02f6c

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v0

    aput-object v4, v7, v3

    invoke-static {v5, v6, v0, v1, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_42
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, p1, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_12

    :cond_48
    return-object p2
.end method

.method private clearFreeformForStandardTasks(Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;",
            "Landroid/window/WindowContainerTransaction;",
            ")V"
        }
    .end annotation

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x4c61819a

    invoke-static {p0, v2, v1, v0, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_12

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz v2, :cond_49

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x672a8890

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    aput-object v4, v7, v3

    invoke-static {v5, v6, v1, v0, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    goto :goto_12

    :cond_4f
    return-void
.end method

.method private createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController$IDesktopModeImpl;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-object v0
.end method

.method private static synthetic lambda$bringDesktopAppsToFront$0(Ljava/util/List;Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method private moveHomeBehindVisibleTasks(Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;",
            "Landroid/window/WindowContainerTransaction;",
            ")V"
        }
    .end annotation

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, -0x7c3a68f

    invoke-static {p0, v2, v0, v1, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2e

    move-object v2, v3

    goto :goto_18

    :cond_2e
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v5

    if-ne v5, v4, :cond_18

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_3e
    if-nez v2, :cond_4d

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz p0, :cond_85

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0x12895668

    invoke-static {p0, p1, v0, v1, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_85

    :cond_4d
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz p1, :cond_66

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v5, p1

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x1c9df98a

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v0

    invoke-static {p1, v3, v4, v1, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object p1

    invoke-virtual {p2, p1, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_71
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object p1

    invoke-virtual {p2, p1, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_71

    :cond_85
    :goto_85
    return-void
.end method

.method private moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    iget-object p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_29
    return-void
.end method

.method private onInit()V
    .registers 5

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0x48c5e5bb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v1, Lcom/android/launcher/layout/d;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/d;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    const-string v2, "extra_shell_desktop_mode"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mSettingsObserver:Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;->observe()V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->updateDesktopModeActive(Z)V

    :cond_2b
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method private setDisplayAreaWindowingMode(IILandroid/window/WindowContainerTransaction;)V
    .registers 16
    .param p2  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->getDisplayAreaInfo(I)Landroid/window/DisplayAreaInfo;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_21

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz p0, :cond_20

    int-to-long p0, p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p3, 0xdeb8dc0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-static {p2, p3, v2, v1, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    return-void

    :cond_21
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz v3, :cond_50

    int-to-long v3, p1

    iget-object p1, p0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    int-to-long v5, p1

    int-to-long v7, p2

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, -0x20bee35e

    const/16 v10, 0x15

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v11, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v2

    const/4 v0, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v0

    invoke-static {p1, v9, v10, v1, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_50
    iget-object p0, p0, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, p0, p2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public addTaskCornerListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 3
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

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->setTaskCornerListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public asDesktopMode()Lcom/android/wm/shell/desktopmode/DesktopMode;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeImpl:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDisplayAreaWindowingMode(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->getDisplayAreaInfo(I)Landroid/window/DisplayAreaInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getVisibleTaskCount(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    move-result p0

    return p0
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 9
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionRequestInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isActive(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0x5a05d9b5

    invoke-static {p0, p1, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    return-object v2

    :cond_1b
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_46

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_46

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz p0, :cond_45

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p0

    invoke-static {p0}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p2, 0x46e05328

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_45
    return-object v2

    :cond_46
    if-eqz p1, :cond_74

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_50

    goto :goto_74

    :cond_50
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz v0, :cond_64

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x77606ec4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p2, v5, v1

    invoke-static {v0, v4, v1, v2, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_64
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, p0, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    return-object p2

    :cond_74
    :goto_74
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    if-eqz p0, :cond_80

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0xf37d2a7

    invoke-static {p0, p1, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_80
    return-object v2
.end method

.method public moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_17

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p1, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_1c

    :cond_17
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_1c
    return-void
.end method

.method public onTaskCornersChanged(ILandroid/graphics/Region;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateTaskCorners(ILandroid/graphics/Region;)V

    return-void
.end method

.method public removeCornersForTask(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->removeTaskCorners(I)V

    return-void
.end method

.method public setDesktopModeActive(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "desktop_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public showDesktopApps(I)V
    .registers 4

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1f

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_1f

    :cond_1a
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 6
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public updateDesktopModeActive(Z)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x4a9cfe83

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v6, v2, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, v3, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->clearFreeformForStandardTasks(Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)V

    if-eqz p1, :cond_35

    invoke-direct {p0, v3, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->moveHomeBehindVisibleTasks(Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)V

    const/4 p1, 0x5

    invoke-direct {p0, v0, p1, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->setDisplayAreaWindowingMode(IILandroid/window/WindowContainerTransaction;)V

    goto :goto_3b

    :cond_35
    invoke-direct {p0, v3, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->clearBoundsForStandardTasks(Ljava/util/ArrayList;Landroid/window/WindowContainerTransaction;)Landroid/window/WindowContainerTransaction;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->setDisplayAreaWindowingMode(IILandroid/window/WindowContainerTransaction;)V

    :goto_3b
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_46

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v4, v2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_4b

    :cond_46
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p0, v4}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_4b
    return-void
.end method
