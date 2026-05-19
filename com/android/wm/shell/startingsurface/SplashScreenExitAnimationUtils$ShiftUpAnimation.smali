.class public final Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShiftUpAnimation"
.end annotation


# instance fields
.field private final mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private final mFirstWindowFrame:Landroid/graphics/Rect;

.field private final mFirstWindowSurface:Landroid/view/SurfaceControl;

.field private final mFromYDelta:F

.field private final mMainWindowShiftLength:I

.field private final mOccludeHoleView:Landroid/view/View;

.field private final mSplashScreenView:Landroid/view/ViewGroup;

.field private final mTmpTransform:Landroid/graphics/Matrix;

.field private final mToYDelta:F

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(FFLandroid/view/View;Landroid/view/SurfaceControl;Landroid/view/ViewGroup;Lcom/android/wm/shell/common/TransactionPool;Landroid/graphics/Rect;IF)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    sub-float/2addr p1, p9

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFromYDelta:F

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mToYDelta:F

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mOccludeHoleView:Landroid/view/View;

    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mSplashScreenView:Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    iput p8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mMainWindowShiftLength:I

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_63

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mSplashScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    invoke-direct {v1, v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    goto :goto_4c

    :cond_44
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_4c
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/wm/shell/startingsurface/u;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/startingsurface/u;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public onAnimationProgress(F)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mSplashScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_82

    :cond_13
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->access$100()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFromYDelta:F

    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mToYDelta:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mOccludeHoleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    :try_start_34
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3f} :catch_75

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mMainWindowShiftLength:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :catch_75
    move-exception v0

    const-string v1, "SplashScreenExitAnimationUtils"

    const-string v2, "Failed to initialize display event receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_82
    :goto_82
    return-void
.end method
