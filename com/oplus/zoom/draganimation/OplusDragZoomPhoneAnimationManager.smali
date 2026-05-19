.class public Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;
.super Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;
    }
.end annotation


# static fields
.field private static final CHANGE_REGION_RATIO_PHONE:F = 0.065f

.field private static final TAG:Ljava/lang/String; = "OplusDragZoomPhoneAnimationManager"


# instance fields
.field private final HORIZONTAL_SHIFT_RATIO:F

.field private final SPLIT_LEASH_CORNER:F

.field private final TIPS_HORIZONTAL_XRatio:F

.field private final TIPS_HORIZONTAL_YRatio:F

.field private final TIPS_RATIO:F

.field private final TIPS_SPLITMODE_SCALE:F

.field private final TIPS_VERTICAL_BOTTOM_YRATIO:F

.field private final TIPS_VERTICAL_YRATIO:F

.field private final VERTICAL_SHIFT_BOTTOM_RATIO:F

.field private final VERTICAL_SHIFT_RATIO:F

.field private mHorizontalShift:I

.field private mVerticalShift:I

.field private mVerticalShiftBootom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;-><init>(Landroid/content/Context;Lcom/oplus/zoom/zoomstate/ZoomStateManager;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    const p1, 0x3d99999a  # 0.075f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->VERTICAL_SHIFT_RATIO:F

    const p1, 0x3dcccccd  # 0.1f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->VERTICAL_SHIFT_BOTTOM_RATIO:F

    const p1, 0x3db851ec  # 0.09f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->HORIZONTAL_SHIFT_RATIO:F

    const p1, 0x3d2c0831  # 0.042f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->TIPS_RATIO:F

    const p1, 0x3c916873  # 0.01775f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->TIPS_VERTICAL_YRATIO:F

    const p1, 0x3d808312  # 0.06275f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->TIPS_VERTICAL_BOTTOM_YRATIO:F

    const p1, 0x3d0b4396  # 0.034f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->TIPS_HORIZONTAL_XRatio:F

    const p1, 0x3dae147b  # 0.085f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->TIPS_HORIZONTAL_YRatio:F

    const/high16 p1, 0x3fc00000  # 1.5f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->TIPS_SPLITMODE_SCALE:F

    const/high16 p1, 0x42300000  # 44.0f

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->SPLIT_LEASH_CORNER:F

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    new-instance p1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$1;

    invoke-static {}, Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;->getInstance()Lcom/oplus/zoom/draganimation/OplusZoomAnimationControlThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$1;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->mHorizontalShift:I

    return p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->mVerticalShift:I

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;)I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->mVerticalShiftBootom:I

    return p0
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

    const/16 v1, 0x9

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

    const/16 v1, 0xb

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

.method private transferAnimationState(II)V
    .registers 10

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setDragState(Z)V

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    const/4 v2, 0x2

    const-wide/16 v3, 0x12c

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v0, :cond_79

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    if-le p1, p2, :cond_1b

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-gt v0, p1, :cond_40

    :cond_1b
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez v0, :cond_40

    iput-boolean v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-nez p1, :cond_dd

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_dd

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_dd

    :cond_40
    if-ge p2, p1, :cond_dd

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    if-ge p1, p2, :cond_dd

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-eqz p1, :cond_dd

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-lt p1, v2, :cond_dd

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_61
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6, v5}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dd

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v6, p1, Landroid/os/Message;->what:I

    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_dd

    :cond_79
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    if-le p2, p1, :cond_81

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-gt v0, p2, :cond_a5

    :cond_81
    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-nez v0, :cond_a5

    iput-boolean v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-nez p1, :cond_dd

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_dd

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_dd

    :cond_a5
    if-ge p1, p2, :cond_dd

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    if-ge p2, p1, :cond_dd

    iget-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    if-eqz p1, :cond_dd

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getCurrentAnimationState()I

    move-result p1

    if-lt p1, v2, :cond_dd

    iput-boolean v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_c6

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c6
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6, v5}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dd

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    iput v6, p1, Landroid/os/Message;->what:I

    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_dd
    :goto_dd
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

    if-ne p1, v2, :cond_1a

    invoke-direct {p0, v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->transferAnimationState(II)V

    goto :goto_23

    :cond_1a
    const/4 v2, 0x1

    if-eq p1, v2, :cond_20

    const/4 v2, 0x3

    if-ne p1, v2, :cond_23

    :cond_20
    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->handleUpEvent(II)V

    :cond_23
    :goto_23
    return-void
.end method

.method public handleUpEvent(II)V
    .registers 5

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

    const-string v0, "OplusDragZoomPhoneAnimationManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAllReadyInHotArea:Z

    iput-boolean p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAlreadyAnalysisSplitEnable:Z

    invoke-direct {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->removeChangeMessage()V

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->getDragState()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_60

    if-eqz p1, :cond_60

    if-eq p1, v0, :cond_60

    iget-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_54

    const/4 v1, 0x6

    if-eq p1, v1, :cond_54

    const/4 v1, 0x7

    if-eq p1, v1, :cond_54

    const/16 v1, 0x8

    if-eq p1, v1, :cond_54

    const/16 v1, 0x9

    if-eq p1, v1, :cond_54

    const/16 v1, 0xa

    if-eq p1, v1, :cond_54

    const/16 v1, 0xb

    if-eq p1, v1, :cond_54

    const/16 v1, 0xc

    if-ne p1, v1, :cond_58

    :cond_54
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    iput-boolean v0, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mLastMoveToSplit:Z

    :cond_58
    const/4 p1, 0x2

    iput p1, p2, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_60
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-virtual {p0, v0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setDragState(Z)V

    return-void
.end method

.method public initDisplayInfo(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->initDisplayInfo(II)V

    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenHeight:I

    int-to-float p2, p1

    const v0, 0x3d851eb8  # 0.065f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mTopDistance:I

    sub-int p2, p1, p2

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mBottomDistance:I

    iget p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenWidth:I

    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mLeftDistance:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mRightDistance:I

    int-to-float v0, p1

    const v1, 0x3d99999a  # 0.075f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->mVerticalShift:I

    int-to-float p1, p1

    const v0, 0x3dcccccd  # 0.1f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->mVerticalShiftBootom:I

    int-to-float p2, p2

    const v0, 0x3db851ec  # 0.09f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;->mHorizontalShift:I

    iget-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mScreenVerticalState:Z

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    move p1, p2

    :goto_3a
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
