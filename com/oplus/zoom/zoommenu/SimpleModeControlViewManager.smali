.class public Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$SimpleModeButtonHandler;
    }
.end annotation


# static fields
.field private static final HIDE_BUTTON_DELAY:I = 0x5dc

.field private static final HIDE_BUTTON_MSG:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SimpleModeControlViewManager"


# instance fields
.field private mDelayTime:I

.field private final mHandler:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$SimpleModeButtonHandler;

.field private mHideAnimSet:Landroid/animation/AnimatorSet;

.field private mIsShow:Z

.field private mShowAnimSet:Landroid/animation/AnimatorSet;

.field private mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

.field private mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mShowAnimSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHideAnimSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mDelayTime:I

    new-instance v0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$SimpleModeButtonHandler;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$SimpleModeButtonHandler;-><init>(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHandler:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$SimpleModeButtonHandler;

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->lambda$showSimpleModeControlView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)Lcom/oplus/zoom/zoommenu/SimpleModeControlView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;Lcom/oplus/zoom/zoommenu/SimpleModeControlView;)Lcom/oplus/zoom/zoommenu/SimpleModeControlView;
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    return-object p1
.end method

.method public static synthetic b(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->lambda$showSimpleModeControlView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->lambda$removeSimpleModeControlView$3()V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->lambda$showSimpleModeControlView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private hideSimpleButtonWithAnim(Z)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHandler:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$SimpleModeButtonHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    const-string v1, "SimpleModeControlViewManager"

    if-nez v0, :cond_18

    const-string p0, "mView == null"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string p1, "hide anim running"

    invoke-static {v1, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void

    :cond_2b
    if-nez p1, :cond_44

    const-string p1, "hideSimpleButton no anim"

    invoke-static {v1, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mWm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    return-void

    :cond_44
    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_a6

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_ae

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v1, [F

    fill-array-data v4, :array_b6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHideAnimSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;

    invoke-direct {v4, p0}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$1;-><init>(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHideAnimSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    aput-object v0, v4, p1

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHideAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHideAnimSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f  # 0.67f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHideAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_a6
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_ae
    .array-data 4
        0x3f800000  # 1.0f
        0x3f4ccccd  # 0.8f
    .end array-data

    :array_b6
    .array-data 4
        0x3f800000  # 1.0f
        0x3f4ccccd  # 0.8f
    .end array-data
.end method

.method private synthetic lambda$removeSimpleModeControlView$3()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->exitZoom()V

    return-void
.end method

.method private synthetic lambda$showSimpleModeControlView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->removeSimpleModeControlView(ZZ)V

    return p1
.end method

.method private synthetic lambda$showSimpleModeControlView$1(Landroid/view/View;)V
    .registers 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->removeSimpleModeControlView(ZZ)V

    return-void
.end method

.method private synthetic lambda$showSimpleModeControlView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->removeSimpleModeControlView(ZZ)V

    return p2
.end method

.method private showSimpleButtonWithAnim()V
    .registers 8

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    const-string v1, "SimpleModeControlViewManager"

    if-nez v0, :cond_c

    const-string p0, "mView == null"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "show anim running"

    invoke-static {v1, v0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void

    :cond_1f
    const/16 v0, 0x5dc

    const-string v1, "persist.sys.zoom_tip_delaytime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mDelayTime:I

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mHandler:Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager$SimpleModeButtonHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mDelayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_8c

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_94

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_9c

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mShowAnimSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mShowAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mShowAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd  # 0.1f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mShowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_8c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_94
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x3f800000  # 1.0f
    .end array-data

    :array_9c
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public removeSimpleModeControlView(ZZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mIsShow:Z

    if-eqz v0, :cond_32

    const-string v0, "SimpleModeControlViewManager"

    const-string v1, "removeSimpleModeControlView"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p2

    new-instance v0, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V

    invoke-interface {p2, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDCSManager;->getInstance()Lcom/oplus/zoom/common/ZoomDCSManager;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mStateManager:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomTaskInfo()Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    move-result-object v0

    iget v0, v0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;->taskId:I

    const-string v1, "simple_button"

    invoke-virtual {p2, v0, v1}, Lcom/oplus/zoom/common/ZoomDCSManager;->onZoomCloseWithType(ILjava/lang/String;)V

    :cond_2c
    invoke-direct {p0, p1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->hideSimpleButtonWithAnim(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mIsShow:Z

    :cond_32
    return-void
.end method

.method public showSimpleModeControlView(Lcom/oplus/zoom/common/ZoomPositionInfo;Landroid/content/Context;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    const-string v1, "SimpleModeControlViewManager"

    if-eqz v0, :cond_c

    const-string p0, "simpleModeControlView already exist"

    invoke-static {v1, p0}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mWm:Landroid/view/WindowManager;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$layout;->simple_mode_button:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->initWindowParams(Lcom/oplus/zoom/common/ZoomPositionInfo;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    new-instance p2, Lcom/oplus/zoom/zoommenu/a;

    invoke-direct {p2, p0}, Lcom/oplus/zoom/zoommenu/a;-><init>(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->getButtonContent()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/launcher/guide/g;

    invoke-direct {p2, p0}, Lcom/android/launcher/guide/g;-><init>(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->getButton()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/widget/e;

    invoke-direct {p2, p0}, Lcom/android/launcher3/widget/e;-><init>(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mWm:Landroid/view/WindowManager;

    if-eqz p1, :cond_76

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_76

    const-string p1, "showSimpleModeControlView"

    invoke-static {v1, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mWm:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mView:Lcom/oplus/zoom/zoommenu/SimpleModeControlView;

    invoke-virtual {p2}, Lcom/oplus/zoom/zoommenu/SimpleModeControlView;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->showSimpleButtonWithAnim()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->mIsShow:Z

    :cond_76
    return-void
.end method
