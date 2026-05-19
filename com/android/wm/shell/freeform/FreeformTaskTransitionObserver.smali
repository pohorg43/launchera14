.class public Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# instance fields
.field private final mTransitionToTaskInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p4, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    sget-boolean p3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p3, :cond_20

    invoke-static {p1}, Lcom/android/wm/shell/freeform/FreeformComponents;->isFreeformEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    new-instance p1, Lcom/android/wm/shell/common/c;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/common/c;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method private onChangeTransitionReady(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private onCloseTransitionReady(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private onOpenTransitionReady(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    return-void
.end method

.method private onToFrontTransitionReady(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method


# virtual methods
.method public onInit()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    return-void
.end method

.method public onTransitionFinished(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTransitionFinished(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    :goto_17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2b

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_2b
    return-void
.end method

.method public onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v0, p1, p2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_23

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_28

    :cond_23
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    return-void
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 12
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_27

    goto :goto_12

    :cond_27
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_12

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_33

    goto :goto_12

    :cond_33
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-eqz v4, :cond_58

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    if-eqz v4, :cond_58

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_58

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    goto :goto_12

    :cond_63
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_86

    if-eq v4, v5, :cond_7b

    const/4 v5, 0x3

    if-eq v4, v5, :cond_77

    const/4 v5, 0x6

    if-eq v4, v5, :cond_73

    goto :goto_89

    :cond_73
    invoke-direct {p0, v3, p3, p4}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->onChangeTransitionReady(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_89

    :cond_77
    invoke-direct {p0, v3, p3, p4}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->onToFrontTransitionReady(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_89

    :cond_7b
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3, p3, p4}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->onCloseTransitionReady(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_89

    :cond_86
    invoke-direct {p0, v3, p3, p4}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->onOpenTransitionReady(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :goto_89
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v4, p1, p2, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)V

    goto :goto_12

    :cond_8f
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransitionStarting(Landroid/os/IBinder;)V
    .registers 2
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
