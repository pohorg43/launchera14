.class public Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;
.super Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;
    }
.end annotation


# static fields
.field private static final CORNER_RADIUS:F = 33.0f

.field private static final HORIZONTAL_CHANGE_RATIO:F = 0.026f

.field private static final HORIZONTAL_REMIND_RATIO:F = 0.132f

.field private static final SPLIT_CHILD_CORNER_RADIUS:F = 33.0f

.field private static final SPLIT_DIFF:I = 0x14

.field private static final STABLE_HEIGHT_PROPORTION:F = 0.316f

.field private static final STABLE_WIDTH_PROPORTION:F = 0.527f

.field private static final TAG:Ljava/lang/String; = "OplusDragZoomTabletAnimationManager"

.field private static final TIPS_EDGE_DISTANCE_RATIO:F = 0.004f

.field private static final TIPS_HEIGHT_RATIO:F = 0.03f

.field private static final TIPS_WIDTH_RATIO:F = 0.0348f

.field private static final TOTAL_FULL_WINDOW_SHIFT_RATIO:F = 0.0264f

.field private static final VERTICAL_CHANGE_RATIO:F = 0.026f

.field private static final VERTICAL_REMIND_RATIO:F = 0.132f

.field private static final ZOOM_CORNER_RADIUS:F = 40.0f


# instance fields
.field private mLeftOrTopChildScale:F

.field private mRightOrBottomChildScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$1;

    invoke-static {}, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;->getInstance()Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$1;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->mLeftOrTopChildScale:F

    return p0
.end method

.method public static synthetic access$002(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->mLeftOrTopChildScale:F

    return p1
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;)F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->mRightOrBottomChildScale:F

    return p0
.end method

.method public static synthetic access$102(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->mRightOrBottomChildScale:F

    return p1
.end method

.method private prepareGestureAnimation()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result v0

    const-string v1, "OplusDragZoomTabletAnimationManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "last drag animation not over, don\'t start next drag animation"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_19
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {v0, v2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setDragState(Z)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2d

    const-string p0, "drag animation is in prepare, don\'t change drag animation state"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2d
    return v0
.end method

.method private removeChangeMessage()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_25
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_3b
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_51
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_68
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_7f
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_96
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_ad
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_c4
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_db
    return-void
.end method

.method private startGestureAnimation()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1e
    return v1

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method private transferAnimationStateForNormalMode(II)V
    .registers 10

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setDragState(Z)V

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    const-wide/16 v2, 0x12c

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_b2

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-le p2, p1, :cond_1b

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-gt v0, p2, :cond_40

    :cond_1b
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez v0, :cond_40

    iput-boolean v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-nez p1, :cond_14e

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_14e

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_14e

    :cond_40
    if-le p2, p1, :cond_46

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-gt p1, p2, :cond_76

    :cond_46
    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-eqz p1, :cond_76

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-lt p1, v5, :cond_76

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v6, p1, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-gt p2, v0, :cond_67

    const/16 p2, 0x11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_6f

    :cond_67
    const/16 p2, 0x13

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_6f
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_14e

    :cond_76
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-ge p1, p2, :cond_14e

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-ge p2, p1, :cond_14e

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-eqz p1, :cond_14e

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_91

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_91
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-lt p1, v5, :cond_14e

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14e

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v6, p1, Landroid/os/Message;->what:I

    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_14e

    :cond_b2
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-le p1, p2, :cond_ba

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-gt v0, p1, :cond_df

    :cond_ba
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez v0, :cond_df

    iput-boolean v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-nez p1, :cond_14e

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_14e

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_14e

    :cond_df
    if-le p1, p2, :cond_e5

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-gt p2, p1, :cond_114

    :cond_e5
    iget-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-eqz p2, :cond_114

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p2

    if-lt p2, v5, :cond_114

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    iput v6, p2, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-ge p1, v0, :cond_106

    const/16 p1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_10e

    :cond_106
    const/16 p1, 0xf

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_10e
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14e

    :cond_114
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-ge p2, p1, :cond_14e

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-ge p1, p2, :cond_14e

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-eqz p1, :cond_14e

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_12f

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_12f
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-lt p1, v5, :cond_14e

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14e

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v6, p1, Landroid/os/Message;->what:I

    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14e
    :goto_14e
    return-void
.end method

.method private transferAnimationStateForRemindMode(II)V
    .registers 9

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_9c

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindTopDistance:I

    if-gt p1, p2, :cond_28

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindBootomDistance:I

    if-gt p2, v0, :cond_28

    iput-boolean v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v5, p1, Landroid/os/Message;->what:I

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_125

    :cond_28
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-gt v0, p2, :cond_2e

    if-lt p2, p1, :cond_36

    :cond_2e
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindBootomDistance:I

    if-ge p1, p2, :cond_5c

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-gt p2, p1, :cond_5c

    :cond_36
    iput-boolean v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v5, p1, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindTopDistance:I

    if-ge p2, v0, :cond_4d

    const/16 p2, 0x9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_55

    :cond_4d
    const/16 p2, 0xb

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_55
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_125

    :cond_5c
    if-ge p2, v0, :cond_7b

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez p1, :cond_7b

    iput-boolean v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v5, p1, Landroid/os/Message;->what:I

    const/16 p2, 0x11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_125

    :cond_7b
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-ge p1, p2, :cond_125

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez p1, :cond_125

    iput-boolean v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v5, p1, Landroid/os/Message;->what:I

    const/16 p2, 0x13

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_125

    :cond_9c
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindLeftDistance:I

    if-gt p2, p1, :cond_b7

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindRightDistance:I

    if-gt p1, v0, :cond_b7

    iput-boolean v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v5, p1, Landroid/os/Message;->what:I

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_125

    :cond_b7
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-gt v0, p1, :cond_bd

    if-lt p1, p2, :cond_c5

    :cond_bd
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindRightDistance:I

    if-ge p2, p1, :cond_e8

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-gt p1, p2, :cond_e8

    :cond_c5
    iput-boolean v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    iput v5, p2, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindLeftDistance:I

    if-ge p1, v0, :cond_db

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_e2

    :cond_db
    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_e2
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_125

    :cond_e8
    if-ge p1, v0, :cond_106

    iget-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez p2, :cond_106

    iput-boolean v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v5, p1, Landroid/os/Message;->what:I

    const/16 p2, 0xd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_125

    :cond_106
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-ge p2, p1, :cond_125

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez p1, :cond_125

    iput-boolean v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v5, p1, Landroid/os/Message;->what:I

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_125
    :goto_125
    return-void
.end method


# virtual methods
.method public getZoomAnimationStateRecorder()Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    return-object p0
.end method

.method public handleEvent(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setMovePosition(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_30

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->isInRemindMode()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->prepareGestureAnimation()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->startGestureAnimation()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-direct {p0, v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->transferAnimationStateForRemindMode(II)V

    goto :goto_39

    :cond_2c
    invoke-direct {p0, v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->transferAnimationStateForNormalMode(II)V

    goto :goto_39

    :cond_30
    const/4 v2, 0x1

    if-eq p1, v2, :cond_36

    const/4 v2, 0x3

    if-ne p1, v2, :cond_39

    :cond_36
    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->handleUpEvent(II)V

    :cond_39
    :goto_39
    return-void
.end method

.method public handleUpEvent(II)V
    .registers 6

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handle ACTION_UP, now state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OplusDragZoomTabletAnimationManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iput-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAlreadyAnalysisSplitEnable:Z

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;->removeChangeMessage()V

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_a3

    if-eqz p1, :cond_a3

    if-eq p1, v0, :cond_a3

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_57

    const/16 v1, 0xe

    if-eq p1, v1, :cond_57

    const/16 v1, 0xf

    if-eq p1, v1, :cond_57

    const/16 v1, 0x10

    if-eq p1, v1, :cond_57

    const/16 v1, 0x11

    if-eq p1, v1, :cond_57

    const/16 v1, 0x12

    if-eq p1, v1, :cond_57

    const/16 v1, 0x13

    if-eq p1, v1, :cond_57

    const/16 v1, 0x14

    if-ne p1, v1, :cond_5b

    :cond_57
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iput-boolean v0, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mLastMoveToSplit:Z

    :cond_5b
    const/4 v1, 0x6

    if-eq p1, v1, :cond_7b

    const/4 v1, 0x5

    if-eq p1, v1, :cond_7b

    const/16 v1, 0x8

    if-eq p1, v1, :cond_7b

    const/4 v1, 0x7

    if-eq p1, v1, :cond_7b

    const/16 v1, 0xa

    if-eq p1, v1, :cond_7b

    const/16 v1, 0x9

    if-eq p1, v1, :cond_7b

    const/16 v1, 0xc

    if-eq p1, v1, :cond_7b

    const/16 v1, 0xb

    if-eq p1, v1, :cond_7b

    const/4 v1, 0x4

    if-ne p1, v1, :cond_9b

    :cond_7b
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragZoomSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x7534

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iget-boolean v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v2, :cond_90

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    goto :goto_92

    :cond_90
    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    :goto_92
    const/16 v2, 0x7533

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_9b
    const/4 p1, 0x2

    iput p1, p2, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a3
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setDragState(Z)V

    return-void
.end method

.method public initDisplayInfo(II)V
    .registers 9

    invoke-super {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initDisplayInfo(II)V

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    const p2, 0x3f06e979  # 0.527f

    const v0, 0x3ea1cac1  # 0.316f

    if-eqz p1, :cond_20

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float v2, v1

    mul-float/2addr v2, p2

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iget p2, p2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomScale:F

    div-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitHeight:I

    goto :goto_32

    :cond_20
    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    int-to-float v2, v1

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomScale:F

    div-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float/2addr v1, v0

    float-to-int p2, v1

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitHeight:I

    :goto_32
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    int-to-float v0, p2

    const v1, 0x3e072b02  # 0.132f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindLeftDistance:I

    int-to-float v0, p2

    const v2, 0x3cd4fdf4  # 0.026f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    int-to-float v0, p2

    const v3, 0x3f5e3540  # 0.86800003f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindRightDistance:I

    int-to-float v0, p2

    const v4, 0x3f795810  # 0.974f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float v5, v0

    mul-float/2addr v5, v1

    float-to-int v1, v5

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindTopDistance:I

    int-to-float v1, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    int-to-float v1, v0

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindBootomDistance:I

    int-to-float v1, v0

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    const v1, 0x3cd844d0  # 0.0264f

    if-eqz p1, :cond_71

    int-to-float p1, v0

    goto :goto_72

    :cond_71
    int-to-float p1, p2

    :goto_72
    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setCurrentAnimationState(I)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p0, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setDragState(Z)V

    return-void
.end method

.method public isInChangeState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
