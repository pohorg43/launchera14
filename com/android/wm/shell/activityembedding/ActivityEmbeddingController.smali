.class public Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTransitionCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/wm/shell/sysui/ShellInit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/wm/shell/transition/Transitions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitionCallbacks:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mContext:Landroid/content/Context;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/wm/shell/transition/Transitions;

    iput-object p3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance p3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    invoke-direct {p3, p1, p0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;-><init>(Landroid/content/Context;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V

    iput-object p3, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    new-instance p1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;
    .registers 4
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lcom/android/wm/shell/sysui/ShellInit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/wm/shell/transition/Transitions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method private handleNonEmbeddedChanges(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/window/TransitionInfo$Change;",
            ">;)Z"
        }
    .end annotation

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_b
    const/4 v2, 0x0

    const/16 v3, 0x200

    if-ltz v0, :cond_32

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-virtual {v4, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_2f

    :cond_2e
    return v2

    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_37
    if-ltz v0, :cond_53

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-nez v5, :cond_50

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_50

    return v2

    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_37

    :cond_53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_58
    if-ltz p0, :cond_6c

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_69
    add-int/lit8 p0, p0, -0x1

    goto :goto_58

    :cond_6c
    return v1
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

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
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
    .param p4  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    invoke-virtual {p0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->cancelAnimationFromMerge()V

    return-void
.end method

.method public onAnimationFinished(Landroid/os/IBinder;)V
    .registers 2
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz p0, :cond_f

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No finish callback found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onInit()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method public setAnimScaleSetting(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->setAnimScaleSetting(F)V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 14
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

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_d
    if-ltz v1, :cond_2b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    const/16 v7, 0x200

    invoke-virtual {v6, v7}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v7

    if-nez v7, :cond_1f

    move v5, v2

    goto :goto_28

    :cond_1f
    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v6

    if-nez v6, :cond_28

    move v4, v2

    :cond_28
    :goto_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_2b
    if-nez v4, :cond_2e

    return v3

    :cond_2e
    if-eqz v5, :cond_37

    invoke-direct {p0, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->handleNonEmbeddedChanges(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_37

    return v3

    :cond_37
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_5e

    invoke-static {v0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->isSupportedOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isCompactWindowMode(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isSettingsTaskFragment(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_5e
    return v3

    :cond_5f
    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->useDefaultActivityAnimation(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_6a

    return v3

    :cond_6a
    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mTransitionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mAnimationRunner:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return v2
.end method
