.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getMinimizedToNormalRemoteTransition()Landroid/window/RemoteTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .registers 1

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .registers 28

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    new-instance v9, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$400(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    invoke-static {}, Lcom/android/wm/shell/ShellAnimThread;->getExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$500(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x1

    if-ltz v0, :cond_2e

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$500(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_2b

    goto :goto_2e

    :cond_2b
    const/4 v0, 0x0

    move v10, v0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v10, v1

    :goto_2f
    const-wide/16 v2, 0x150

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$600(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v0, v4, v11

    if-lez v0, :cond_4f

    iget-object v0, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$600(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v4, v2

    const-wide/16 v2, 0xfa

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_4f
    move-wide v11, v2

    array-length v13, v7

    const/4 v0, 0x0

    move v14, v0

    :goto_53
    if-ge v14, v13, :cond_289

    aget-object v0, v7, v14

    iget v2, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v2, :cond_63

    move/from16 p1, v10

    move/from16 p4, v13

    move/from16 v16, v14

    goto/16 :goto_27c

    :cond_63
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1100(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->getMiniStashPos()I

    move-result v3

    if-ne v3, v1, :cond_7f

    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_83

    :cond_7f
    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    move-result-object v1

    :goto_83
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$700(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isHorizontalDivision(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_c1

    if-eqz v10, :cond_aa

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_b5

    :cond_aa
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v3, v4

    :goto_b5
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    goto :goto_e3

    :cond_c1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v4, v3, 0x2

    if-eqz v10, :cond_d9

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_e3

    :cond_d9
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v3, v5

    :goto_e3
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v15, "getMinimizedToNormalRemoteTransition:taskId "

    invoke-static {v15}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 p1, v10

    iget v10, v0, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " localBounds "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " position "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " offsetx "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " offsety "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " startBounds "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " endBounds "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mStashBounds "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$500(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget v10, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v15, v2, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    invoke-virtual {v3, v4, v10, v15}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v10, v15

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v15, v5

    invoke-virtual {v3, v4, v10, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1200(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v4

    iget-object v5, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v5}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1300(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v5

    if-ne v4, v5, :cond_191

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$2000(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v4

    goto :goto_197

    :cond_191
    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1300(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    move-result-object v4

    :goto_197
    iget-object v4, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    invoke-virtual {v3, v4, v5, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    const/high16 v15, 0x3f800000  # 1.0f

    mul-float/2addr v10, v15

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v10, v15

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x3f800000  # 1.0f

    mul-float v15, v15, v16

    move/from16 p4, v13

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v15, v13

    invoke-virtual {v5, v4, v10, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-virtual {v5, v4, v10}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v5, v4, v10}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v10}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v5, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    const/4 v10, 0x0

    invoke-static {v5, v10}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1802(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    new-instance v5, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;

    iget-object v10, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    iget-object v10, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v10}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Landroid/content/Context;

    move-result-object v17

    iget-object v10, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v10}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v19

    iget-object v10, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v10}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$2100(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Landroid/view/SurfaceSession;

    move-result-object v20

    iget-object v10, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v10}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$400(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v21

    move-object v15, v5

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v21}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;-><init>(Landroid/content/res/Configuration;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/common/TransactionPool;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v10, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5, v2, v10}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;->createMaskLeash(Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;)V

    new-instance v10, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;

    invoke-direct {v10, v2, v1}, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v13, Lcom/android/wm/shell/splitscreen/g;

    invoke-direct {v13, v5}, Lcom/android/wm/shell/splitscreen/g;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)V

    invoke-virtual {v10, v13}, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;->setOnAnimationUpdateListener(Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec$OnAnimationUpdateListener;)V

    new-instance v13, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v13}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v10, v13}, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v13, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v13, v11, v12}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1000(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;J)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;->setDuration(J)V

    new-instance v7, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;

    iget-object v8, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    new-instance v13, Landroid/graphics/Point;

    iget v15, v1, Landroid/graphics/Rect;->left:I

    move/from16 v16, v14

    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v13, v15, v14}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v14, 0x3f800000  # 1.0f

    invoke-direct {v7, v8, v4, v13, v14}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$StashSurfaceAnimatable;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/view/SurfaceControl;Landroid/graphics/Point;F)V

    new-instance v8, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;

    invoke-direct {v8, v7}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;-><init>(Lcom/android/wm/shell/splitscreen/animation/Animatable;)V

    new-instance v7, Landroid/graphics/Point;

    iget v13, v2, Landroid/graphics/Rect;->left:I

    iget v14, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v7, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v8, v3, v7, v10, v9}, Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Point;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;)V

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v7, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v7}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$900(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    new-instance v3, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;

    invoke-direct {v3, v2, v1}, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v1, v11, v12}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1000(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;J)J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/android/wm/shell/splitscreen/animation/RectAnimationSpec;->setDuration(J)V

    new-instance v7, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;

    iget-object v2, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$1;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$NormalSplitDecorManager;)V

    invoke-virtual {v9, v7}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addAnimation(Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;)V

    :goto_27c
    add-int/lit8 v14, v16, 0x1

    const/4 v1, 0x1

    move/from16 v10, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v13, p4

    goto/16 :goto_53

    :cond_289
    move-object v0, v7

    array-length v1, v0

    const/4 v2, 0x0

    :goto_28c
    if-ge v2, v1, :cond_2b8

    aget-object v3, v0, v2

    iget v4, v3, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_296

    goto :goto_2b5

    :cond_296
    iget-object v4, v3, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    new-instance v5, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$2;

    invoke-direct {v5, v6, v4}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$2;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;Landroid/graphics/Rect;)V

    sget-object v4, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v4, v11, v12}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1000(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;J)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->setDuration(J)V

    new-instance v4, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v3, v5}, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;-><init>(Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;)V

    invoke-virtual {v9, v4}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addAnimation(Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;)V

    :goto_2b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_28c

    :cond_2b8
    move-object/from16 v2, p3

    if-eqz v2, :cond_2f2

    array-length v0, v2

    const/4 v1, 0x0

    :goto_2be
    if-ge v1, v0, :cond_2f2

    aget-object v3, v2, v1

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v4}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1100(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)Ljava/util/function/Supplier;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-static {v4}, Lcom/oplus/splitscreen/DividerUtils;->getDisplayBounds(Lcom/android/wm/shell/common/split/SplitLayout;)Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$3;

    invoke-direct {v5, v6, v4}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$3;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;Landroid/graphics/Rect;)V

    sget-object v4, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v4, v6, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {v4, v11, v12}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1000(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;J)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->setDuration(J)V

    new-instance v4, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v4, v3, v5}, Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;-><init>(Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;)V

    invoke-virtual {v9, v4}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addAnimation(Lcom/android/wm/shell/splitscreen/animation/AnimationAdapter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2be

    :cond_2f2
    new-instance v0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$4;

    move-object/from16 v1, p5

    invoke-direct {v0, v6, v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9$4;-><init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$9;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v9, v0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner;->start()V

    return-void
.end method
