.class public Lcom/android/wm/shell/pip/tv/TvPipBoundsController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipBoundsController$PipBoundsListener;
    }
.end annotation


# static fields
.field public static final POSITION_DEBOUNCE_TIMEOUT_MILLIS:J = 0x12cL
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TvPipBoundsController"


# instance fields
.field private final mApplyPendingPlacementRunnable:Ljava/lang/Runnable;

.field private final mClock:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentPlacementBounds:Landroid/graphics/Rect;

.field private mListener:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$PipBoundsListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

.field private mPendingPlacementAnimationDuration:I

.field private mPendingStash:Z

.field private mPipTargetBounds:Landroid/graphics/Rect;

.field private mResizeAnimationDuration:I

.field private mStashDurationMs:I

.field private final mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

.field private final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

.field private mUnstashRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/pip/tv/e;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/e;-><init>(Lcom/android/wm/shell/pip/tv/TvPipBoundsController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mApplyPendingPlacementRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mClock:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iput-object p5, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->loadConfigurations()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->lambda$scheduleUnstashIfNeeded$0(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;)V

    return-void
.end method

.method private applyPendingPlacement()V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    const-string v0, "TvPipBoundsController"

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x260d1cfe

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    if-eqz v0, :cond_24

    iget-boolean v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    iget v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacementAnimationDuration:I

    invoke-direct {p0, v0, v3, v4}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacement(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;ZI)V

    iput-boolean v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    :cond_24
    return-void
.end method

.method private applyPlacement(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;ZI)V
    .registers 5

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getStashType()I

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->scheduleUnstashIfNeeded(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;)V

    :cond_b
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_14

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_18

    :cond_14
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getUnstashedBounds()Landroid/graphics/Rect;

    move-result-object p1

    :goto_18
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacementBounds(Landroid/graphics/Rect;I)V

    return-void
.end method

.method private applyPlacementBounds(Landroid/graphics/Rect;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mCurrentPlacementBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->adjustBoundsForTemporaryDecor(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->movePipTo(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/pip/tv/TvPipBoundsController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPendingPlacement()V

    return-void
.end method

.method private cancelScheduledPlacement()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mApplyPendingPlacementRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Ljava/lang/Runnable;

    :cond_15
    return-void
.end method

.method private synthetic lambda$scheduleUnstashIfNeeded$0(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getUnstashDestinationBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mResizeAnimationDuration:I

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacementBounds(Landroid/graphics/Rect;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private loadConfigurations()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$integer;->config_pipResizeAnimationDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mResizeAnimationDuration:I

    sget v1, Lcom/android/wm/shell/R$integer;->config_pipStashDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mStashDurationMs:I

    return-void
.end method

.method private movePipTo(Landroid/graphics/Rect;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPipTargetBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPipTargetBounds:Landroid/graphics/Rect;

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_2b

    const-string v0, "TvPipBoundsController"

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x5933c256

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mListener:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$PipBoundsListener;

    if-eqz p0, :cond_32

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController$PipBoundsListener;->onPipTargetBoundsChange(Landroid/graphics/Rect;I)V

    :cond_32
    return-void
.end method

.method private schedulePinnedStackPlacement(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;I)V
    .registers 11

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    const-string v0, "TvPipBoundsController"

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x6408e07

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v3, v7, v1

    invoke-static {v4, v5, v2, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-boolean p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    if-nez p2, :cond_42

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getTriggerStash()Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :cond_42
    :goto_42
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    return-void

    :cond_45
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getStashType()I

    move-result v0

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    if-nez v0, :cond_57

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getTriggerStash()Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_57

    :cond_56
    move v1, v2

    :cond_57
    :goto_57
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingStash:Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mApplyPendingPlacementRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacement:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPendingPlacementAnimationDuration:I

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mApplyPendingPlacementRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mClock:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scheduleUnstashIfNeeded(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Ljava/lang/Runnable;

    :cond_c
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getUnstashDestinationBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mClock:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mStashDurationMs:I

    int-to-long v3, p0

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_2e
    return-void
.end method


# virtual methods
.method public recalculatePipBounds(ZZIZ)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->getTvPipPlacement()Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    move v2, v1

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getStashType()I

    move-result v2

    :goto_f
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    if-eqz p1, :cond_21

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->cancelScheduledPlacement()V

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getAnchorBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacementBounds(Landroid/graphics/Rect;I)V

    goto :goto_4c

    :cond_21
    if-eqz p2, :cond_2e

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->cancelScheduledPlacement()V

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getUnstashedBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacementBounds(Landroid/graphics/Rect;I)V

    goto :goto_4c

    :cond_2e
    if-eqz p4, :cond_42

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mUnstashRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3a

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;->getTriggerStash()Z

    move-result p1

    if-eqz p1, :cond_3b

    :cond_3a
    const/4 v1, 0x1

    :cond_3b
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->cancelScheduledPlacement()V

    invoke-direct {p0, v0, v1, p3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacement(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;ZI)V

    goto :goto_4c

    :cond_42
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mCurrentPlacementBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_49

    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->applyPlacementBounds(Landroid/graphics/Rect;I)V

    :cond_49
    invoke-direct {p0, v0, p3}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->schedulePinnedStackPlacement(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;I)V

    :goto_4c
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mCurrentPlacementBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPipTargetBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->cancelScheduledPlacement()V

    return-void
.end method

.method public setListener(Lcom/android/wm/shell/pip/tv/TvPipBoundsController$PipBoundsListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mListener:Lcom/android/wm/shell/pip/tv/TvPipBoundsController$PipBoundsListener;

    return-void
.end method
