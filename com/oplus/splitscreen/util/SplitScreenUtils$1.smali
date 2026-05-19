.class Lcom/oplus/splitscreen/util/SplitScreenUtils$1;
.super Landroid/window/IRemoteTransition$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/splitscreen/util/SplitScreenUtils;->wrap(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mFinishRunnables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic val$runner:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method public constructor <init>(Landroid/view/IRemoteAnimationRunner;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->mFinishRunnables:Landroid/util/ArrayMap;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/util/CounterRotator;Lcom/android/wm/shell/util/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->lambda$startAnimation$0(Lcom/android/wm/shell/util/CounterRotator;Lcom/android/wm/shell/util/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$0(Lcom/android/wm/shell/util/CounterRotator;Lcom/android/wm/shell/util/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 6

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/util/CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/util/CounterRotator;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    const/4 p0, 0x0

    :try_start_12
    invoke-interface {p4, p0, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception p0

    const-string p1, "SplitScreenUtils"

    const-string p2, "Failed to call app controlled animation finished callback"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->mFinishRunnables:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_3
    iget-object p5, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->mFinishRunnables:Landroid/util/ArrayMap;

    invoke-virtual {p5, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Runnable;

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1e

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    if-nez p4, :cond_15

    return-void

    :cond_15
    iget-object p0, p0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v5, v2, v12}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->access$000(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v13

    const/4 v3, 0x1

    invoke-static {v5, v3, v2, v12}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->access$100(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v14

    const/4 v4, 0x0

    invoke-static {v5, v4, v2, v12}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->access$100(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v15

    invoke-static {v5, v3}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v16, v4

    move/from16 v17, v16

    move/from16 v18, v7

    move/from16 v19, v18

    move-object v10, v8

    move-object v11, v10

    :goto_2b
    const/4 v7, 0x2

    if-ltz v6, :cond_b0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_44

    goto/16 :goto_ac

    :cond_44
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    if-eqz v9, :cond_6e

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v9

    if-ne v9, v7, :cond_6e

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-eq v4, v3, :cond_66

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_62

    goto :goto_66

    :cond_62
    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_68

    :cond_66
    :goto_66
    move/from16 v16, v3

    :goto_68
    invoke-static {v5, v6}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v4

    move-object v11, v8

    goto :goto_76

    :cond_6e
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v9

    and-int/2addr v7, v9

    if-eqz v7, :cond_76

    move-object v10, v8

    :cond_76
    :goto_76
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-nez v7, :cond_ac

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v7

    if-ltz v7, :cond_ac

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v7

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v9

    if-eq v7, v9, :cond_ac

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v7

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v9

    sub-int v17, v7, v9

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    move/from16 v18, v7

    move/from16 v19, v8

    :cond_ac
    :goto_ac
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2b

    :cond_b0
    new-instance v3, Lcom/android/wm/shell/util/CounterRotator;

    invoke-direct {v3}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    new-instance v9, Lcom/android/wm/shell/util/CounterRotator;

    invoke-direct {v9}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    if-eqz v11, :cond_124

    if-eqz v17, :cond_124

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_124

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v6

    if-eqz v6, :cond_e7

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    move-object v6, v3

    move-object/from16 v7, p3

    move-object/from16 v20, v9

    move/from16 v9, v17

    move-object/from16 v21, v15

    move-object v15, v10

    move/from16 v10, v18

    move-object/from16 v22, v13

    move-object v13, v11

    move/from16 v11, v19

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_116

    :cond_e7
    move-object/from16 v20, v9

    move-object/from16 v22, v13

    move-object/from16 v21, v15

    move-object v15, v10

    move-object v13, v11

    const-string v6, "SplitScreenUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " has parent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " but it\'s not in info."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_116
    invoke-virtual {v3}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_12c

    invoke-virtual {v3}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_12c

    :cond_124
    move-object/from16 v20, v9

    move-object/from16 v22, v13

    move-object/from16 v21, v15

    move-object v15, v10

    move-object v13, v11

    :cond_12c
    :goto_12c
    if-eqz v16, :cond_1aa

    invoke-virtual {v3}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_145

    invoke-virtual {v3}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v2, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_145
    const/4 v4, 0x1

    invoke-static {v5, v4}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v4

    :goto_14a
    if-ltz v4, :cond_192

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl;

    if-nez v7, :cond_163

    goto :goto_18f

    :cond_163
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    invoke-static {v6, v5}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v6

    if-nez v6, :cond_178

    goto :goto_18f

    :cond_178
    const/4 v6, 0x2

    if-eq v8, v6, :cond_17e

    const/4 v6, 0x4

    if-ne v8, v6, :cond_18f

    :cond_17e
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v6, v4

    invoke-virtual {v2, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v2, v7}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_18f
    :goto_18f
    add-int/lit8 v4, v4, -0x1

    goto :goto_14a

    :cond_192
    array-length v4, v14

    add-int/lit8 v4, v4, -0x1

    :goto_195
    if-ltz v4, :cond_224

    aget-object v6, v14, v4

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object v6, v14, v4

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-virtual {v2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v4, v4, -0x1

    goto :goto_195

    :cond_1aa
    if-eqz v13, :cond_1b9

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2, v4}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_1b9
    if-eqz v15, :cond_224

    if-eqz v17, :cond_224

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-eqz v4, :cond_224

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    if-eqz v4, :cond_1df

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    move-object/from16 v6, v20

    move-object/from16 v7, p3

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_206

    :cond_1df
    const-string v4, "SplitScreenUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has parent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " but it\'s not in info."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_206
    invoke-virtual/range {v20 .. v20}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    if-eqz v4, :cond_224

    invoke-virtual/range {v20 .. v20}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    move-object/from16 v6, v20

    invoke-virtual {v6, v2, v4}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_226

    :cond_224
    move-object/from16 v6, v20

    :goto_226
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v8, Lcom/oplus/splitscreen/util/b;

    move-object v2, v8

    move-object v4, v6

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/oplus/splitscreen/util/b;-><init>(Lcom/android/wm/shell/util/CounterRotator;Lcom/android/wm/shell/util/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V

    iget-object v2, v0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->mFinishRunnables:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_238
    iget-object v3, v0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->mFinishRunnables:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_23e
    .catchall {:try_start_238 .. :try_end_23e} :catchall_251

    iget-object v2, v0, Lcom/oplus/splitscreen/util/SplitScreenUtils$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    const/4 v3, 0x0

    new-instance v5, Lcom/oplus/splitscreen/util/SplitScreenUtils$1$1;

    invoke-direct {v5, v0, v1, v8}, Lcom/oplus/splitscreen/util/SplitScreenUtils$1$1;-><init>(Lcom/oplus/splitscreen/util/SplitScreenUtils$1;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    move-object v0, v2

    move v1, v3

    move-object/from16 v2, v22

    move-object v3, v14

    move-object/from16 v4, v21

    invoke-interface/range {v0 .. v5}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void

    :catchall_251
    move-exception v0

    :try_start_252
    monitor-exit v2
    :try_end_253
    .catchall {:try_start_252 .. :try_end_253} :catchall_251

    throw v0
.end method
