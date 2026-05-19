.class public Lcom/android/wm/shell/transition/DefaultTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# static fields
.field private static final MAX_ANIMATION_DURATION:I = 0xbb8

.field private static final START_TASK_BAR_ANIM:Ljava/lang/String; = "start_task_bar_anim"


# instance fields
.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentUserId:I

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mEnterpriseResourceUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInsets:Landroid/graphics/Rect;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field private mTransitionAnimationScaleSetting:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/wm/shell/transition/CounterRotatorHelper;

    invoke-direct {v0}, Lcom/android/wm/shell/transition/CounterRotatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    new-instance v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseResourceUpdatedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p7, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/internal/policy/TransitionAnimation;

    const-string p4, "ShellTransitions"

    invoke-direct {p3, p1, v1, p4}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mCurrentUserId:I

    const-class p3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    new-instance p1, Lcom/android/launcher3/taskbar/l;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p8, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    return-void
.end method

.method public static synthetic a(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;Landroid/animation/ValueAnimator;)V
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$buildSurfaceAnimation$5(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->updateEnterpriseThumbnailDrawable()V

    return-void
.end method

.method private addBackgroundColorOnTDA(Landroid/window/TransitionInfo;ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-virtual {p2}, Landroid/graphics/Color;->red()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p2}, Landroid/graphics/Color;->green()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p2}, Landroid/graphics/Color;->blue()F

    move-result p2

    const/4 v1, 0x2

    aput p2, v0, v1

    :goto_1c
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result p2

    if-ge v2, p2, :cond_5a

    invoke-virtual {p1, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    move-result p2

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v3, "animation-background"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "DefaultTransitionHandler"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v3, p2, v1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_5a
    return-void
.end method

.method private static applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 12

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->clear()V

    invoke-virtual {p4, p0, p1, p5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    if-eqz p7, :cond_1e

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    iget p1, p7, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p7, p7, Landroid/graphics/Point;->y:I

    int-to-float p7, p7

    invoke-virtual {p0, p1, p7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1e
    invoke-static {p10}, Lcom/oplus/transition/FlexibleTransitionUtils;->getFlexibleScale(Landroid/os/Bundle;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p7, p0, p1

    if-lez p7, :cond_2e

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p7

    invoke-virtual {p7, p0, p0, p1, p1}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    :cond_2e
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p2, p3, p0, p6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-nez p9, :cond_40

    const/4 p0, 0x0

    goto :goto_45

    :cond_40
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_45
    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object p6

    sget-object p7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {p6, p7}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p6

    sget-object p7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {p6, p7}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-nez p7, :cond_65

    if-eqz p0, :cond_65

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_65

    invoke-virtual {p0, p6}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_65
    if-eqz p0, :cond_80

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_80

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result p6

    if-eqz p6, :cond_80

    invoke-static {p10}, Lcom/oplus/transition/FlexibleTransitionUtils;->isFlexibleActivity(Landroid/os/Bundle;)Z

    move-result p6

    if-eqz p6, :cond_80

    invoke-virtual {p5}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_80
    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result p4

    if-eqz p4, :cond_92

    cmpl-float p1, p8, p1

    if-lez p1, :cond_92

    if-eqz p0, :cond_92

    invoke-virtual {p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2, p3, p8}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_92
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private attachCrossProfileThumbnailAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/window/TransitionInfo$Change;F)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/Runnable;",
            "Landroid/window/TransitionInfo$Change;",
            "F)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v7, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/internal/R$drawable;->ic_account_circle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_25

    :cond_19
    const/16 v1, 0x2000

    invoke-virtual {v7, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-nez v1, :cond_28

    return-void

    :cond_28
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    if-nez v1, :cond_31

    return-void

    :cond_31
    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v2, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-static {v2, v4, v1, v3}, Lcom/android/wm/shell/transition/WindowThumbnail;->createAndAttach(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Lcom/android/wm/shell/transition/WindowThumbnail;

    move-result-object v8

    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v10

    if-nez v10, :cond_4a

    return-void

    :cond_4a
    new-instance v12, Lcom/android/wm/shell/transition/e;

    const/4 v5, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/e;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    invoke-virtual {v8}, Lcom/android/wm/shell/transition/WindowThumbnail;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v11

    iget-object v13, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v14, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v9, p1

    move/from16 v16, p4

    invoke-static/range {v9 .. v17}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    return-void
.end method

.method private attachThumbnail(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/Runnable;",
            "Landroid/window/TransitionInfo$Change;",
            "Landroid/window/TransitionInfo$AnimationOptions;",
            "F)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v0, :cond_29

    invoke-virtual {p4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1e

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachCrossProfileThumbnailAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/window/TransitionInfo$Change;F)V

    goto :goto_35

    :cond_1e
    invoke-virtual {p4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachThumbnailAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V

    goto :goto_35

    :cond_29
    if-eqz v1, :cond_35

    invoke-virtual {p4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachThumbnailAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V

    :cond_35
    :goto_35
    return-void
.end method

.method private attachThumbnailAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/Runnable;",
            "Landroid/window/TransitionInfo$Change;",
            "Landroid/window/TransitionInfo$AnimationOptions;",
            "F)V"
        }
    .end annotation

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/wm/shell/transition/WindowThumbnail;->createAndAttach(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Lcom/android/wm/shell/transition/WindowThumbnail;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v12, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v8, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v10, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    const/4 v0, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    move v15, v0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/hardware/HardwareBuffer;ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v8

    new-instance v19, Lcom/android/wm/shell/transition/e;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/e;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    invoke-virtual {v7}, Lcom/android/wm/shell/transition/WindowThumbnail;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v18

    iget-object v0, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v1, v6, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v16, p1

    move-object/from16 v17, v8

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v23, p5

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$buildSurfaceAnimation$6(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/animation/Animation;",
            "Landroid/view/SurfaceControl;",
            "Ljava/lang/Runnable;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/graphics/Point;",
            "F",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method public static buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/animation/Animation;",
            "Landroid/view/SurfaceControl;",
            "Ljava/lang/Runnable;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/graphics/Point;",
            "F",
            "Landroid/graphics/Rect;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "buildSurfaceAnimation, caller: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_7a

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    new-instance v12, Landroid/view/animation/Transformation;

    invoke-direct {v12}, Landroid/view/animation/Transformation;-><init>()V

    const/16 v1, 0x9

    new-array v13, v1, [F

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v15, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v1

    invoke-virtual {v15, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v14, Lcom/android/wm/shell/transition/d;

    move-object v1, v14

    move-object v2, v15

    move-object v3, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/wm/shell/transition/d;-><init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V

    invoke-virtual {v15, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v11, Lcom/android/wm/shell/transition/g;

    move-object v1, v11

    move-object v0, v11

    move-object/from16 v11, p9

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 p1, v0

    move-object v0, v14

    move-object/from16 v14, p0

    move-object/from16 p2, v0

    move-object v0, v15

    move-object/from16 v15, p3

    invoke-direct/range {v1 .. v15}, Lcom/android/wm/shell/transition/g;-><init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    invoke-direct {v1, v3, v0, v2}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;-><init>(Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_7a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic c(Ljava/util/ArrayList;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$startAnimation$3(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$startAnimation$1(Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$attachCrossProfileThumbnailAnimation$8(Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)Landroid/graphics/drawable/Drawable;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$updateEnterpriseThumbnailDrawable$0()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$startAnimation$2(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static getRotationAnimationHint(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Lcom/android/wm/shell/common/DisplayController;)I
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x22cbaff3

    const-string v4, "Display is changing, resolve the animation hint."

    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_26

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_25

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x6a87ab97

    const-string p2, "  display requests explicit seamless"

    invoke-static {p0, p1, v2, p2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    return v3

    :cond_26
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-object v7, v1

    move v4, v2

    move v5, v4

    move v6, v5

    move v8, v6

    :goto_33
    if-ge v4, v0, :cond_e6

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    const/4 v11, 0x6

    const/4 v12, 0x1

    if-eq v10, v11, :cond_49

    goto/16 :goto_e2

    :cond_49
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v10

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v11

    if-ne v10, v11, :cond_55

    goto/16 :goto_e2

    :cond_55
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_7a

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_74

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_73

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, 0x2859e70

    const-string v10, "  display has system alert windows, so not seamless."

    invoke-static {v6, v8, v2, v10, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_73
    move v6, v12

    :cond_74
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    move-result v8

    goto/16 :goto_e2

    :cond_7a
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_98

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    move-result v9

    if-eq v9, v3, :cond_e2

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v6, :cond_96

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, 0x3c83dd70

    const-string v10, "  wallpaper is participating but isn\'t seamless."

    invoke-static {v6, v9, v2, v10, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_96
    move v6, v12

    goto :goto_e2

    :cond_98
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    if-eqz v10, :cond_e2

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v10

    const/16 v11, 0x64

    if-ne v10, v11, :cond_ab

    goto :goto_e2

    :cond_ab
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getRotationAnimation()I

    move-result v10

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    if-nez v7, :cond_b7

    move v11, v12

    goto :goto_b8

    :cond_b7
    move v11, v2

    :goto_b8
    if-eqz v11, :cond_c3

    const/4 v7, -0x1

    if-eq v10, v7, :cond_c2

    if-eq v10, v3, :cond_c2

    move-object v7, v9

    move v8, v10

    goto :goto_c3

    :cond_c2
    move-object v7, v9

    :cond_c3
    :goto_c3
    if-eq v10, v3, :cond_df

    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_dd

    iget v5, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v10, 0x7224977c

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v5, v11, v2

    const-string v5, "  task %s isn\'t requesting seamless, so not seamless."

    invoke-static {v9, v10, v2, v5, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_dd
    move v5, v2

    goto :goto_e2

    :cond_df
    if-eqz v11, :cond_e2

    move v5, v12

    :cond_e2
    :goto_e2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_33

    :cond_e6
    if-eqz v5, :cond_149

    if-eqz v6, :cond_eb

    goto :goto_149

    :cond_eb
    iget p1, v7, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->allowSeamlessRotationDespiteNavBarMoving()Z

    move-result p2

    if-eqz p2, :cond_106

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_105

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x39b15331

    const-string p2, "  nav bar allows seamless."

    invoke-static {p0, p1, v2, p2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_105
    return v3

    :cond_106
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->getUpsideDownRotation()I

    move-result p2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v0

    if-eq v0, p2, :cond_13b

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result p0

    if-ne p0, p2, :cond_117

    goto :goto_13b

    :cond_117
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarCanMove()Z

    move-result p0

    if-nez p0, :cond_12c

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_12b

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, -0x4598ff3b

    const-string p2, "  nav bar changes sides, so not seamless."

    invoke-static {p0, p1, v2, p2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_12b
    return v8

    :cond_12c
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_13a

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x4875c331

    const-string p2, "  Rotation IS seamless."

    invoke-static {p0, p1, v2, p2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13a
    return v3

    :cond_13b
    :goto_13b
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_149

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p1, 0x459b7c3c

    const-string p2, "  rotation involves upside-down portrait, so not seamless."

    invoke-static {p0, p1, v2, p2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_149
    :goto_149
    return v8
.end method

.method private static getWallpaperTransitType(Landroid/window/TransitionInfo;)I
    .registers 8

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_8
    if-ltz v1, :cond_35

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_32

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v6

    if-eqz v6, :cond_27

    move v3, v0

    goto :goto_32

    :cond_27
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v5

    if-eqz v5, :cond_32

    move v4, v0

    :cond_32
    :goto_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_35
    if-eqz v3, :cond_47

    if-eqz v4, :cond_47

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p0

    if-eqz p0, :cond_45

    const/4 p0, 0x3

    goto :goto_46

    :cond_45
    const/4 p0, 0x4

    :goto_46
    return p0

    :cond_47
    if-eqz v3, :cond_4a

    return v0

    :cond_4a
    if-eqz v4, :cond_4e

    const/4 p0, 0x2

    return p0

    :cond_4e
    return v2
.end method

.method public static synthetic h(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->onInit()V

    return-void
.end method

.method public static synthetic i(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/ScreenRotationAnimation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$startRotationAnimation$4(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/ScreenRotationAnimation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static isDreamTransition(Landroid/window/TransitionInfo;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_5
    if-ltz v1, :cond_24

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private static isOnlyTranslucent(Landroid/window/TransitionInfo;)Z
    .registers 9

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_8
    if-ltz v1, :cond_36

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1c

    goto :goto_32

    :cond_1c
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v5

    if-eqz v5, :cond_30

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_30
    add-int/lit8 v4, v4, 0x1

    :goto_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_35
    return v2

    :cond_36
    add-int/2addr v3, v4

    if-lez v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v2

    :goto_3b
    return v0
.end method

.method public static isSupportedOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1a

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1a

    const/16 v1, 0xc

    if-ne p0, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static synthetic j(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$attachThumbnailAnimation$9(Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic k(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 14

    invoke-static/range {p0 .. p13}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->lambda$buildSurfaceAnimation$7(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$attachCrossProfileThumbnailAnimation$8(Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/transition/WindowThumbnail;->destroy(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$attachThumbnailAnimation$9(Lcom/android/wm/shell/transition/WindowThumbnail;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/transition/WindowThumbnail;->destroy(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$buildSurfaceAnimation$5(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;Landroid/animation/ValueAnimator;)V
    .registers 26

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    :try_start_1e
    invoke-static/range {v4 .. v14}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionJankTracker;->getInstance()Lcom/android/wm/shell/transition/TransitionJankTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/TransitionJankTracker;->handleDoFrame()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29

    goto :goto_37

    :catch_29
    move-exception v0

    const-string v1, "applyTransformation error"

    invoke-static {v0, v1}, Lcom/android/wm/shell/transition/TransitionLog;->e(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionJankTracker;->getInstance()Lcom/android/wm/shell/transition/TransitionJankTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/transition/TransitionJankTracker;->taskAnimationEnd(Z)V

    :goto_37
    return-void
.end method

.method private static synthetic lambda$buildSurfaceAnimation$6(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$buildSurfaceAnimation$7(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 26

    :try_start_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->applyTransformation(JLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v0

    const-string v1, "applyTransformation error"

    invoke-static {v0, v1}, Lcom/android/wm/shell/transition/TransitionLog;->e(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1d
    move-object v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    new-instance v0, Lcom/android/wm/shell/transition/z;

    move-object v1, p0

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-direct {v0, v2, p0, v3}, Lcom/android/wm/shell/transition/z;-><init>(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;Ljava/lang/Runnable;)V

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startAnimation$1(Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-interface {p3, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$2(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-static {p0, p1, p3, p2}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$3(Ljava/util/ArrayList;)V
    .registers 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(Z)V

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method

.method private static synthetic lambda$startRotationAnimation$4(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/ScreenRotationAnimation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->kill()V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$updateEnterpriseThumbnailDrawable$0()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/internal/R$drawable;->ic_corp_badge:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private loadAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;IZ)Landroid/view/animation/Animation;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v4

    invoke-static {v10}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_26

    move v7, v9

    goto :goto_27

    :cond_26
    move v7, v8

    :goto_27
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v11

    if-eqz v11, :cond_32

    invoke-virtual {v11}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v12

    goto :goto_33

    :cond_32
    move v12, v8

    :goto_33
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/flexibletask/FlexibleTaskTransitionUtils;->getFlexibleTaskBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_44

    const-string/jumbo v14, "start_task_bar_anim"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_44

    move v13, v9

    goto :goto_45

    :cond_44
    move v13, v8

    :goto_45
    invoke-static {v10}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v14

    if-eqz v14, :cond_52

    iget-object v14, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    invoke-virtual {v14, v1}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->getEndBoundsInStartRotation(Landroid/window/TransitionInfo$Change;)Landroid/graphics/Rect;

    move-result-object v14

    goto :goto_56

    :cond_52
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v14

    :goto_56
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v15

    if-eqz v15, :cond_68

    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    and-int/2addr v3, v9

    if-eqz v3, :cond_62

    move v8, v9

    :cond_62
    invoke-virtual {v4, v2, v8}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v2

    goto/16 :goto_179

    :cond_68
    const/16 v2, 0x9

    if-ne v6, v2, :cond_74

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v2}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    goto/16 :goto_179

    :cond_74
    and-int/lit8 v2, v3, 0x10

    if-eqz v2, :cond_8a

    if-eqz v4, :cond_82

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v2

    goto/16 :goto_179

    :cond_82
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v2

    goto/16 :goto_179

    :cond_8a
    const/4 v2, 0x6

    if-ne v10, v2, :cond_cb

    if-eqz v13, :cond_bd

    if-eqz v11, :cond_bd

    if-ne v12, v9, :cond_bd

    if-eqz v7, :cond_9f

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v2

    invoke-virtual {v2, v11, v6, v1}, Lcom/android/wm/shell/transition/OplusTransitionController;->canCustomizeAppTransition(Landroid/window/TransitionInfo$AnimationOptions;ILandroid/window/TransitionInfo$Change;)Z

    move-result v2

    if-eqz v2, :cond_bd

    :cond_9f
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v11}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationHasRoundedCorners(Landroid/view/animation/Animation;Z)V

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v3

    invoke-virtual {v3, v11, v6, v9}, Lcom/android/wm/shell/transition/OplusTransitionController;->hookCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;IZ)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_179

    :goto_ba
    move-object v2, v3

    goto/16 :goto_179

    :cond_bd
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v2, v3, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x150

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_179

    :cond_cb
    const/4 v2, 0x5

    if-ne v6, v2, :cond_d8

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v14, v3, v14}, Lcom/android/internal/policy/TransitionAnimation;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v2

    goto/16 :goto_179

    :cond_d8
    if-ne v12, v9, :cond_10d

    if-eqz v11, :cond_10d

    if-eqz v7, :cond_e8

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v7

    invoke-virtual {v7, v11, v6, v1}, Lcom/android/wm/shell/transition/OplusTransitionController;->canCustomizeAppTransition(Landroid/window/TransitionInfo$AnimationOptions;ILandroid/window/TransitionInfo$Change;)Z

    move-result v7

    if-eqz v7, :cond_10d

    :cond_e8
    const-string v2, "This page has its own override animation"

    invoke-static {v2}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v11}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_fa

    invoke-virtual {v11}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    move-result v4

    goto :goto_fe

    :cond_fa
    invoke-virtual {v11}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    move-result v4

    :goto_fe
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v3

    invoke-virtual {v3, v11, v6, v5}, Lcom/android/wm/shell/transition/OplusTransitionController;->hookCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;IZ)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_179

    goto :goto_ba

    :cond_10d
    const/16 v7, 0xc

    if-ne v12, v7, :cond_11b

    if-eqz v5, :cond_11b

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v2}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    goto/16 :goto_179

    :cond_11b
    const/16 v7, 0xb

    if-ne v12, v7, :cond_12f

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v11}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    move-result-object v8

    move v3, v6

    move/from16 v4, p3

    move-object v6, v14

    move-object v7, v14

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_179

    :cond_12f
    const/4 v7, 0x2

    if-ne v12, v7, :cond_141

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v11}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    move-result-object v7

    move v3, v6

    move/from16 v4, p3

    move-object v6, v14

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLocked(IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_179

    :cond_141
    const/4 v7, 0x3

    if-eq v12, v7, :cond_160

    const/4 v13, 0x4

    if-ne v12, v13, :cond_148

    goto :goto_160

    :cond_148
    and-int/lit8 v3, v3, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_150

    if-eqz v4, :cond_150

    return-object v5

    :cond_150
    if-ne v12, v2, :cond_153

    return-object v5

    :cond_153
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    move-object/from16 v3, p1

    move/from16 v13, p3

    move/from16 v4, p4

    invoke-static {v3, v1, v13, v2, v4}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_179

    :cond_160
    :goto_160
    move/from16 v13, p3

    if-ne v12, v7, :cond_166

    move v4, v9

    goto :goto_167

    :cond_166
    move v4, v8

    :goto_167
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {v11}, Landroid/window/TransitionInfo$AnimationOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    invoke-virtual {v11}, Landroid/window/TransitionInfo$AnimationOptions;->getTransitionBounds()Landroid/graphics/Rect;

    move-result-object v9

    move v3, v5

    move-object v5, v14

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLocked(ZZLandroid/graphics/Rect;IILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v2

    :cond_179
    :goto_179
    if-eqz v2, :cond_1ad

    invoke-virtual {v2}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1a3

    invoke-static {v10}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-eqz v3, :cond_18c

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_190

    :cond_18c
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_190
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_1a3
    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    :cond_1ad
    return-object v2
.end method

.method private onInit()V
    .registers 6

    invoke-direct {p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->updateEnterpriseThumbnailDrawable()V

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseResourceUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/transition/OplusTransitionController;->registerReceiverForPkgRemoved()V

    return-void
.end method

.method private startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/window/TransitionInfo$Change;",
            "Landroid/window/TransitionInfo;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    invoke-static {p2, p3}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v2

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/wm/shell/transition/OplusTransitionController;->loadLightScreenRotationForApp(Landroid/window/TransitionInfo;)V

    new-instance v3, Lcom/android/wm/shell/transition/ScreenRotationAnimation;

    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v7, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p3, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    move-object v4, v3

    move-object v8, p1

    move-object v9, p2

    move/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;-><init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/TransactionPool;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/wm/shell/transition/OplusTransitionController;->getTaskAnimExtraBundle(Landroid/window/TransitionInfo;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/transition/FlexibleTransitionUtils;->getFlexibleScenario(Landroid/os/Bundle;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_42

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, p1

    invoke-virtual {p1, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_42
    invoke-virtual {v3, p3}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->setTransitionInfo(Landroid/window/TransitionInfo;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Lcom/android/wm/shell/transition/f;

    move-object v4, v10

    move-object v5, v1

    move-object v6, v3

    move-object/from16 v7, p5

    move-object v8, v2

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/wm/shell/transition/f;-><init>(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/ScreenRotationAnimation;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iget v4, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {v3, v1, v10, v4, v0}, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->buildAnimation(Ljava/util/ArrayList;Ljava/lang/Runnable;FLcom/android/wm/shell/common/ShellExecutor;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_69
    if-ltz v0, :cond_7c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_69

    :cond_7c
    return-void
.end method

.method private updateEnterpriseThumbnailDrawable()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/layout/d;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/d;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V

    const-string v2, "WORK_PROFILE_ICON"

    const-string v3, "OUTLINE"

    const-string v4, "PROFILE_SWITCH_ANIMATION"

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 6

    iget-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_11
    if-ltz p2, :cond_29

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/animation/Animator;

    iget-object p4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Lcom/android/quickstep/util/n;

    invoke-direct {p5, p3}, Lcom/android/quickstep/util/n;-><init>(Landroid/animation/Animator;)V

    invoke-interface {p4, p5}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    :cond_29
    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_35

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_d

    return-void

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_35

    const-string p2, "DefaultTransitionHandler onTransitionConsumed, cancel animations, caller: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 p3, 0x3

    invoke-static {p3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_35
    return-void
.end method

.method public setAnimScaleSetting(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransitionAnimationScaleSetting:F

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 34

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v0, p5

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x8b57885

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    const-string/jumbo v1, "start default transition animation, info = %s"

    invoke-static {v4, v5, v2, v1, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/16 v4, 0xb

    const/4 v5, 0x0

    if-ne v1, v4, :cond_3b

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {v0, v5, v5}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return v3

    :cond_3b
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/Transitions;->isAllNoAnimation(Landroid/window/TransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_458

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/Transitions;->isAllOrderOnly(Landroid/window/TransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_458

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_5b

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/OplusTransitionController;->buildFoldAnimIfNeed()Z

    move-result v1

    if-nez v1, :cond_5b

    goto/16 :goto_458

    :cond_5b
    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_440

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/android/wm/shell/transition/l;

    invoke-direct {v14, v7, v15, v8, v0}, Lcom/android/wm/shell/transition/l;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->getWallpaperTransitType(Landroid/window/TransitionInfo;)I

    move-result v12

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->isDreamTransition(Landroid/window/TransitionInfo;)Z

    move-result v6

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->isOnlyTranslucent(Landroid/window/TransitionInfo;)Z

    move-result v22

    invoke-static {v9, v3}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v0

    move v5, v0

    move v4, v2

    move/from16 v23, v4

    :goto_8b
    if-ltz v5, :cond_3f4

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v0

    invoke-virtual {v0, v9, v2}, Lcom/android/wm/shell/transition/OplusTransitionController;->skipDefaultTransition(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_a3

    goto :goto_b5

    :cond_a3
    const/16 v0, 0x4200

    invoke-virtual {v2, v0}, Landroid/window/TransitionInfo$Change;->hasAllFlags(I)Z

    move-result v0

    if-eqz v0, :cond_ac

    goto :goto_b5

    :cond_ac
    const v0, 0x10102

    invoke-virtual {v2, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_bd

    :goto_b5
    move/from16 p5, v4

    move v8, v5

    move-object/from16 v24, v13

    move v13, v6

    goto/16 :goto_24e

    :cond_bd
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_c4

    goto :goto_c5

    :cond_c4
    const/4 v3, 0x0

    :goto_c5
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/16 v1, 0x20

    move/from16 p5, v4

    const/4 v4, 0x6

    if-ne v0, v4, :cond_10f

    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_10f

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    if-ne v1, v4, :cond_105

    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {v2, v9, v1}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->getRotationAnimationHint(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Lcom/android/wm/shell/common/DisplayController;)I

    move-result v4

    const/4 v1, 0x3

    if-ne v4, v1, :cond_e7

    const/4 v1, 0x1

    goto :goto_e8

    :cond_e7
    const/4 v1, 0x0

    :goto_e8
    if-nez v1, :cond_ff

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, p2

    move/from16 v8, p5

    move v8, v5

    move-object v5, v15

    move-object/from16 v24, v13

    move v13, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Ljava/lang/Runnable;)V

    const/16 v23, 0x1

    goto/16 :goto_24e

    :cond_ff
    move v8, v5

    move-object/from16 v24, v13

    move v13, v6

    const/4 v4, 0x6

    goto :goto_115

    :cond_105
    move v8, v5

    move-object/from16 v24, v13

    move v13, v6

    iget-object v1, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    invoke-virtual {v1, v9, v10, v2}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->handleClosingChanges(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    goto :goto_113

    :cond_10f
    move v8, v5

    move-object/from16 v24, v13

    move v13, v6

    :goto_113
    const/4 v4, 0x6

    const/4 v1, 0x0

    :goto_115
    if-ne v0, v4, :cond_221

    if-eqz v3, :cond_179

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-eqz v4, :cond_179

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    if-eqz v4, :cond_179

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_179

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v10, v1, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24e

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_24e

    :cond_179
    if-eqz v3, :cond_18c

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18c

    goto/16 :goto_24e

    :cond_18c
    invoke-static {v2, v9}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v4

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v11

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v4

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v4

    int-to-float v4, v11

    invoke-virtual {v10, v5, v6, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    if-eqz v1, :cond_1bf

    goto/16 :goto_24e

    :cond_1bf
    if-nez v3, :cond_1d1

    const/16 v1, 0x200

    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    const/16 v4, 0x400

    if-eqz v1, :cond_1e8

    invoke-virtual {v2, v4}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_1e8

    :cond_1d1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v10, v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_1e8
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-nez v1, :cond_221

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v1

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v4

    if-eq v1, v4, :cond_221

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {v2, v9, v0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->getRotationAnimationHint(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Lcom/android/wm/shell/common/DisplayController;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_203

    const/4 v0, 0x1

    goto :goto_204

    :cond_203
    const/4 v0, 0x0

    :goto_204
    if-eqz v0, :cond_214

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_214

    const-string v0, "display change in a transition whose type is not CHANGE, when it\'s seamless, don\'t startRotationAnimation"

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    goto :goto_24e

    :cond_214
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, p2

    move-object v5, v15

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startRotationAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;ILjava/util/ArrayList;Ljava/lang/Runnable;)V

    goto :goto_24e

    :cond_221
    if-eqz v23, :cond_23f

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_23f

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/transition/OplusTransitionController;->shouldHideSurface(Landroid/window/TransitionInfo$Change;I)Z

    move-result v0

    if-eqz v0, :cond_24e

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_24e

    :cond_23f
    const/high16 v1, 0x20000

    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_248

    goto :goto_24e

    :cond_248
    invoke-static {v2, v9}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_25b

    :cond_24e
    :goto_24e
    move/from16 v4, p5

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v27, v14

    move-object v12, v15

    move-object/from16 v13, p4

    goto/16 :goto_3e3

    :cond_25b
    invoke-direct {v7, v9, v2, v12, v13}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->loadAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;IZ)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v1

    invoke-virtual {v1, v9, v2, v10, v6}, Lcom/android/wm/shell/transition/OplusTransitionController;->setAlphaForCustom(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V

    if-eqz v6, :cond_3c8

    if-eqz v3, :cond_308

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_274

    const/4 v1, 0x1

    goto :goto_275

    :cond_274
    const/4 v1, 0x0

    :goto_275
    if-nez v1, :cond_2a3

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpenOrCloseMode(I)Z

    move-result v1

    if-eqz v1, :cond_2a3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpenOrCloseMode(I)Z

    move-result v1

    if-eqz v1, :cond_2a3

    if-nez v12, :cond_2a3

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/wm/shell/transition/OplusTransitionController;->disableTaskBackgroundColor()Z

    move-result v4

    if-nez v4, :cond_2a3

    sget v4, Lcom/android/internal/R$color;->overview_background:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    move v4, v1

    goto :goto_2a5

    :cond_2a3
    move/from16 v4, p5

    :goto_2a5
    const/4 v1, 0x1

    if-ne v12, v1, :cond_2db

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_2db

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v11

    if-eqz v11, :cond_2cb

    sub-int/2addr v5, v8

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_300

    :cond_2cb
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v11

    if-eqz v11, :cond_300

    add-int/2addr v5, v1

    sub-int/2addr v5, v8

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_300

    :cond_2db
    if-eqz v22, :cond_300

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_300

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_300

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v5, v1

    sub-int/2addr v5, v8

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_300
    :goto_300
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v1

    invoke-virtual {v1, v8, v9, v10}, Lcom/android/wm/shell/transition/OplusTransitionController;->adjustZBoostForLayer(ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_30a

    :cond_308
    move/from16 v4, p5

    :goto_30a
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v17

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v21

    move/from16 v18, v12

    move-object/from16 v20, v6

    invoke-virtual/range {v16 .. v21}, Lcom/android/wm/shell/transition/OplusTransitionController;->getRoundedCornersIfNeed(IIZLandroid/view/animation/Animation;Landroid/window/TransitionInfo$AnimationOptions;)F

    move-result v5

    invoke-static {v9, v2, v6, v4}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I

    move-result v11

    if-nez v3, :cond_34d

    invoke-virtual {v6}, Landroid/view/animation/Animation;->hasExtension()Z

    move-result v1

    if-eqz v1, :cond_34d

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-nez v1, :cond_340

    move-object/from16 v4, p4

    invoke-static {v2, v6, v10, v4}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :goto_33d
    move-object/from16 v3, v24

    goto :goto_350

    :cond_340
    move-object/from16 v4, p4

    new-instance v1, Lcom/android/launcher3/r2;

    invoke-direct {v1, v2, v6, v4}, Lcom/android/launcher3/r2;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    move-object/from16 v3, v24

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_350

    :cond_34d
    move-object/from16 v4, p4

    goto :goto_33d

    :goto_350
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v1

    if-eqz v1, :cond_364

    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v24, v3

    iget-object v3, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->getEndBoundsInStartRotation(Landroid/window/TransitionInfo$Change;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_36f

    :cond_364
    move-object/from16 v24, v3

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_36f
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v3

    invoke-virtual {v3, v9, v2}, Lcom/android/wm/shell/transition/OplusTransitionController;->getAnimExtraBundle(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object v21

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v4, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move/from16 p5, v11

    iget-object v11, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v18

    move/from16 v25, v12

    move-object v12, v15

    move/from16 v26, v13

    move-object v13, v6

    move-object/from16 v27, v14

    move-object v14, v3

    move-object v3, v15

    move-object/from16 v15, v27

    move-object/from16 v16, v4

    move-object/from16 v17, v11

    move/from16 v19, v5

    move-object/from16 v20, v1

    invoke-static/range {v12 .. v21}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionJankTracker;->getInstance()Lcom/android/wm/shell/transition/TransitionJankTracker;

    move-result-object v1

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v11

    invoke-virtual {v1, v0, v11, v12}, Lcom/android/wm/shell/transition/TransitionJankTracker;->taskAnimationBegin(IJ)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    if-eqz v0, :cond_3c3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v11, v2

    move-object/from16 v2, v27

    move-object v12, v3

    move-object v3, v11

    move-object/from16 v13, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->attachThumbnail(Ljava/util/ArrayList;Ljava/lang/Runnable;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$AnimationOptions;F)V

    goto :goto_3d2

    :cond_3c3
    move-object/from16 v13, p4

    move-object v11, v2

    move-object v12, v3

    goto :goto_3d2

    :cond_3c8
    move-object v11, v2

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v27, v14

    move-object v12, v15

    move-object/from16 v13, p4

    :goto_3d2
    move/from16 v14, p5

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v0

    move v1, v8

    move-object v2, v6

    move-object v3, v11

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/OplusTransitionController;->adjustDefaultTransitionStartState(ILandroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    move v4, v14

    :goto_3e3
    add-int/lit8 v5, v8, -0x1

    const/4 v3, 0x1

    move-object/from16 v8, p1

    move-object v15, v12

    move-object v11, v13

    move-object/from16 v13, v24

    move/from16 v12, v25

    move/from16 v6, v26

    move-object/from16 v14, v27

    goto/16 :goto_8b

    :cond_3f4
    move/from16 p5, v4

    move-object/from16 v24, v13

    move-object/from16 v27, v14

    move-object v12, v15

    move-object v13, v11

    if-eqz p5, :cond_403

    move/from16 v2, p5

    invoke-direct {v7, v9, v2, v10, v13}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->addBackgroundColorOnTDA(Landroid/window/TransitionInfo;ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_403
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_421

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_411
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_421

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {v1, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_411

    :cond_421
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/transition/m;

    invoke-direct {v1, v12}, Lcom/android/wm/shell/transition/m;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mRotator:Lcom/android/wm/shell/transition/CounterRotatorHelper;

    invoke-virtual {v0, v13}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    invoke-static {}, Landroid/window/TransitionMetrics;->getInstance()Landroid/window/TransitionMetrics;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/window/TransitionMetrics;->reportAnimationStart(Landroid/os/IBinder;)V

    invoke-virtual/range {v27 .. v27}, Lcom/android/wm/shell/transition/l;->run()V

    goto :goto_462

    :cond_440
    move-object v1, v8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got a duplicate startAnimation call for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_458
    :goto_458
    move-object v13, v11

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {v0, v5, v5}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    :goto_462
    const/4 v0, 0x1

    return v0
.end method
