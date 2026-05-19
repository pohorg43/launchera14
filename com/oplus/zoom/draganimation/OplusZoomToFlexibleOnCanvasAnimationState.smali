.class public Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;
.super Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;
    }
.end annotation


# static fields
.field private static final CANVAS_SIZE:I = 0x2

.field private static final LAUNCH_SCENARIO_CANVAS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OplusZoomToFlexibleOnCanvasAnimationState"

.field private static final TIMEOUT_START_THIRD:I = 0xbb8

.field public static final TIMEOUT_THIRD_SHOW:I = 0x12

.field public static final TIMEOUT_ZOOM_BACK:I = 0x10

.field public static final WAIT_THIRD_SHOW:I = 0x11

.field public static final WAIT_ZOOM_BACK:I = 0xf

.field public static final WHOLE_HIDE:I = 0x13


# instance fields
.field private mFets:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

.field private mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

.field private mResetAll:Ljava/lang/Runnable;

.field private mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

.field private mStartThirdAndResetAll:Ljava/lang/Runnable;

.field public mToHideWholeSurface:Ljava/lang/Runnable;

.field private mWaitZoomIntent:Landroid/content/Intent;

.field private mWaitZoomTaskId:I

.field private mWaitZoomUserId:I

.field private mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;)V

    new-instance p2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;

    invoke-direct {p2, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$4;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)V

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mStartThirdAndResetAll:Ljava/lang/Runnable;

    new-instance p2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$5;

    invoke-direct {p2, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$5;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)V

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mResetAll:Ljava/lang/Runnable;

    new-instance p2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$7;

    invoke-direct {p2, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$7;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)V

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mToHideWholeSurface:Ljava/lang/Runnable;

    new-instance p2, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    invoke-direct {p2, p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mFets:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mFets:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->startThirdActivity()V

    return-void
.end method

.method public static synthetic access$500(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomTaskId:I

    return p0
.end method

.method public static synthetic access$600(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomUserId:I

    return p0
.end method

.method private adjustFlexibleArea(II)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$6;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleDragOver(II)V
    .registers 4

    const/16 v0, 0xd

    if-ne p1, v0, :cond_21

    const/16 p1, 0xb

    if-eq p2, p1, :cond_1e

    const/16 p1, 0xc

    if-ne p2, p1, :cond_d

    goto :goto_1e

    :cond_d
    const/4 p1, 0x5

    if-eq p2, p1, :cond_1a

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1a

    const/4 p1, 0x7

    if-eq p2, p1, :cond_1a

    const/16 p1, 0x8

    if-ne p2, p1, :cond_21

    :cond_1a
    invoke-direct {p0, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->prepareDragToReplace(I)V

    goto :goto_21

    :cond_1e
    :goto_1e
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->prepareDragToThird()V

    :cond_21
    :goto_21
    return-void
.end method

.method private initializeCanvasAnimationSource()Z
    .registers 26

    move-object/from16 v0, p0

    const-string v1, "OplusZoomToFlexibleOnCanvasAnimationState"

    const-string v2, "initializeCanvasAnimationSource begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    new-instance v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-direct {v2, v0, v3, v5}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    new-instance v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-direct {v2, v0, v3, v6}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getVisibleFlexibleTaskInfo()Landroid/util/SparseArray;

    move-result-object v2

    const-string v3, "runningTaskInfos size:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v6, 0x0

    if-eq v3, v5, :cond_4e

    const-string v0, "flexibleTaskInfo error"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4e
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3, v6}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_getCurrentRectForTask(II)Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v5, v6}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_getCurrentRectForTask(II)Landroid/graphics/Rect;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "taskId1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " r1:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " taskId2:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " r2:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_255

    if-eqz v8, :cond_255

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_255

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a4

    goto/16 :goto_255

    :cond_a4
    iget v3, v7, Landroid/graphics/Rect;->right:I

    iget v5, v8, Landroid/graphics/Rect;->left:I

    if-le v3, v5, :cond_10d

    iget v9, v8, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    if-gt v9, v10, :cond_b1

    goto :goto_10d

    :cond_b1
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    iget v5, v8, Landroid/graphics/Rect;->top:I

    if-le v3, v5, :cond_c4

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    if-gt v9, v10, :cond_be

    goto :goto_c4

    :cond_be
    const-string v0, "flexible rect error"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_c4
    :goto_c4
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    if-gt v3, v5, :cond_d1

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_d5

    :cond_d1
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    :goto_d5
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v3, v9, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    iget v9, v8, Landroid/graphics/Rect;->top:I

    if-gt v5, v9, :cond_e5

    move-object v5, v7

    goto :goto_e6

    :cond_e5
    move-object v5, v8

    :goto_e6
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    iget v9, v8, Landroid/graphics/Rect;->top:I

    if-gt v5, v9, :cond_f6

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_fa

    :cond_f6
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    :goto_fa
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v2, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    iget v5, v8, Landroid/graphics/Rect;->top:I

    if-gt v3, v5, :cond_109

    move-object v7, v8

    :cond_109
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_155

    :cond_10d
    :goto_10d
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    if-gt v3, v5, :cond_11a

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_11e

    :cond_11a
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    :goto_11e
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v3, v9, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v9, v8, Landroid/graphics/Rect;->left:I

    if-gt v5, v9, :cond_12e

    move-object v5, v7

    goto :goto_12f

    :cond_12e
    move-object v5, v8

    :goto_12f
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v9, v8, Landroid/graphics/Rect;->left:I

    if-gt v5, v9, :cond_13f

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_143

    :cond_13f
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    :goto_143
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v2, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    iget v5, v8, Landroid/graphics/Rect;->left:I

    if-gt v3, v5, :cond_152

    move-object v7, v8

    :cond_152
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_155
    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->initialPrepareArea(Z)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v3, "whole_leash"

    const-string v5, "initializeCanvasAnimationSource"

    invoke-static {v2, v3, v5}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildContainerSurface(Landroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v6, v2, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    const/4 v7, -0x1

    invoke-virtual {v2, v3, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget v10, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    iget-object v11, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v12, "whole_back"

    const-string v13, "initializeCanvasAnimationSource"

    move v9, v10

    invoke-static/range {v8 .. v13}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeBackSurface:Landroid/view/SurfaceControl;

    sget v14, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->WHOLE_BACK_COLOR:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const/16 v24, 0x0

    move/from16 v19, v3

    move/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v2

    move-object/from16 v23, v7

    invoke-static/range {v14 .. v24}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const-string v2, "initialize whole animation over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget v7, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-virtual {v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->initialCropAndPosition()V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-virtual {v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->initialTips()V

    const-string v2, "initialize left animation over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget v7, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-virtual {v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->initialCropAndPosition()V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-virtual {v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->initialTips()V

    const-string v2, "initialize right animation over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget v7, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    const-string v2, "initialize middle animation over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mFets:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    if-eqz v2, :cond_24f

    invoke-direct/range {p0 .. p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->prepareDragToThird()V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mFets:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->prepareEnterSplitView(Landroid/view/SurfaceControl;)V

    :cond_24f
    const-string v0, "initializeCanvasAnimationSource over"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_255
    :goto_255
    return v6
.end method

.method private prepareDragToReplace(I)V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    const-string v5, "androidx.flexible.userId"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_49

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v1, v5}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->generateSurfacePkgNameByUserId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "androidx.activity.LaunchEmbeddedTaskId"

    if-eq p1, v5, :cond_81

    const/4 v5, 0x6

    if-ne p1, v5, :cond_55

    goto :goto_81

    :cond_55
    const/4 v3, 0x7

    if-eq p1, v3, :cond_5c

    const/16 v3, 0x8

    if-ne p1, v3, :cond_a4

    :cond_5c
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v1, v2, v3, v5}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->addReplaceIcon(Ljava/lang/String;ILandroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;)V

    move p1, v6

    goto :goto_a5

    :cond_81
    :goto_81
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v1, v2, v3, v5}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->addReplaceIcon(Ljava/lang/String;ILandroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;)V

    :cond_a4
    move p1, v7

    :goto_a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutReplaceRectCalculate intentNewList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " replace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-static {v0, v4, p1, v1, v7}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->layoutReplaceRectCalculate(Ljava/util/List;Landroid/content/Intent;IIZ)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get resultMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ff

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->setRectInfo(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->setRectInfo(Landroid/graphics/Rect;)V

    goto :goto_104

    :cond_ff
    const-string p0, "not get right resultMap"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_104
    return-void
.end method

.method private prepareDragToThird()V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    const-string v5, "androidx.flexible.userId"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v6, "androidx.activity.LaunchEmbeddedTaskId"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutRectCalculate intentList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v0, v4, v1, v1}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->layoutRectCalculate(Ljava/util/List;Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get resultMap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b7

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->setRectInfo(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->setRectInfo(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->setRectInfo(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mFets:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    if-eqz p0, :cond_bc

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->setRectList(Ljava/util/List;)V

    goto :goto_bc

    :cond_b7
    const-string p0, "not get right resultMap"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    :goto_bc
    return-void
.end method

.method private prepareNextAnimation(FFFFFI)V
    .registers 18

    move-object v8, p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    iput-object v9, v8, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p6

    move/from16 v3, p5

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;IFFFFF)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43c80000  # 400.0f

    mul-float v1, v1, p5

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v8, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    iget-object v1, v8, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, v8, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p6

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;IFFFFF)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private startThirdActivity()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomTaskId:I

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomIntent:Landroid/content/Intent;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomUserId:I

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->requestChangeZoomTask(IZ)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mStartThirdAndResetAll:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public changeToState(I)V
    .registers 11

    const-string v0, "currentTransferAnimation: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->cancleCurrentAnimation()V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v8

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->vibrateIfNeed()V

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    invoke-direct {p0, v8, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->handleDragOver(II)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    invoke-virtual {v0, v8}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->adjustTargetProperty(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-virtual {v0, v8}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->adjustTargetProperty(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-virtual {v0, v8}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->adjustTargetProperty(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    invoke-virtual {v0, v8}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;->adjustTargetProperty(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->calculateProgress()F

    move-result v3

    const/4 v0, 0x0

    cmpl-float v2, v0, v3

    if-lez v2, :cond_4f

    move v2, v0

    goto :goto_50

    :cond_4f
    move v2, v3

    :goto_50
    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-virtual {v4}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->calculateProgress()F

    move-result v4

    cmpl-float v5, v2, v4

    if-lez v5, :cond_5b

    goto :goto_5c

    :cond_5b
    move v2, v4

    :goto_5c
    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-virtual {v5}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->calculateProgress()F

    move-result v5

    cmpl-float v6, v2, v5

    if-lez v6, :cond_67

    goto :goto_68

    :cond_67
    move v2, v5

    :goto_68
    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    invoke-virtual {v6}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->calculateProgress()F

    move-result v6

    cmpl-float v7, v2, v6

    if-lez v7, :cond_74

    move v7, v2

    goto :goto_75

    :cond_74
    move v7, v6

    :goto_75
    cmpl-float v0, v7, v0

    if-lez v0, :cond_81

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->prepareNextAnimation(FFFFFI)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->startNextAnimation()V

    goto :goto_d9

    :cond_81
    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    const/16 v0, 0xe

    if-ne p1, v0, :cond_c5

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_ad

    const/16 v0, 0xc

    if-eq p1, v0, :cond_ad

    const/4 v0, 0x5

    if-eq p1, v0, :cond_ad

    const/4 v0, 0x6

    if-eq p1, v0, :cond_ad

    const/4 v0, 0x7

    if-eq p1, v0, :cond_ad

    const/16 v0, 0x8

    if-ne p1, v0, :cond_a4

    goto :goto_ad

    :cond_a4
    const-string p1, "resetAll directly"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->resetAll()V

    goto :goto_d9

    :cond_ad
    :goto_ad
    const-string p1, "prepare start third before resetAll"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->startThirdActivity()V

    goto :goto_d9

    :cond_c5
    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_d9

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-eqz p1, :cond_d9

    const-string p1, "up and reset"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->resetAll()V

    :cond_d9
    :goto_d9
    return-void
.end method

.method public handleMove(II)V
    .registers 9

    invoke-super {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleMove(II)V

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    if-nez v0, :cond_d

    goto/16 :goto_83

    :cond_d
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->adjustFlexibleArea(II)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToFlexible:Landroid/graphics/Rect;

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 p1, 0xc

    iput p1, v0, Landroid/os/Message;->what:I

    goto :goto_66

    :cond_24
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v3, 0xa

    const/16 v4, 0x8

    const/4 v5, 0x6

    if-eqz v1, :cond_4e

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-gt p1, v1, :cond_3a

    iput v5, v0, Landroid/os/Message;->what:I

    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_66

    :cond_3a
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt p1, v1, :cond_43

    iput v4, v0, Landroid/os/Message;->what:I

    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_66

    :cond_43
    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    if-nez v1, :cond_4a

    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_66

    :cond_4a
    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleDragToZoomAgain(II)V

    return-void

    :cond_4e
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-gt p2, v1, :cond_57

    iput v5, v0, Landroid/os/Message;->what:I

    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_66

    :cond_57
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt p2, v1, :cond_60

    iput v4, v0, Landroid/os/Message;->what:I

    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_66

    :cond_60
    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    if-nez v1, :cond_80

    iput v3, v0, Landroid/os/Message;->what:I

    :goto_66
    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->removeRecoverZoom()V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    iget p2, v0, Landroid/os/Message;->what:I

    if-eq p1, p2, :cond_7f

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    iget p2, v0, Landroid/os/Message;->what:I

    sub-int/2addr p2, v2

    if-eq p1, p2, :cond_7f

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7f
    return-void

    :cond_80
    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleDragToZoomAgain(II)V

    :cond_83
    :goto_83
    return-void
.end method

.method public handleRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 9

    if-eqz p1, :cond_fe

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRunningTaskInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xf

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-ne v0, v1, :cond_a1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-nez v0, :cond_fe

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomTaskId:I

    if-ne v0, v1, :cond_fe

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_fe

    const-string v0, "move to back:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0, p1, v2}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mStartThirdAndResetAll:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_64

    const-string p1, "removeCallbacks startThirdAndResetAll"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mStartThirdAndResetAll:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_64
    invoke-virtual {p0, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_8e

    const/16 v0, 0xc

    if-ne p1, v0, :cond_72

    goto :goto_8e

    :cond_72
    const/4 v0, 0x5

    const/16 v1, 0x8

    const/4 v2, 0x7

    if-eq p1, v0, :cond_7f

    const/4 v0, 0x6

    if-eq p1, v0, :cond_7f

    if-eq p1, v2, :cond_7f

    if-ne p1, v1, :cond_97

    :cond_7f
    if-eq p1, v2, :cond_83

    if-ne p1, v1, :cond_84

    :cond_83
    const/4 v4, 0x1

    :cond_84
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomTaskId:I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomUserId:I

    invoke-static {p1, v0, v1, v4}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_startReplaceSplitWhenNormal(ILandroid/content/Intent;II)V

    goto :goto_97

    :cond_8e
    :goto_8e
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomTaskId:I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomUserId:I

    invoke-static {p1, v0, v1}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_startThreeSplitFromNormal(ILandroid/content/Intent;I)V

    :cond_97
    :goto_97
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mResetAll:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_fe

    :cond_a1
    if-ne v0, v3, :cond_fe

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomTaskId:I

    if-ne v0, v1, :cond_fe

    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz v0, :cond_ba

    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    goto :goto_bb

    :cond_ba
    const/4 v0, 0x0

    :goto_bb
    const/4 v1, -0x1

    if-eqz v0, :cond_d9

    :try_start_be
    const-class v3, Loplus/content/res/OplusExtraConfiguration;

    const-string v5, "getScenario"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_d4} :catch_d5

    goto :goto_d9

    :catch_d5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d9
    :goto_d9
    const/4 v0, 0x2

    if-ne v1, v0, :cond_fe

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz p1, :cond_fe

    const-string p1, "move to canvas:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomTaskId:I

    invoke-static {p1, v0, v2}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mWaitZoomTaskId:I

    invoke-static {p1}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_isTopActivityFinishDraw(I)Z

    move-result p1

    if-eqz p1, :cond_fe

    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->cancleCurrentAnimation()V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->hideWholeSurface()V

    :cond_fe
    :goto_fe
    return-void
.end method

.method public handleState(I)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    const/4 v1, 0x1

    if-eq p1, v1, :cond_20

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    goto :goto_27

    :cond_a
    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->initAnimationThread()V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_27

    :cond_20
    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    goto :goto_27

    :cond_24
    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    :goto_27
    return-void
.end method

.method public handleUp(II)V
    .registers 9

    invoke-super {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleUp(II)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-string v2, "OplusZoomToFlexibleOnCanvasAnimationState"

    if-eqz v0, :cond_8c

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-string v3, "handleUp nowState:"

    const-string v4, " x:"

    const-string v5, " y:"

    invoke-static {v3, v0, v4, p1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->removeRecoverZoom()V

    const/4 v3, 0x2

    if-gt v0, v3, :cond_30

    const-string p1, "handleUp and over"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    return-void

    :cond_30
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mFets:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->getCurrentRectArea()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToFlexible:Landroid/graphics/Rect;

    :cond_3a
    const-string v0, "handleUp toFlexible:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToFlexible:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToFlexible:Landroid/graphics/Rect;

    if-eqz v0, :cond_5c

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    goto :goto_86

    :cond_5c
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x6

    if-eqz v0, :cond_77

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-gt p1, p2, :cond_6f

    invoke-virtual {p0, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    goto :goto_86

    :cond_6f
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt p1, p2, :cond_86

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    goto :goto_86

    :cond_77
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-gt p2, p1, :cond_7f

    invoke-virtual {p0, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    goto :goto_86

    :cond_7f
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt p2, p1, :cond_86

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    :cond_86
    :goto_86
    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->sendStateMessage(I)V

    goto :goto_93

    :cond_8c
    const-string p1, "handleUp not initial over"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    :goto_93
    return-void
.end method

.method public hideWholeSurface()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mToHideWholeSurface:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initAnimationThread()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->initAnimationThread()V

    new-instance v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$1;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$1;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method public initialPrepareArea(Z)V
    .registers 12

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v2, v1

    const v3, 0x3ed1eb85  # 0.41f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    int-to-float v4, v3

    const v5, 0x3f4f5c29  # 0.81f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v1, v1

    const v5, 0x3f170a3d  # 0.59f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v3, v3

    const v5, 0x3f7ae148  # 0.98f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mToFlexible:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v3, :cond_43

    goto :goto_44

    :cond_43
    move-object v1, v2

    :goto_44
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->layoutRectCalculate(Ljava/util/List;Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get layoutMap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " focus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_12c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_72

    goto/16 :goto_12c

    :cond_72
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    iget v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    invoke-virtual {v1, v2, v2, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    iget v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    invoke-virtual {v0, v2, v2, v1, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getNavBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCanvasBottom:I

    const v1, 0x3f1eb852  # 0.62f

    const v5, 0x3ec28f5c  # 0.38f

    const v6, 0x3ca3d70a  # 0.02f

    const v7, 0x3ef22d0e  # 0.473f

    if-eqz p1, :cond_e6

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v8, p1

    mul-float/2addr v8, v7

    float-to-int v7, v8

    int-to-float v8, p1

    mul-float/2addr v8, v6

    float-to-int v6, v8

    iget v8, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCanvasTop:I

    sub-int/2addr v0, v8

    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v0, v8

    add-int v8, v7, v6

    mul-int/2addr v8, v4

    sub-int/2addr p1, v8

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v2, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareLeftPosition:Landroid/graphics/Point;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareRightPosition:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareLeftPosition:Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    add-int/2addr v6, p1

    iget p1, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, p1}, Landroid/graphics/Point;->set(II)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v0, p1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDownX:I

    if-le v1, v0, :cond_e3

    if-lt v1, p1, :cond_e0

    goto :goto_e3

    :cond_e0
    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_12b

    :cond_e3
    :goto_e3
    iput-boolean v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_12b

    :cond_e6
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCanvasTop:I

    sub-int v8, v0, p1

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v7, v8

    sub-int v8, v0, p1

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v6, v8

    iget v8, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    sub-int/2addr v0, p1

    add-int p1, v6, v7

    mul-int/2addr p1, v4

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v2, v8, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareLeftPosition:Landroid/graphics/Point;

    invoke-virtual {p1, v6, v6}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareRightPosition:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mPrepareLeftPosition:Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v7

    add-int/2addr v4, v0

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Point;->set(II)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    int-to-float v0, p1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDownY:I

    if-le v1, v0, :cond_129

    if-lt v1, p1, :cond_126

    goto :goto_129

    :cond_126
    iput-boolean v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_12b

    :cond_129
    :goto_129
    iput-boolean v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    :goto_12b
    return-void

    :cond_12c
    :goto_12c
    const-string p0, "get layoutMap error"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepareAnimationSource()V
    .registers 4

    invoke-super {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->prepareAnimationSource()V

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->initializeCanvasAnimationSource()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "initializeCanvasAnimationSource alreadyUp:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    const-string v2, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->resetAll()V

    goto :goto_2a

    :cond_1e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->vibrateWidthSpecilEffect(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->changeToState(I)V

    goto :goto_2a

    :cond_27
    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->resetAll()V

    :goto_2a
    return-void
.end method

.method public resetAll()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mFets:Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->setFlexibleEnterThreeSplitShowIfNeeded(Z)V

    :cond_8
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    invoke-super {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->resetAll()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mleftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->resetAll()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->resetAll()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->mMiddleAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->resetAll()V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeBackSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_30
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_41
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationThread:Landroid/os/HandlerThread;

    :cond_58
    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mFlexibleAnimationHandler:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;

    invoke-interface {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;->resetAnimation()V

    return-void
.end method
