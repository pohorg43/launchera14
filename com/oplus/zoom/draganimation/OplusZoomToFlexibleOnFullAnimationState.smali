.class public Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;
.super Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;
    }
.end annotation


# static fields
.field private static final FULL_ANIMATION:I = 0x4

.field private static final FULL_BACK:Ljava/lang/String; = "full_back"

.field private static final FULL_DIM_FOR_BACK:Ljava/lang/String; = "full_dim_for_back"

.field private static final FULL_DIM_FOR_ICON:Ljava/lang/String; = "full_dim_for_icon"

.field private static final FULL_ICON:Ljava/lang/String; = "full_icon"

.field private static final FULL_TOP:I = 0x0

.field private static final FULL_WHOLE:Ljava/lang/String; = "full_whole"

.field private static final HORIZONTAL:I = 0x2

.field private static final INVALID_MESSAGE:I = -0x1

.field private static final LAUNCH_SCENARIO_CANVAS:I = 0x2

.field private static final REPLACE_ANIMATION:I = 0x5

.field private static final REPLACE_BACK:Ljava/lang/String; = "replace_back"

.field private static final REPLACE_DIM_FOR_BACK:Ljava/lang/String; = "replace_dim_for_back"

.field private static final REPLACE_DIM_FOR_ICON:Ljava/lang/String; = "replace_dim_for_icon"

.field private static final REPLACE_ICON:Ljava/lang/String; = "replace_icon"

.field private static final REPLACE_TOP:I = 0x1

.field private static final REPLACE_WHOLE:Ljava/lang/String; = "replace_whole"

.field private static final SHOW_REPLACE_ICON:Ljava/lang/String; = "show_replace_icon"

.field private static final TAG:Ljava/lang/String; = "OplusZoomToFlexibleOnFullAnimationState"

.field private static final TIMEOUT_CANVAS_SHOW:I = 0x15

.field private static final TIMEOUT_START_CANVAS:I = 0xbb8

.field private static final TIMEOUT_ZOOM_BACK:I = 0x10

.field private static final VERTICAL:I = 0x1

.field private static final WAIT_CANVAS_SHOW:I = 0x14

.field private static final WAIT_ZOOM_BACK:I = 0xf

.field private static final WHOLE_HIDE:I = 0x13


# instance fields
.field private mFocus:I

.field private mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

.field private mKeepMessage:I

.field private mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

.field private mLeftCrop:Landroid/graphics/Rect;

.field private mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

.field private mResetAll:Ljava/lang/Runnable;

.field private mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

.field private mRightCrop:Landroid/graphics/Rect;

.field private mStartCanvasAndResetAll:Ljava/lang/Runnable;

.field public mToHideWholeSurface:Ljava/lang/Runnable;

.field private mTopState:I

.field private mWaitZoomTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightCrop:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFocus:I

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mTopState:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mKeepMessage:I

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$5;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$5;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mStartCanvasAndResetAll:Ljava/lang/Runnable;

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$6;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$6;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mResetAll:Ljava/lang/Runnable;

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mToHideWholeSurface:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mKeepMessage:I

    return p0
.end method

.method public static synthetic access$002(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mKeepMessage:I

    return p1
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mTopState:I

    return p0
.end method

.method public static synthetic access$302(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mTopState:I

    return p1
.end method

.method public static synthetic access$400(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->startCanvas()V

    return-void
.end method

.method public static synthetic access$500(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->startCanvasUnCheck()V

    return-void
.end method

.method public static synthetic access$600(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    return-object p0
.end method

.method private calculateEnterCanvasRect()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    const-string v4, "androidx.flexible.userId"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v5, "androidx.activity.LaunchEmbeddedTaskId"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v0, v3, v1, v1}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->layoutRectCalculate(Ljava/util/List;Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "OplusZoomToFlexibleOnFullAnimationState"

    const/4 v4, 0x2

    if-ne v2, v4, :cond_a7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v2, :cond_a1

    if-eqz v0, :cond_a1

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_67

    goto :goto_a1

    :cond_67
    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    iget v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    iget v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-le v1, v3, :cond_93

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-gt v1, v3, :cond_82

    goto :goto_93

    :cond_82
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-le v1, v3, :cond_8e

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_97

    :cond_8e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    goto :goto_97

    :cond_93
    :goto_93
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    :cond_97
    :goto_97
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getNavBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCanvasBottom:I

    goto :goto_ac

    :cond_a1
    :goto_a1
    const-string p0, "calculateEnterCanvasRect error"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a7
    const-string p0, "not get right resultMap"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ac
    return-void
.end method

.method private handleDragOver(II)V
    .registers 4

    const/16 v0, 0xd

    if-ne p1, v0, :cond_14

    const/4 p1, 0x5

    if-eq p2, p1, :cond_11

    const/4 p1, 0x6

    if-eq p2, p1, :cond_11

    const/4 p1, 0x7

    if-eq p2, p1, :cond_11

    const/16 p1, 0x8

    if-ne p2, p1, :cond_14

    :cond_11
    invoke-direct {p0, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->prepareDragToReplace(I)V

    :cond_14
    return-void
.end method

.method private initializeFullAnimationSource()Z
    .registers 25

    move-object/from16 v0, p0

    const-string v1, "OplusZoomToFlexibleOnFullAnimationState"

    const-string v2, "initializeFullAnimationSource begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getVisibleStandardFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCompactModeTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    :cond_17
    const/4 v3, 0x0

    if-eqz v2, :cond_11e

    iget-boolean v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v4, :cond_20

    goto/16 :goto_11e

    :cond_20
    new-instance v4, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-direct {v4, v0, v5, v6}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;Landroid/content/Context;I)V

    iput-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    new-instance v4, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-direct {v4, v0, v5, v6}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;Landroid/content/Context;I)V

    iput-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iput-object v2, v5, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v2, v4, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->calculateEnterCanvasRect()V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v4, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v4, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mPackage:Ljava/lang/String;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v4, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v4, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v4, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v4, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialRect:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mWaitZoomTaskId:I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v4, "whole_leash"

    const-string v5, "initializeFullAnimationSource"

    invoke-static {v2, v4, v5}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildContainerSurface(Landroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->attachToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget v9, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    iget-object v10, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v11, "whole_back"

    const-string v12, "initializeFullAnimationSource"

    move v8, v9

    invoke-static/range {v7 .. v12}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->buildBufferSurface(Landroid/view/SurfaceControl;IILandroid/view/SurfaceSession;Ljava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeBackSurface:Landroid/view/SurfaceControl;

    sget v13, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->WHOLE_BACK_COLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    const/16 v23, 0x0

    move/from16 v18, v4

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v2

    move-object/from16 v22, v6

    invoke-static/range {v13 .. v23}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->drawSurface(ILjava/lang/String;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const-string v2, "initialize whole animation over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    const-string v2, "initialize full animation over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v3, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mSurfaceSession:Landroid/view/SurfaceSession;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    iget v6, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDisplayMaxLength:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->initializeAnimationSource(Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    const-string v2, "initialize replace animation over"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->initialPrepareArea(Z)V

    return v2

    :cond_11e
    :goto_11e
    const-string v0, "initializeFullAnimationSource error"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private prepareDragToReplace(I)V
    .registers 10

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    goto :goto_29

    :cond_15
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTargetWindowCrop:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    :cond_29
    :goto_29
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "androidx.flexible.userId"

    const-string v6, "androidx.activity.LaunchEmbeddedTaskId"

    if-eq p1, v0, :cond_9d

    const/4 v0, 0x6

    if-ne p1, v0, :cond_38

    goto :goto_9d

    :cond_38
    const/4 v0, 0x7

    if-eq p1, v0, :cond_44

    const/16 v0, 0x8

    if-ne p1, v0, :cond_40

    goto :goto_44

    :cond_40
    move-object p1, v4

    move-object v0, p1

    goto/16 :goto_f5

    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    iput-object v0, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurfacePoint:Landroid/graphics/Point;

    iget v7, p1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v4, v0, v7, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    invoke-virtual {p1, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFocus:I

    move-object p1, v0

    goto :goto_f5

    :cond_9d
    :goto_9d
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    iput-object v0, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurfacePoint:Landroid/graphics/Point;

    iget v7, p1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v4, v0, v7, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v4, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mIconSurface:Landroid/view/SurfaceControl;

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentIconAlpha:F

    invoke-virtual {p1, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFocus:I

    move-object p1, v4

    :goto_f5
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    if-eqz v1, :cond_16c

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    if-eqz v1, :cond_16c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layoutRectCalculateWithOrientation intentList:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " focusIntent:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_131

    move v0, v5

    goto :goto_132

    :cond_131
    move v0, v2

    :goto_132
    invoke-static {v1, p1, v0, v3}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->layoutRectCalculate(Ljava/util/List;Landroid/content/Intent;IZ)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get resultMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_167

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->setRectInfo(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->setRectInfo(Landroid/graphics/Rect;)V

    goto :goto_16c

    :cond_167
    const-string p0, "not get right resultMap"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16c
    :goto_16c
    return-void
.end method

.method private prepareNextAnimation(FFFFI)V
    .registers 15

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move v4, p4

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;IFFFF)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x43c80000  # 400.0f

    mul-float/2addr v1, p4

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;

    move-object v1, v8

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;IFFFF)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private startCanvas()V
    .registers 4

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->requestChangeZoomTask(IZ)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mStartCanvasAndResetAll:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startCanvasUnCheck()V
    .registers 12

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    const-string v1, "OplusZoomToFlexibleOnFullAnimationState"

    if-eqz v0, :cond_12b

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    if-nez v2, :cond_c

    goto/16 :goto_12b

    :cond_c
    const/4 v2, 0x2

    new-array v6, v2, [I

    new-array v7, v2, [I

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFocus:I

    const/4 v4, 0x0

    const-string v5, "androidx.flexible.userId"

    const-string v8, "androidx.activity.LaunchEmbeddedTaskId"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v3, :cond_5d

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    aput v5, v6, v9

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    aput v8, v6, v10

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    aput v0, v7, v9

    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    aput v0, v7, v10

    goto :goto_9f

    :cond_5d
    if-ne v3, v10, :cond_9e

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    aput v5, v6, v9

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    aput v8, v6, v10

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    aput v0, v7, v9

    iget v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    aput v0, v7, v10

    goto :goto_9f

    :cond_9e
    move-object v3, v4

    :goto_9f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "androidx.flexible.activityNoAnimation"

    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFocus:I

    const-string v4, "androidx.flexible.focusIndex"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c9

    goto :goto_ca

    :cond_c9
    move v2, v10

    :goto_ca
    const-string v3, "androidx.flexible.layoutOrientation"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPocketStudio intentList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " taskIds 0:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v6, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v6, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " userIds 0:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v7, v9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v7, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " activityBundle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " canvasBundle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mContext:Landroid/content/Context;

    move-object v9, v0

    invoke-virtual/range {v3 .. v9}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->startPocketStudio(Landroid/content/Context;Ljava/util/List;[I[ILandroid/os/Bundle;Landroid/os/Bundle;)V

    const-string p0, "zoom_drag"

    const-string v0, "two"

    invoke-static {p0, v0}, Lcom/oplus/zoom/common/ZoomDCSManager;->onPocketStudioTrigger(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12b
    :goto_12b
    const-string p0, "not startCanvas"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public changeToState(I)V
    .registers 13

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    const-string v1, "change to state:"

    const-string v2, " currentState:"

    const-string v3, " keepMessage:"

    invoke-static {v1, p1, v2, v0, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mKeepMessage:I

    const-string v3, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eq v0, p1, :cond_11f

    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_1d

    goto/16 :goto_11f

    :cond_1d
    const/4 v2, 0x5

    const/16 v4, 0xe

    if-ne v0, v2, :cond_53

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftCrop:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    if-eq p1, v4, :cond_52

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mKeepMessage:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TO_LEFT_REPLACE KeepMessage:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void

    :cond_53
    const/4 v5, 0x7

    if-ne v0, v5, :cond_87

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v6, v6, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v6, v6, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mCurrentWindowCrop:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightCrop:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    if-eq p1, v4, :cond_86

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mKeepMessage:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TO_RIGHT_REPLACE KeepMessage:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    return-void

    :cond_87
    const/16 v6, 0xa

    if-ne p1, v6, :cond_a6

    if-eq v0, v5, :cond_8f

    if-ne v0, v2, :cond_a6

    :cond_8f
    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mKeepMessage:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TO_RIGHT_REPLACE or TO_LEFT_REPLACE KeepMessage:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a6
    if-ne p1, v4, :cond_b4

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->isCurrentAnimationRun()Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string p0, "not interrupt to drag over"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b4
    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->cancleCurrentAnimation()V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->vibrateIfNeed()V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v10

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    invoke-direct {p0, v10, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->handleDragOver(II)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    invoke-virtual {v0, v10}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;->adjustTargetProperty(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    invoke-virtual {v0, v10}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->adjustTargetProperty(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    invoke-virtual {v0, v10}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;->adjustTargetProperty(I)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->calculateProgress()F

    move-result v6

    const/4 v0, 0x0

    cmpl-float v1, v0, v6

    if-lez v1, :cond_e8

    move v1, v0

    goto :goto_e9

    :cond_e8
    move v1, v6

    :goto_e9
    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    invoke-virtual {v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->calculateProgress()F

    move-result v7

    cmpl-float v2, v1, v7

    if-lez v2, :cond_f4

    goto :goto_f5

    :cond_f4
    move v1, v7

    :goto_f5
    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    invoke-virtual {v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->calculateProgress()F

    move-result v8

    cmpl-float v2, v1, v8

    if-lez v2, :cond_101

    move v9, v1

    goto :goto_102

    :cond_101
    move v9, v8

    :goto_102
    cmpl-float v0, v9, v0

    if-lez v0, :cond_10e

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->prepareNextAnimation(FFFFI)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->startNextAnimation()V

    goto :goto_11f

    :cond_10e
    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    if-ne p1, v4, :cond_11f

    const-string p1, "resetAll directly"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->resetAll()V

    :cond_11f
    :goto_11f
    return-void
.end method

.method public handleMove(II)V
    .registers 9

    invoke-super {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleMove(II)V

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    if-nez v0, :cond_d

    goto/16 :goto_7e

    :cond_d
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mHorizontalLayout:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-eqz v1, :cond_3c

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-gt p1, v1, :cond_28

    iput v4, v0, Landroid/os/Message;->what:I

    iput-boolean v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_54

    :cond_28
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt p1, v1, :cond_31

    iput v3, v0, Landroid/os/Message;->what:I

    iput-boolean v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_54

    :cond_31
    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    if-nez v1, :cond_38

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_54

    :cond_38
    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleDragToZoomAgain(II)V

    return-void

    :cond_3c
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    if-gt p2, v1, :cond_45

    iput v4, v0, Landroid/os/Message;->what:I

    iput-boolean v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_54

    :cond_45
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    if-lt p2, v1, :cond_4e

    iput v3, v0, Landroid/os/Message;->what:I

    iput-boolean v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_54

    :cond_4e
    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    if-nez v1, :cond_7b

    iput v2, v0, Landroid/os/Message;->what:I

    :goto_54
    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->removeRecoverZoom()V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    iget p2, v0, Landroid/os/Message;->what:I

    if-eq p1, p2, :cond_7a

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    iget p2, v0, Landroid/os/Message;->what:I

    sub-int/2addr p2, v5

    if-eq p1, p2, :cond_7a

    const-string p1, "sendMessage:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Landroid/os/Message;->what:I

    const-string v1, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {p1, p2, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7a
    return-void

    :cond_7b
    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleDragToZoomAgain(II)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public handleRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 9

    if-eqz p1, :cond_106

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

    const-string v2, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xf

    const/16 v3, 0x14

    if-ne v0, v1, :cond_74

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v0

    if-nez v0, :cond_106

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mWaitZoomTaskId:I

    if-ne v0, v1, :cond_106

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_106

    const-string v0, "move to back:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0, p1, v2}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mStartCanvasAndResetAll:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_63

    const-string p1, "removeCallbacks mStartCanvasAndResetAll"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mStartCanvasAndResetAll:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_63
    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->startCanvasUnCheck()V

    invoke-virtual {p0, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mResetAll:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_106

    :cond_74
    if-ne v0, v3, :cond_106

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mWaitZoomTaskId:I

    if-ne v0, v1, :cond_106

    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    goto :goto_8e

    :cond_8d
    const/4 v0, 0x0

    :goto_8e
    const/4 v1, -0x1

    if-eqz v0, :cond_ad

    :try_start_91
    const-class v3, Loplus/content/res/OplusExtraConfiguration;

    const-string v4, "getScenario"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a8} :catch_a9

    goto :goto_ad

    :catch_a9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ad
    :goto_ad
    const/4 v0, 0x2

    if-ne v1, v0, :cond_106

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_106

    const-string v0, "move to canvas:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mWaitZoomTaskId:I

    invoke-static {v0, v1, v2}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_e5

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_isTopActivityFinishDraw(I)Z

    move-result v0

    if-nez v0, :cond_e5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wait "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " finish draw"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e5
    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mResetAll:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_100

    const-string p1, "removeCallbacks resetAll"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mResetAll:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_100
    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->cancleCurrentAnimation()V

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->hideWholeSurface()V

    :cond_106
    :goto_106
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

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->initAnimationThread()V

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
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->handleUp(II)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$2;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    :cond_10
    const-string p1, "OplusZoomToFlexibleOnFullAnimationState"

    const-string p2, "handleUp not initial over"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    :goto_1a
    return-void
.end method

.method public hideWholeSurface()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mToHideWholeSurface:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initAnimationThread()V
    .registers 3

    invoke-super {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->initAnimationThread()V

    new-instance v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$1;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$1;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method public initialPrepareArea(Z)V
    .registers 11

    const/4 v0, 0x0

    const v1, 0x3ca3d70a  # 0.02f

    const v2, 0x3ef22d0e  # 0.473f

    const/4 v3, 0x1

    const v4, 0x3f1eb852  # 0.62f

    const v5, 0x3ec28f5c  # 0.38f

    if-eqz p1, :cond_3c

    iget v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    int-to-float v7, v6

    mul-float/2addr v7, v5

    float-to-int v5, v7

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    int-to-float v7, v6

    mul-float/2addr v7, v4

    float-to-int v4, v7

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    iget v7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDownX:I

    if-le v7, v5, :cond_26

    if-lt v7, v4, :cond_23

    goto :goto_26

    :cond_23
    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_28

    :cond_26
    :goto_26
    iput-boolean v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    :goto_28
    int-to-float v0, v6

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, v6

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCanvasBottom:I

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCanvasTop:I

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int v3, v0, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    goto :goto_6f

    :cond_3c
    iget v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenHeight:I

    int-to-float v7, v6

    mul-float/2addr v7, v5

    float-to-int v5, v7

    iput v5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mLeftReplace:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mRightReplace:I

    iget v6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mDownY:I

    if-le v6, v5, :cond_52

    if-lt v6, v4, :cond_4f

    goto :goto_52

    :cond_4f
    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    goto :goto_54

    :cond_52
    :goto_52
    iput-boolean v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyDragOutZoomArea:Z

    :goto_54
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCanvasBottom:I

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCanvasTop:I

    sub-int v4, v0, v3

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    sub-int v4, v0, v3

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    iget v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mScreenWidth:I

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v0, v3

    add-int v3, v1, v2

    mul-int/lit8 v3, v3, 0x2

    sub-int v6, v0, v3

    move v0, v4

    :goto_6f
    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftCrop:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mInitialWindowCrop:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int v7, v5, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v8, v4, v1

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-virtual {v3, v7, v8, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightCrop:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftCrop:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int v2, v1, v6

    iget v3, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    add-int/2addr v1, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a9

    :cond_98
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mRightCrop:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mLeftCrop:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int v3, v1, v6

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v3, p0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_a9
    return-void
.end method

.method public prepareAnimationSource()V
    .registers 4

    invoke-super {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->prepareAnimationSource()V

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->initializeFullAnimationSource()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->resetAll()V

    return-void

    :cond_d
    const-string v0, "initializeFullAnimationSource alreadyUp:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    const-string v2, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->resetAll()V

    goto :goto_2a

    :cond_22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->vibrateWidthSpecilEffect(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    :goto_2a
    return-void
.end method

.method public resetAll()V
    .registers 4

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mKeepMessage:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mTopState:I

    invoke-super {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->resetAll()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->resetAll()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mFullAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_2a
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->resetAll()V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->mReplaceAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mReplaceIconSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_46
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeBackSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_57
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_68
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationThread:Landroid/os/HandlerThread;

    :cond_7f
    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mFlexibleAnimationHandler:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;

    invoke-interface {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$FlexibleAnimationHandler;->resetAnimation()V

    return-void
.end method
