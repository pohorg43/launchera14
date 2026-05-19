.class public Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;


# instance fields
.field private final mPendingTransitionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_1a

    new-instance p2, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {p2, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->onInit()V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->lambda$startAnimation$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private onInit()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V

    return-void
.end method

.method private startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_a

    return p1

    :cond_a
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/16 p3, 0x3f0

    const/4 v0, 0x1

    if-ne p2, p3, :cond_1a

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p3

    if-ne p3, v0, :cond_1a

    move p1, v0

    :cond_1a
    const/16 p3, 0x3f1

    if-ne p2, p3, :cond_26

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/4 p2, 0x5

    if-ne p0, p2, :cond_26

    goto :goto_27

    :cond_26
    move v0, p1

    :goto_27
    return v0
.end method

.method private startMinimizeTransition(Landroid/os/IBinder;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 3
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 11
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

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, 0x0

    move v1, v0

    :cond_a
    :goto_a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1f

    goto :goto_a

    :cond_1f
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2b

    goto :goto_a

    :cond_2b
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3f

    const/4 v4, 0x6

    if-eq v3, v4, :cond_36

    goto :goto_a

    :cond_36
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    invoke-direct {p0, p1, v3, v2}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->startChangeTransition(Landroid/os/IBinder;ILandroid/window/TransitionInfo$Change;)Z

    move-result v2

    goto :goto_43

    :cond_3f
    invoke-direct {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->startMinimizeTransition(Landroid/os/IBinder;)Z

    move-result v2

    :goto_43
    or-int/2addr v1, v2

    goto :goto_a

    :cond_45
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_4d

    return v0

    :cond_4d
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/freeform/a;

    invoke-direct {p1, p5, v0}, Lcom/android/wm/shell/freeform/a;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    invoke-interface {p0, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public startMinimizedModeTransition(Landroid/window/WindowContainerTransaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startRemoveTransition(Landroid/window/WindowContainerTransaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startWindowingModeTransition(ILandroid/window/WindowContainerTransaction;)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    const/16 p1, 0x3f1

    goto :goto_22

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected target windowing mode "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    const/16 p1, 0x3f0

    :goto_22
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
