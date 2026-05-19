.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/window/IRemoteTransition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->startPairIntent(Landroid/content/Intent;Landroid/content/Intent;IIILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public groupIndex:[I

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

.field public final mGroupLeashes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field public final synthetic val$evictWct:Landroid/window/WindowContainerTransaction;

.field public final synthetic val$t:[Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;[Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$t:[Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$evictWct:Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mAnimations:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mGroupLeashes:Landroid/util/SparseArray;

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_20

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->groupIndex:[I

    return-void

    :array_20
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;Ljava/util/ArrayList;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->lambda$startAnimation$0(Ljava/util/ArrayList;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->lambda$startAnimation$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getGroupLeash(Landroid/window/TransitionInfo;I)Landroid/view/SurfaceControl;
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mGroupLeashes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3d

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string/jumbo v1, "split_group_"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1b

    const-string/jumbo v2, "open"

    goto :goto_1d

    :cond_1b
    const-string v2, "close"

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mGroupLeashes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3d
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mGroupLeashes:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0
.end method

.method private synthetic lambda$startAnimation$0(Ljava/util/ArrayList;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :try_start_15
    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onAnimFinish onTransitionFinished"

    invoke-static {p1, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->groupIndex:[I

    array-length p2, p1

    const/4 p3, 0x0

    :goto_23
    if-ge p3, p2, :cond_34

    aget v0, p1, p3

    invoke-direct {p0, p4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->getGroupLeash(Landroid/window/TransitionInfo;I)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {p5, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_31
    add-int/lit8 p3, p3, 0x1

    goto :goto_23

    :cond_34
    const/4 p0, 0x0

    invoke-interface {p6, p0, p5}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_38} :catch_39

    goto :goto_53

    :catch_39
    move-exception p0

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "transition finished with "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_53
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

.method private loadAnimation(Z)Landroid/view/animation/Animation;
    .registers 25

    move/from16 v0, p1

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/transition/OplusTransitionController;->getTransitionAnimationManager()Lcom/oplus/transition/OplusTransitionAnimationManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/oplus/transition/OplusTransitionAnimationManager;->loadLargeScreenTaskSwitchAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_12

    return-object v1

    :cond_12
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    if-eqz v0, :cond_31

    new-instance v13, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f666666  # 0.9f

    const/high16 v6, 0x3f800000  # 1.0f

    const v7, 0x3f666666  # 0.9f

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000  # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000  # 0.5f

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_49

    :cond_31
    new-instance v13, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000  # 1.0f

    const v16, 0x3f8ccccd  # 1.1f

    const/high16 v17, 0x3f800000  # 1.0f

    const v18, 0x3f8ccccd  # 1.1f

    const/16 v19, 0x1

    const/high16 v20, 0x3f000000  # 0.5f

    const/16 v21, 0x1

    const/high16 v22, 0x3f000000  # 0.5f

    move-object v14, v13

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_49
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/4 v5, 0x0

    const v6, 0x3dcccccd  # 0.1f

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-direct {v4, v5, v6, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v13, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v13, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v13, v3}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    invoke-virtual {v13, v2}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    const-wide/16 v8, 0x1ae

    invoke-virtual {v13, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    if-eqz v0, :cond_88

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v5, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {v4, v2}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    const-wide/16 v8, 0xfa

    invoke-virtual {v4, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e99999a  # 0.3f

    invoke-direct {v8, v9, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v8}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_88
    invoke-virtual {v1, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz v0, :cond_91

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    goto :goto_94

    :cond_91
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    :goto_94
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$t:[Landroid/os/IBinder;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    :goto_11
    if-ltz p2, :cond_31

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/animation/Animator;

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/wm/shell/transition/Transitions;->getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p5

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/wm/shell/splitscreen/z0;

    invoke-direct {v0, p4, p3}, Lcom/android/wm/shell/splitscreen/z0;-><init>(Landroid/animation/Animator;I)V

    invoke-interface {p5, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    :cond_31
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p1}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$300(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$evictWct:Landroid/window/WindowContainerTransaction;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 25

    move-object/from16 v8, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation transition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$t:[Landroid/os/IBinder;

    const/4 v11, 0x0

    aget-object v0, v0, v11

    if-eq v0, v3, :cond_42

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startAnimation with wrong transition:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$t:[Landroid/os/IBinder;

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_42
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mGroupLeashes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->mAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->val$evictWct:Landroid/window/WindowContainerTransaction;

    new-instance v14, Lcom/android/wm/shell/splitscreen/d2;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/d2;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;Ljava/util/ArrayList;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_1ff

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_1ff

    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    move v2, v0

    :goto_7d
    const/4 v3, 0x2

    const/high16 v4, 0x3f800000  # 1.0f

    const-string/jumbo v5, "startAnimation skip non task change "

    if-ltz v1, :cond_ea

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    if-nez v7, :cond_ac

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e7

    :cond_ac
    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getParentTaskId()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_b4

    goto :goto_e7

    :cond_b4
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-direct {v8, v9, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->getGroupLeash(Landroid/window/TransitionInfo;I)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_e6

    :cond_d1
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-eqz v2, :cond_e6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-direct {v8, v9, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->getGroupLeash(Landroid/window/TransitionInfo;I)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_e6
    :goto_e6
    move v2, v11

    :goto_e7
    add-int/lit8 v1, v1, -0x1

    goto :goto_7d

    :cond_ea
    if-eqz v2, :cond_189

    invoke-static {v9, v0}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_f0
    if-ltz v1, :cond_189

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-nez v6, :cond_119

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_185

    :cond_119
    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "startAnimation anim on "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",parent token:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v6

    if-eqz v6, :cond_15b

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v10, v6, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-direct {v8, v9, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->getGroupLeash(Landroid/window/TransitionInfo;I)Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_170

    :cond_15b
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v6

    if-eqz v6, :cond_170

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-direct {v8, v9, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->getGroupLeash(Landroid/window/TransitionInfo;I)Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_170
    :goto_170
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10, v6, v7, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_185
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_f0

    :cond_189
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->groupIndex:[I

    array-length v1, v0

    move v2, v11

    :goto_18d
    if-ge v2, v1, :cond_1ff

    aget v3, v0, v2

    invoke-direct {v8, v9, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->getGroupLeash(Landroid/window/TransitionInfo;I)Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_19a

    move-object v6, v14

    move-object v7, v15

    goto :goto_1fa

    :cond_19a
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v5

    invoke-direct {v8, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->loadAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v12

    iget-object v5, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$900(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitLayout()Lcom/android/wm/shell/common/split/SplitLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wm/shell/common/split/SplitLayout;->getRootBounds()Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual {v12}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1c9

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v12, v5, v6, v7, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    :cond_1c9
    iget-object v5, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v5

    iget-object v6, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v15

    move-object v13, v4

    move-object v6, v14

    move-object v7, v15

    move-object v15, v5

    invoke-static/range {v11 .. v19}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_1f2

    const v3, 0x7fffffff

    invoke-virtual {v10, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x0

    invoke-virtual {v10, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1f7

    :cond_1f2
    const/high16 v3, -0x80000000

    invoke-virtual {v10, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_1f7
    invoke-virtual {v10, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1fa
    add-int/lit8 v2, v2, 0x1

    move-object v14, v6

    move-object v15, v7

    goto :goto_18d

    :cond_1ff
    move-object v6, v14

    move-object v7, v15

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$1500(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/transition/Transitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/transition/Transitions;->getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/s0;

    invoke-direct {v1, v7}, Lcom/android/wm/shell/splitscreen/s0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/splitscreen/t0;

    invoke-direct {v1, v6}, Lcom/android/wm/shell/splitscreen/t0;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xc8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
