.class public Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;
.super Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;
    }
.end annotation


# static fields
.field private static final CHANGE_REGION_RATIO_PHONE:F = 0.065f

.field private static final FOLDER_HORIZONTAL_SHIFT_RATIO:F = 0.041f

.field private static final FOLDER_STABLE_HEIGHT_PROPORTION:F = 0.334f

.field private static final FOLDER_STABLE_WIDTH_PROPORTION:F = 0.156f

.field private static final HORIZONTAL_RATIO_FOLD:F = 0.0467f

.field private static final HORIZONTAL_REMIND_RATIO_FOLD:F = 0.25f

.field private static final SPLIT_DIFF:I = 0x14

.field private static final TAG:Ljava/lang/String; = "OplusDragZoomFoldAnimationManager"

.field private static final TIPS_EDGE_DISTANCE_RATIO:F = 0.0011f

.field private static final TIPS_HORIZONTAL_RATIO:F = 0.0376f

.field private static final TIPS_VERTICAL_RATIO:F = 0.0466f


# instance fields
.field private mLeftChildScale:F

.field private mRightChildScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$1;

    invoke-static {}, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;->getInstance()Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$1;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;)F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;->mLeftChildScale:F

    return p0
.end method

.method public static synthetic access$002(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;->mLeftChildScale:F

    return p1
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;)F
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;->mRightChildScale:F

    return p0
.end method

.method public static synthetic access$102(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;F)F
    .registers 2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;->mRightChildScale:F

    return p1
.end method

.method private prepareGestureAnimation()Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result v0

    const-string v1, "OplusDragZoomFoldAnimationManager"

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

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_7f
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
    .registers 12

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setDragState(Z)V

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result v0

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v4, 0x12c

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_b4

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-le p2, p1, :cond_29

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-gt v0, p2, :cond_4e

    :cond_29
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez v0, :cond_4e

    iput-boolean v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-nez p1, :cond_143

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_143

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_143

    :cond_4e
    if-le p2, p1, :cond_54

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-gt p1, p2, :cond_78

    :cond_54
    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-eqz p1, :cond_78

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-lt p1, v7, :cond_78

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v8, p1, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-gt p2, v0, :cond_6f

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_71

    :cond_6f
    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_71
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_143

    :cond_78
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-ge p1, p2, :cond_143

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-ge p2, p1, :cond_143

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-eqz p1, :cond_143

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_93

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_93
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-lt p1, v7, :cond_143

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v8, v6}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_143

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v8, p1, Landroid/os/Message;->what:I

    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_143

    :cond_b4
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-le p1, p2, :cond_bc

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-gt v0, p1, :cond_e0

    :cond_bc
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez v0, :cond_e0

    iput-boolean v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-nez p1, :cond_143

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_143

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_143

    :cond_e0
    if-le p1, p2, :cond_e6

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-gt p2, p1, :cond_109

    :cond_e6
    iget-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-eqz p2, :cond_109

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p2

    if-lt p2, v7, :cond_109

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    iput v8, p2, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-ge p1, v0, :cond_101

    iput-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_103

    :cond_101
    iput-object v3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_103
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_143

    :cond_109
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-ge p2, p1, :cond_143

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-ge p1, p2, :cond_143

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-eqz p1, :cond_143

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_124

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_124
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-lt p1, v7, :cond_143

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v8, v6}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_143

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v8, p1, Landroid/os/Message;->what:I

    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_143
    :goto_143
    return-void
.end method

.method private transferAnimationStateForRemindMode(II)V
    .registers 8

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindLeftDistance:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p2, p1, :cond_22

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindRightDistance:I

    if-gt p1, v2, :cond_22

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_92

    :cond_22
    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-gt v2, p1, :cond_28

    if-lt p1, p2, :cond_30

    :cond_28
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindRightDistance:I

    if-ge p2, p1, :cond_53

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-gt p1, p2, :cond_53

    :cond_30
    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    iput v1, p2, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindLeftDistance:I

    if-ge p1, v0, :cond_46

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_4d

    :cond_46
    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_4d
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_92

    :cond_53
    const-wide/16 v3, 0x12c

    if-ge p1, v2, :cond_73

    iget-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez p2, :cond_73

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    const/16 p2, 0xd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_92

    :cond_73
    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-ge p2, p1, :cond_92

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez p1, :cond_92

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_92
    :goto_92
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

    if-ne p1, v2, :cond_36

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->isInRemindMode()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result p1

    if-nez p1, :cond_32

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;->prepareGestureAnimation()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;->startGestureAnimation()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-direct {p0, v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;->transferAnimationStateForRemindMode(II)V

    goto :goto_3f

    :cond_32
    invoke-direct {p0, v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;->transferAnimationStateForNormalMode(II)V

    goto :goto_3f

    :cond_36
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3c

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3f

    :cond_3c
    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;->handleUpEvent(II)V

    :cond_3f
    :goto_3f
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

    const-string v0, "OplusDragZoomFoldAnimationManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iput-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAlreadyAnalysisSplitEnable:Z

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;->removeChangeMessage()V

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_86

    if-eqz p1, :cond_86

    if-eq p1, v0, :cond_86

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_47

    const/16 v1, 0xe

    if-eq p1, v1, :cond_47

    const/16 v1, 0xf

    if-eq p1, v1, :cond_47

    const/16 v1, 0x10

    if-ne p1, v1, :cond_4b

    :cond_47
    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iput-boolean v0, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mLastMoveToSplit:Z

    :cond_4b
    const/4 v1, 0x6

    if-eq p1, v1, :cond_5e

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5e

    const/16 v1, 0x8

    if-eq p1, v1, :cond_5e

    const/4 v1, 0x7

    if-eq p1, v1, :cond_5e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5e

    const/4 v1, 0x4

    if-ne p1, v1, :cond_7e

    :cond_5e
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragZoomSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x7534

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iget-boolean v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v2, :cond_73

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    goto :goto_75

    :cond_73
    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    :goto_75
    const/16 v2, 0x7533

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_7e
    const/4 p1, 0x2

    iput p1, p2, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_86
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setDragState(Z)V

    return-void
.end method

.method public initDisplayInfo(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initDisplayInfo(II)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    int-to-float p2, p1

    const v0, 0x3d3f4880  # 0.0467f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    int-to-float p1, p1

    const p2, 0x3f740b78  # 0.9533f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    invoke-static {}, Lcom/android/wm/shell/splitscreen/DividerOrientation;->isForceHorizontalDivisionMode()Z

    move-result p1

    if-eqz p1, :cond_28

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float p2, p1

    const v0, 0x3d851eb8  # 0.065f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    :cond_28
    const/high16 p1, 0x3e800000  # 0.25f

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindLeftDistance:I

    const/high16 p1, 0x3f400000  # 0.75f

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRemindRightDistance:I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setCurrentAnimationState(I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setDragState(Z)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    int-to-float p2, p1

    const v0, 0x3d27ef9e  # 0.041f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTotalShift:I

    const p2, 0x3e1fbe77  # 0.156f

    int-to-float p1, p1

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iget p2, p2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomScale:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitWidth:I

    const p1, 0x3eab020c  # 0.334f

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, p2

    float-to-int p1, v0

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mStableSplitHeight:I

    return-void
.end method

.method public isInChangeState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
