.class public Lcom/android/wm/shell/putt/OnePuttTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# static fields
.field public static final ANIM_CLIP_OFFSET:I = 0x168

.field public static final ANIM_FIRST_DURATION:I = 0xfa

.field public static final ANIM_FROM_SCALE:F = 0.2f

.field public static final ANIM_SCALE_CENTER_X_LAND:F = 0.07f

.field public static final ANIM_SCALE_CENTER_X_PORT:F = 0.23f

.field public static final ANIM_SCALE_CENTER_Y_LAND:F = 0.07f

.field public static final ANIM_SCALE_CENTER_Y_PORT:F = 0.07f

.field public static final ANIM_SECOND_DURATION:I = 0x1b1

.field public static final ANIM_TO_SCALE:F = 1.0f

.field private static final MAX_ANIMATION_DURATION:I = 0xbb8

.field public static final TAG:Ljava/lang/String; = "OnePuttTransitionHandler"

.field public static final TRANSIT_ONEPUTT_ENTERING:I = 0x65


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

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;)V
    .registers 6
    .param p1  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p2, p0, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p3, p0, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/putt/OnePuttTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->lambda$startAnimation$0(Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->lambda$startAnimation$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$startAnimation$0(Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-interface {p3, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$1(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method private loadAnimation(Landroid/window/TransitionInfo$Change;)Landroid/view/animation/Animation;
    .registers 21

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_ea

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v2, v7, :cond_45

    move v2, v8

    goto :goto_46

    :cond_45
    move v2, v1

    :goto_46
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v9, 0x168

    const v10, 0x3d8f5c29  # 0.07f

    if-eqz v2, :cond_59

    invoke-virtual {v7, v9, v1}, Landroid/graphics/Rect;->inset(II)V

    mul-float v1, v6, v10

    mul-float/2addr v5, v10

    goto :goto_62

    :cond_59
    invoke-virtual {v7, v1, v9}, Landroid/graphics/Rect;->inset(II)V

    const v1, 0x3e6b851f  # 0.23f

    mul-float/2addr v1, v5

    mul-float v5, v6, v10

    :goto_62
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e99999a  # 0.3f

    const/4 v15, 0x0

    invoke-direct {v2, v9, v15, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v10, 0x3dcccccd  # 0.1f

    invoke-direct {v14, v9, v15, v10, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v13, Landroid/view/animation/AnimationSet;

    invoke-direct {v13, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const v10, 0x3e4ccccd  # 0.2f

    const v11, 0x3e4ccccd  # 0.2f

    const v16, 0x3e4ccccd  # 0.2f

    const v17, 0x3e4ccccd  # 0.2f

    move-object v9, v12

    move-object v3, v12

    move/from16 v12, v16

    move-object v8, v13

    move/from16 v13, v17

    move-object/from16 v18, v14

    move v14, v1

    move-object/from16 v17, v0

    move v0, v15

    move v15, v5

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v9, Landroid/view/animation/TranslateYAnimation;

    const v10, -0x4175c28f  # -0.27f

    mul-float/2addr v6, v10

    invoke-direct {v9, v6, v0}, Landroid/view/animation/TranslateYAnimation;-><init>(FF)V

    invoke-virtual {v8, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000  # 1.0f

    const/high16 v11, 0x40a00000  # 5.0f

    const/high16 v12, 0x3f800000  # 1.0f

    const/high16 v13, 0x40a00000  # 5.0f

    move-object v9, v6

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v1, v7, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x1b1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    goto :goto_eb

    :cond_ea
    move-object v1, v0

    :goto_eb
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_104

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    :cond_104
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->restrictDuration(J)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    return-object v1
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 3
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionRequestInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p0

    const/16 p1, 0x65

    if-ne p0, p1, :cond_e

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_e
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

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mergeAnimation transition= "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " info= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePuttTransitionHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 27
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " startAnimation= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " startTransaction= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " finishTransaction= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " finishCallback= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " TransitionInfo ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "OnePuttTransitionHandler"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    const/16 v8, 0x65

    if-eq v4, v8, :cond_4c

    const/4 v0, 0x0

    return v0

    :cond_4c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/common/debug/c;

    invoke-direct {v15, v0, v4, v1, v3}, Lcom/android/common/debug/c;-><init>(Lcom/android/wm/shell/putt/OnePuttTransitionHandler;Ljava/util/ArrayList;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v8

    move v14, v8

    :goto_61
    if-ltz v14, :cond_bd

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " change= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_b4

    invoke-direct {v0, v8}, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->loadAnimation(Landroid/window/TransitionInfo$Change;)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    iget-object v12, v0, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v13, v0, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v18

    move-object v8, v4

    move-object v11, v15

    move/from16 v19, v14

    move-object/from16 v14, v16

    move-object/from16 v20, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    invoke-static/range {v8 .. v16}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    goto :goto_b8

    :cond_b4
    move/from16 v19, v14

    move-object/from16 v20, v15

    :goto_b8
    add-int/lit8 v14, v19, -0x1

    move-object/from16 v15, v20

    goto :goto_61

    :cond_bd
    move-object/from16 v20, v15

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v0, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lq0/a;

    invoke-direct {v1, v4, v3}, Lq0/a;-><init>(Ljava/util/ArrayList;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/common/debug/c;->run()V

    return v3
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "OnePuttTransitionHandler"

    return-object p0
.end method
