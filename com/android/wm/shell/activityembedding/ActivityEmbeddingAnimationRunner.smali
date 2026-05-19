.class Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityEmbeddingAnimR"


# instance fields
.field private mActiveAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    new-instance p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->lambda$createAnimator$1(Ljava/util/List;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mActiveAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private addBackgroundColorIfNeeded(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/List;)V
    .registers 7
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    iget-object v0, p4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    iget-object p4, p4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-static {p1, v0, p4, v1}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-static {p0, p4, p2, p3}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->addBackgroundToTransition(Landroid/view/SurfaceControl;ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_22
    return-void
.end method

.method private addEdgeExtensionIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    iget-object v0, p4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasExtension()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_4

    :cond_19
    iget-object p4, p4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v1, Lcom/android/wm/shell/activityembedding/e;

    invoke-direct {v1, p4, v0, p2}, Lcom/android/wm/shell/activityembedding/e;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2e
    invoke-static {p4, v0, p1, p2}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_4

    :cond_32
    return-void
.end method

.method public static synthetic b(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->lambda$addEdgeExtensionIfNeeded$2(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->lambda$startAnimation$0(Landroid/os/IBinder;)V

    return-void
.end method

.method private createAnimationAdapters(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;
    .registers 9
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    const/16 v5, 0x4000

    invoke-virtual {v2, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isSettingsTaskFragment(Landroid/window/TransitionInfo;)Z

    move-result v5

    if-nez v5, :cond_2f

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2f
    if-nez v1, :cond_9

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_9

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v1, v4

    goto :goto_9

    :cond_47
    if-eqz v1, :cond_4e

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createChangeAnimationAdapters(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_4e
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_57
    if-ltz v1, :cond_6b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    if-ne v2, v3, :cond_68

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_68
    add-int/lit8 v1, v1, -0x1

    goto :goto_57

    :cond_6b
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createCloseAnimationAdapters(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7a
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenAnimationAdapters(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private createChangeAnimationAdapters(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;
    .registers 16
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->shouldUseJumpCutForChangeTransition(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_bd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    if-ne v9, v6, :cond_24

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    goto :goto_24

    :cond_48
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {p1, v2}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_65
    move-object v2, v5

    :goto_66
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    if-eq v2, v5, :cond_7d

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_7d
    iget-object v6, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-virtual {v6, v5, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->createChangeBoundsChangeAnimations(Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)[Landroid/view/animation/Animation;

    move-result-object v6

    aget-object v9, v6, v8

    invoke-direct {p0, v5, v2, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-static {v5, p1}, Lcom/android/wm/shell/util/TransitionUtil;->getRootFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Root;

    move-result-object v11

    if-eqz v10, :cond_9a

    new-instance v12, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;

    aget-object v7, v6, v7

    invoke-direct {v12, v7, v5, v10, v11}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Root;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    :cond_9a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to take screenshot for change="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ActivityEmbeddingAnimR"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b0
    new-instance v5, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;

    aget-object v6, v6, v8

    invoke-direct {v5, v6, v2, v11}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v9

    goto/16 :goto_24

    :cond_bd
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_142

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v8

    :goto_cc
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_df

    goto :goto_cc

    :cond_df
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v9

    if-eqz v9, :cond_f3

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f9

    :cond_f3
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    if-ne v9, v6, :cond_fe

    :cond_f9
    invoke-static {v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->createNoopAnimation(Landroid/window/TransitionInfo$Change;)Landroid/view/animation/Animation;

    move-result-object v9

    goto :goto_116

    :cond_fe
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v4

    if-eqz v4, :cond_10f

    iget-object v4, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-virtual {v4, v5, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->createChangeBoundsCloseAnimation(Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v9

    goto :goto_115

    :cond_10f
    iget-object v4, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-virtual {v4, v5, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->createChangeBoundsOpenAnimation(Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v9

    :goto_115
    move v4, v7

    :goto_116
    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isTabletDevice()Z

    move-result v10

    if-nez v10, :cond_12d

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isMirageCompact(Landroid/window/TransitionInfo$Change;)Z

    move-result v10

    if-nez v10, :cond_12d

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v10

    invoke-virtual {v10, v5, v2}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->setBackdropColor(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;)V

    :cond_12d
    new-instance v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    invoke-static {v5, p1}, Lcom/android/wm/shell/util/TransitionUtil;->getRootFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Root;

    move-result-object v11

    invoke-direct {v10, v9, v5, v11}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    :cond_13a
    if-eqz v4, :cond_141

    if-eqz v2, :cond_141

    invoke-virtual {v2, v8}, Landroid/view/animation/Animation;->setShowBackdrop(Z)V

    :cond_141
    return-object v0

    :cond_142
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There should be at least one changing window to play the change animation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createCloseAnimationAdapters(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;
    .registers 5
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wm/shell/activityembedding/b;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/activityembedding/b;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private createOpenAnimationAdapters(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;
    .registers 5
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wm/shell/activityembedding/c;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/activityembedding/c;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private createOpenCloseAnimationAdapter(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;Landroid/graphics/Rect;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;
    .registers 11
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-interface {p3, p1, p2, p4}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;->get(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-static {p2, p1}, Lcom/android/wm/shell/util/TransitionUtil;->getRootFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Root;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/window/TransitionInfo$Root;)V

    return-object p0
.end method

.method private createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;
    .registers 14
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Z",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1c

    :cond_3d
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1c

    :cond_4f
    const/16 v4, 0x3e8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-direct {p0, p1, v6, p3, v2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapter(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;Landroid/graphics/Rect;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    move-result-object v7

    if-eqz p2, :cond_72

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->overrideLayer(I)V

    move v4, v8

    :cond_72
    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isPermisstionTaskFragment(Landroid/window/TransitionInfo$Change;)Z

    move-result v6

    if-eqz v6, :cond_81

    add-int/lit16 v6, v4, 0xc8

    invoke-virtual {v7, v6}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->overrideLayer(I)V

    :cond_81
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_85
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->shouldUseSnapshotAnimationForClosingChange(Landroid/window/TransitionInfo$Change;)Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-direct {p0, v1, v1, p4}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_b9

    new-instance v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;

    invoke-static {}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->createShowSnapshotForClosingAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-static {v1, p1}, Lcom/android/wm/shell/util/TransitionUtil;->getRootFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Root;

    move-result-object v8

    invoke-direct {v6, v7, v1, v2, v8}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Root;)V

    if-nez p2, :cond_b6

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v6, v4}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->overrideLayer(I)V

    move v4, v2

    :cond_b6
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b9
    invoke-direct {p0, p1, v1, p3, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapter(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$AnimationProvider;Landroid/graphics/Rect;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    move-result-object v1

    if-nez p2, :cond_c5

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->overrideLayer(I)V

    move v4, v2

    :cond_c5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_89

    :cond_c9
    return-object v5
.end method

.method private getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 5
    .param p1  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->shouldUseSnapshotAnimationForChange(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p0

    :cond_1a
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    const v0, 0x7fffffff

    invoke-static {p3, p1, p2, p0, v0}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addEdgeExtensionIfNeeded$2(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-static {p0, p1, p3, p2}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private static synthetic lambda$createAnimator$1(Ljava/util/List;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 6

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_14

    :cond_28
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic lambda$startAnimation$0(Landroid/os/IBinder;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->onAnimationFinished(Landroid/os/IBinder;)V

    return-void
.end method

.method private prepareForFirstFrame(Landroid/view/SurfaceControl$Transaction;Ljava/util/List;)V
    .registers 5
    .param p1  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->prepareForFirstFrame(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method private prepareForJumpCut(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_53

    :cond_30
    invoke-static {v0, p1}, Lcom/android/wm/shell/util/TransitionUtil;->getRootFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Root;

    move-result-object v2

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p2, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_53
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_71

    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_71
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_7a
    return-void
.end method

.method private shouldUseJumpCutForChangeTransition(Landroid/window/TransitionInfo;)Z
    .registers 9
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_d

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_d

    :cond_2f
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_4c
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_54

    return v1

    :cond_54
    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isSettingsTaskFragment(Landroid/window/TransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_5f

    return v1

    :cond_5f
    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->isCompactWindowMode(Landroid/window/TransitionInfo;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6b

    return v2

    :cond_6b
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    move v4, v3

    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    goto :goto_75

    :cond_88
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_9d

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    goto :goto_75

    :cond_9d
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_75

    :cond_b0
    if-eqz v3, :cond_b5

    if-eqz v4, :cond_b5

    goto :goto_b6

    :cond_b5
    move v1, v2

    :goto_b6
    return v1
.end method

.method public static shouldUseSnapshotAnimationForClosingChange(Landroid/window/TransitionInfo$Change;)Z
    .registers 2
    .param p0  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public cancelAnimationFromMerge()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mActiveAnimator:Landroid/animation/Animator;

    if-nez p0, :cond_c

    const-string p0, "ActivityEmbeddingAnimR"

    const-string v0, "No active ActivityEmbedding animator running but mergeAnimation is trying to cancel one."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    return-void
.end method

.method public createAnimator(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Ljava/util/List;)Landroid/animation/Animator;
    .registers 13
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/lang/Runnable;",
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;>;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createAnimationAdapters(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_50

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1a

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->prepareForJumpCut(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_44

    :cond_1a
    invoke-direct {p0, p2, p3, p5, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->addEdgeExtensionIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->addBackgroundColorIfNeeded(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    invoke-virtual {p3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->getDurationHint()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_24

    :cond_39
    new-instance p1, Lcom/android/wm/shell/activityembedding/a;

    invoke-direct {p1, v0, v1}, Lcom/android/wm/shell/activityembedding/a;-><init>(Ljava/util/List;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0, p2, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->prepareForFirstFrame(Landroid/view/SurfaceControl$Transaction;Ljava/util/List;)V

    :goto_44
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;

    invoke-direct {p1, p0, v0, p4}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    :array_50
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setAnimScaleSetting(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->setAnimScaleSetting(F)V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
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

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/android/wm/shell/activityembedding/d;

    invoke-direct {v4, p0, p1}, Lcom/android/wm/shell/activityembedding/d;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Landroid/os/IBinder;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createAnimator(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Ljava/util/List;)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3f

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/function/Consumer;

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_28

    :cond_38
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_45

    :cond_3f
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_45
    return-void
.end method
